local _, ADDON = ...

------------------------------------------------------------

local function GetStatString(kills, drops)
  local k = " Kills / "
  local d = " Drops"

  -- deal with singular
  if kills == 1 then
    k = " Kill / "
  end
  if drops == 1 then
    d = " Drop"
  end

  return kills .. k .. drops .. d
end

------------------------------------------------------------

local function GetRaidStats(group, file)

  -- check store
  local none = GetStatString(0, 0)
  if type(LuaDKP_Export) ~= "table" then
    return none
  end
  if type(LuaDKP_Export[group]) ~= "table" then
    return none
  end
  if type(LuaDKP_Export[group][file]) ~= "table" then
    return none
  end

  local raid = LuaDKP_Export[group][file]
  return GetStatString(#raid.kills, #raid.drops)
end

------------------------------------------------------------

local function GetStoredRaids(group)

  -- check store
  if type(LuaDKP_Export) ~= "table" then
    return {}
  end
  if type(LuaDKP_Export[group]) ~= "table" then
    return {}
  end

  return LuaDKP_Export[group]
end

------------------------------------------------------------

local function GetStoredStats(group)

  -- check store
  if type(LuaDKP_Export) ~= "table" then
    return {}
  end
  if type(LuaDKP_Export[group]) ~= "table" then
    return {}
  end

  -- compile list
  local list = {}
  for file,raid in pairs(LuaDKP_Export[group]) do
    table.insert(list, {file, GetStatString(#raid.kills, #raid.drops)})
  end
  table.sort(list, function(a, b) return a[1] < b[1] end)

  return list
end

------------------------------------------------------------

local function CreateRaid(group, file)

  -- create raid
  if type(LuaDKP_Export) ~= "table" then
    LuaDKP_Export = {}
  end
  if type(LuaDKP_Export[group]) ~= "table" then
    LuaDKP_Export[group] = {}
  end
  if type(LuaDKP_Export[group][file]) ~= "table" then
    LuaDKP_Export[group][file] = {}
  end

  -- create fields
  local raid = LuaDKP_Export[group][file]
  if type(raid.players) ~= "table" then
    raid.players = {}
  end
  if type(raid.kills) ~= "table" then
    raid.kills = {}
  end
  if type(raid.drops) ~= "table" then
    raid.drops = {}
  end

  return raid
end

------------------------------------------------------------

local function ClearRaid(group, file)

  -- check raid
  if type(LuaDKP_Export) == "table" then
    if type(LuaDKP_Export[group]) == "table" then
      if type(LuaDKP_Export[group][file]) == "table" then

        -- clear raid
        LuaDKP_Export[group][file] = nil
      end
    end
  end
end

------------------------------------------------------------

local function ClearAll()
  LuaDKP_Export = {}
end

------------------------------------------------------------

local function StorePlayer(group, file, name)
  local raid = CreateRaid(group, file)

  -- find name in players list
  for k,v in pairs(raid.players) do
    if v == name then
      return k
    end
  end

  -- find free index
  local i = 1
  while true do
    if raid.players[i] == nil then
      raid.players[i] = name
      return i
    end
    i = i + 1
  end
end

------------------------------------------------------------

local function StoreKill(group, file, id, players)
  local raid = CreateRaid(group, file)
  table.insert(raid.kills, {boss = id, timestamp = date("%Y-%m-%d %H:%M"), players = players})
end

------------------------------------------------------------

local function StoreDrop(group, file, name, item)
  local raid = CreateRaid(group, file)
  local player = StorePlayer(group, file, name)
  local drop = {player = player, timestamp = date("%Y-%m-%d %H:%M"), item = item}
  table.insert(raid.drops, drop)
end

------------------------------------------------------------

-- initialize WTF
LuaDKP_Export = {}

-- exports
ADDON.GetRaidStats = GetRaidStats
ADDON.GetStoredRaids = GetStoredRaids
ADDON.GetStoredStats = GetStoredStats
ADDON.ClearRaid = ClearRaid
ADDON.ClearAll = ClearAll
ADDON.StorePlayer = StorePlayer
ADDON.StoreKill = StoreKill
ADDON.StoreDrop = StoreDrop
