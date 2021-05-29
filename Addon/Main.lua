local _, ADDON = ...

------------------------------------------------------------

local roster = {}
local bidder = {}
local score = {}
local currentid = 0
local getlinkid = 0

------------------------------------------------------------

local function Output(text)
  if IsInRaid() then
    SendChatMessage(text, "RAID")
  else
    print(text)
  end
end

------------------------------------------------------------

local function UpdateRoster()
  for i = 1, 40 do
    local name, _, _, _, _, _, _, online, isDead = GetRaidRosterInfo(i)

    -- ignore players who are offline
    if name ~= nil and online then
      if not ADDON.Contains(roster, name) then
        table.insert(roster, name)
      end
    end
  end

  -- add player if not in raid
  if #roster == 0 then
    local name, realm = UnitName("player")
    table.insert(roster, name)
  end

  table.sort(roster)
end

------------------------------------------------------------

local function GetPlayerListing(name)
  local last = 1
  local list = {}

  for _,group in ipairs(ADDON.GetGroups()) do
    for _,account in ipairs(ADDON.GetAccounts(group)) do
      local score, ep, gp, kills, items = ADDON.GetPoints(group, account.id, name)
      if ep > 0 then
        table.insert(list, "- " .. account.name .. ": " .. ep .. " / " .. gp .. " = " .. score)
      end
    end

    if #list >= last then
      table.insert(list, last, group .. ":")
      last = #list + 1
    end
  end

  return list
end

------------------------------------------------------------

local function EventHandler(self, event, ...)

  -- answer whispers
  if event == "CHAT_MSG_WHISPER" then
    local text, name = ...
    if text:lower() == "dkp?" then
      name = ADDON.GetShortName(name)
      local list = GetPlayerListing(name)
      for i,v in ipairs(list) do
        SendChatMessage(v, "WHISPER", nil, name)
      end
    end
  end

  -- track players on pull
  if event == "ENCOUNTER_START" then
    roster = {}
    UpdateRoster()
  end

  -- get link
  if event == "GET_ITEM_INFO_RECEIVED" then
    local id, success = ...
    if id == getlinkid and success then
      local name, link = GetItemInfo(id)
      if name then
        print(link)
      end
      getlinkid = 0
    end
  end

  if not ADDON.Group then
    return
  end

  local tag = ADDON.GetTag(ADDON.Group)

  -- track players after kill
  if event == "BOSS_KILL" then
    local id = ...
    local boss = ADDON.GetBossName(ADDON.Group, id)
    if boss then
      Output(tag .. ": Bosskill ID " .. id .. " - " .. boss)
      UpdateRoster()

      -- create player id list
      local players = {}
      for i,name in ipairs(roster) do
        table.insert(players, ADDON.StorePlayer(ADDON.Group, ADDON.File, name))
      end
      roster = {}

      -- store kill
      ADDON.StoreKill(ADDON.Group, ADDON.File, id, players)
    end
  end

  -- watch raid messages
  if event == "CHAT_MSG_RAID" or event == "CHAT_MSG_RAID_LEADER" or event == "CHAT_MSG_RAID_WARNING" then
    local text, name = ...
    text = ADDON.Trim(text)
    name = ADDON.GetShortName(name)

    -- add player to bidder list
    if text == "+" then
      bidder[name] = true
    end

    -- remove player from bidder list
    if text == "-" then
      bidder[name] = nil
    end
  end

  -- watch addon messages
  if event == "CHAT_MSG_ADDON" then
    local prefix, message, channel, sender = ...
    sender = ADDON.GetShortName(sender)
    if channel == "RAID" and not UnitIsUnit("player", sender) then

      -- LuaDKP:
      if prefix == "luadkp_v1" then
        local param = ADDON.Split(message, ":")

        -- store item
        if param[1] == "assign" then
          local name = param[2]
          local id = tonumber(param[3])
          ADDON.StoreDrop(ADDON.Group, ADDON.File, name, id)
          print(tag .. ": " .. sender .. " assigned item to " .. name)
        end

        -- kill boss
        if param[1] == "kill" then
          local id = tonumber(param[2])
          EventHandler(nil, "BOSS_KILL", id)
          print(tag .. ": " .. sender .. " performed kill " .. id)
        end
      end

    end
  end

end

------------------------------------------------------------

