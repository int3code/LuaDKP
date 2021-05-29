local _, ADDON = ...

------------------------------------------------------------

local function GetEP(group, account, raid, id)
  local points = 0
  local kills = 0

  -- get effort points
  for _,kill in ipairs(raid.kills) do
    local multi = kill.multi or 1
    for _,player in ipairs(kill.players) do
      if player == id then
        local boss = ADDON.Groups[group].Bosses[kill.boss]
        if boss then
          for _,a in ipairs(boss.accounts) do
            if a == account then
              points = points + boss.points * multi
              kills = kills + 1
            end
          end
        else
          print("Error: Unknown boss " .. kill.boss .. " (" .. kill.timestamp .. ")")
        end
      end
    end
  end

  return points, kills
end

------------------------------------------------------------

local function GetGP(group, account, raid, id)
  local points = 0
  local items = 0

  -- get gear points
  for _,line in ipairs(raid.drops) do
    local multi = line.multi or 1
    if line.player == id then
      local item = ADDON.Groups[group].Items[line.item]
      if item then
        if item.account == account then
          points = points + item.cost * multi
          items = items + 1
        end
      else
        print("Error: Unknown item " .. line.item .. " (" .. line.timestamp .. ")")
      end
    end
  end

  return points, items
end

------------------------------------------------------------

local function GetCorrections(group, account, name)

  local t = ADDON.Groups[group].Corrections
  local id = 0
  local ep = 0
  local gp = 0

  -- find player id
  for k,player in pairs(t.players) do
    if player == name then
      id = k
    end
  end

  -- get corrections
  if id > 0 then
    for i,line in ipairs(t.list) do
      if type(line.players) == "table" and line.account == account then
        if ADDON.Contains(line.players, id) then
          ep = ep + line.ep
          gp = gp + line.gp
        end
      end
    end
  end

  return ep, gp
end

------------------------------------------------------------

local function GetPoints(group, account, name)

  local raids = {}
  for k,v in pairs(ADDON.GetStoredRaids(group)) do
    table.insert(raids, v)
  end 
  for k,v in pairs(ADDON.Groups[group].Raids) do
    table.insert(raids, v)
  end

  local ep = 0
  local gp = ADDON.Groups[group].Accounts[account].basegp
  local kills = 0
  local items = 0

  for _,raid in ipairs(raids) do
    for id,player in pairs(raid.players) do
      if player == name then
        local a, b = GetEP(group, account, raid, id)
        local c, d = GetGP(group, account, raid, id)
        ep = ep + a
        gp = gp + c
        kills = kills + b
        items = items + d
      end
    end
  end

  -- apply corrections
  local e, f = GetCorrections(group, account, name)
  ep = ep + e
  gp = gp + f

  return math.floor(1000 * ep / gp) / 1000, ep, gp, kills, items
end

------------------------------------------------------------

-- exports
ADDON.GetPoints = GetPoints
