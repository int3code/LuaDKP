local _, ADDON = ...

------------------------------------------------------------

local function GetTag(group)
  return ADDON.Groups[group].Settings.tag or "DKP"
end

------------------------------------------------------------

local function GetBossName(group, id)
  local boss = ADDON.Groups[group].Bosses[id]

  -- ignore ids below 200!
  if id > 199 and boss then
    return boss["en"]
  end
end

------------------------------------------------------------

local function FixName(name)

  -- verify name if in raid or group
  local shortname, realm = UnitName(name)
  if shortname then
    return shortname
  end

  -- verify name if in roster
  name = string.lower(name)
  for _,t in pairs(ADDON.Groups) do
    for k,v in pairs(t.Roster) do

      -- using name
      if string.lower(k) == name then
        return k
      end

      -- using nickname
      if v.nickname then
        if string.lower(v.nickname) == name then
          return k
        end
      end
    end
  end

  -- at least return correct case!
  local a = string.sub(name, 1, 1):upper()
  local b = string.sub(name, 2):lower()
  return a .. b
end

------------------------------------------------------------

local function GetGroups()
  local groups = {}
  for group,_ in pairs(ADDON.Groups) do
    table.insert(groups, group)
  end
  table.sort(groups)
  return groups
end

------------------------------------------------------------

local function GetAccounts(group)
  local res = {}

  -- add accounts
  for id,account in pairs(ADDON.Groups[group].Accounts) do
    if id > 0 then
      table.insert(res, {id = id, name = account.name})
    end
  end

  table.sort(res, function(a, b) return a.id < b.id end)
  return res
end

------------------------------------------------------------

local function GetItemInfo(group, id)

  -- get item
  local item = ADDON.Groups[group].Items[id]
  if not item then
    return false
  end

  -- get account
  local account = ADDON.Groups[group].Accounts[item.account]
  if not account then
    return false
  end

  return true, item.cost, item.note, item.account, account.name
end

------------------------------------------------------------

-- exports
ADDON.GetTag = GetTag
ADDON.GetBossName = GetBossName
ADDON.FixName = FixName
ADDON.GetGroups = GetGroups
ADDON.GetAccounts = GetAccounts
ADDON.GetItemInfo = GetItemInfo