local function SlashHandler(line)

  -- print help
  if line == "" then
    print("/dkp track")
    print("/dkp query <name>")
    if ADDON.Group then
      print("/dkp start <itemlink>")
      print("/dkp toggle <name>")
      print("/dkp stop")
      print("/dkp assign <number>")
      print("/dkp cancel")
      print("/dkp kill <bossid>")
      print("/dkp clear [all]")
    else
      print("/dkp clear all")
      print("Enable tracking to get more commands...")
    end
    return
  end

  -- split line into parameters
  local param = ADDON.Split(line, " ")

  -- show tracking frame
  if param[1] == "track" then
    ADDON.Track()
  end

  -- query player score
  if param[1] == "query" and param[2] then
    local name = ADDON.FixName(param[2])
    print("=== " .. name .. " ===")
    local list = GetPlayerListing(name)
    for i,v in ipairs(list) do
      print(v)
    end
  end

  -- get itemlink
  if param[1] == "getlink" then
    getlinkid = tonumber(param[2])
    if GetItemInfo(getlinkid) then
      EventHandler(nil, "GET_ITEM_INFO_RECEIVED", getlinkid, true)
    end
  end

  -- clear all data
  if param[1] == "clear" and param[2] == "all" then
    StaticPopupDialogs["LUADKP_CLEARALL"] = {
      text = "Clear ALL data in ALL groups/files?",
      button1 = "Clear All",
      button2 = "Cancel",
      OnAccept = function() ADDON.ClearAll() print("All data cleared.") end,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3,
    }
    StaticPopup_Show("LUADKP_CLEARALL")
  end

  if not ADDON.Group then
    return
  end

  local tag = ADDON.GetTag(ADDON.Group)

  -- start bidding
  if param[1] == "start" then
    if currentid > 0 then
      print("Error: Bidding still in progress! Use stop/assign or cancel!")
    else
      local link = ADDON.Trim(line:sub(7))
      local id, name = ADDON.GetLinkInfo(link)
      if id then

        -- display item infos
        local b, cost, note, accid, accname = ADDON.GetItemInfo(ADDON.Group, id)
        if b then
          Output(tag .. ": " .. link)
          Output("--------------------")
          Output("Cost: " .. cost .. " " .. accname)
          if note and note ~= "" then
            if not string.find(note, ":", 1, true) then
              note = "Note: " .. note
            end
            Output(note)
          end
          bidder = {}
          score = {}
          currentid = id
        else
          print("Error: Unknown item!")
        end
      end
    end
  end

  -- toggle bidder
  if param[1] == "toggle" then
    if currentid > 0 then
      local name = ADDON.FixName(param[2])
      if bidder[name] then
        Output(tag .. ": " .. name .. " -")
        bidder[name] = nil
      else
        Output(tag .. ": " .. name .. " +")
        bidder[name] = true
      end
    else
      print("Error: Bidding inactive! Use start first!")
    end
  end

  -- stop bidding and display score
  if param[1] == "stop" then
    if currentid > 0 then

      -- build score
      score = {}
      local b, cost, note, accid, accname = ADDON.GetItemInfo(ADDON.Group, currentid)
      for name,_ in pairs(bidder) do
        table.insert(score, {name, ADDON.GetPoints(ADDON.Group, accid, name)})
      end

      -- sort score
      table.sort(score, function(a, b)
        if a[2] == b[2] then
          return a[1] < b[1]
        end
        return a[2] > b[2] end
      )

      -- display score
      Output("--------------------")
      if #score > 0 then
        for i,t in ipairs(score) do
          Output(i .. ". " .. t[1] .. " " .. t[2])
        end
      else
        Output("No bids!")
        currentid = 0
      end
    else
      print("Error: Use start first!")
    end
  end

  -- assign item to bidder
  if param[1] == "assign" and param[2] then
    local i = tonumber(param[2])
    if score[i] then
      local name = score[i][1]
      Output(tag .. ": Item assigned to " .. name)

      -- store item
      ADDON.StoreDrop(ADDON.Group, ADDON.File, name, currentid)
      C_ChatInfo.SendAddonMessage("luadkp_v1", "assign:" .. name .. ":" .. currentid, "RAID")
      bidder = {}
      score = {}
      currentid = 0
    else
      print("Error: Unknown player")
    end
  end

  -- cancel bidding/assignment
  if param[1] == "cancel" then
    Output(tag .. ": cancelled!")
    bidder = {}
    score = {}
    currentid = 0
  end

  -- kill boss
  if param[1] == "kill" and param[2] then
    local id = tonumber(param[2])
    EventHandler(nil, "BOSS_KILL", id)
    C_ChatInfo.SendAddonMessage("luadkp_v1", "kill:" .. id, "RAID")
  end

  -- clear data
  if param[1] == "clear" and param[2] ~= "all" then
    local group = ADDON.Group
    local file = ADDON.File
    StaticPopupDialogs["LUADKP_CLEAR"] = {
      text = "Clear data in currently tracked file?|n" .. file .. "|n" .. ADDON.GetRaidStats(group, file),
      button1 = "Clear Data",
      button2 = "Cancel",
      OnAccept = function() ADDON.ClearRaid(group, file) print("Data cleared.") end,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3,
    }
    StaticPopup_Show("LUADKP_CLEAR")
  end

end

------------------------------------------------------------

local function InitMain()

  -- register prefix
  C_ChatInfo.RegisterAddonMessagePrefix("luadkp_v1")

  -- register event handler
  local f = CreateFrame("Frame")
  f:SetScript("OnEvent", EventHandler)
  f:RegisterEvent("ENCOUNTER_START")
  f:RegisterEvent("BOSS_KILL")
  f:RegisterEvent("CHAT_MSG_WHISPER")
  f:RegisterEvent("CHAT_MSG_RAID")
  f:RegisterEvent("CHAT_MSG_RAID_LEADER")
  f:RegisterEvent("CHAT_MSG_RAID_WARNING")
  f:RegisterEvent("CHAT_MSG_ADDON")
  f:RegisterEvent("GET_ITEM_INFO_RECEIVED")

  -- register slash handler
  SLASH_LUADKP1 = "/luadkp"
  SLASH_LUADKP2 = "/dkp"
  SlashCmdList["LUADKP"] = SlashHandler
end

------------------------------------------------------------

-- export
ADDON.InitMain = InitMain
