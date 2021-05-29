local _, ADDON = ...

------------------------------------------------------------

local function MergeRaids(raids)
  local dir = {}
  local res = {}

  for _,raid in ipairs(raids) do

    -- get players from kills
    for _,kill in ipairs(raid.kills) do
      for _,player in ipairs(kill.players) do
        local name = raid.players[player]
        dir[name] = true
      end
    end

    -- get players from drops
    for _,drop in ipairs(raid.drops) do
      local name = raid.players[drop.player]
      dir[name] = true
    end
  end

  -- build player list
  res.players = {}
  for k,v in pairs(dir) do
    table.insert(res.players, k)
  end

  -- sort player list
  table.sort(res.players)

  -- add top element
  res.players[0] = "?"

  -- build player directory
  dir = {}
  for i,name in ipairs(res.players) do
    dir[name] = i
  end

  res.kills = {}
  res.drops = {}

  for _,raid in ipairs(raids) do

    -- import kills
    for i,kill in ipairs(raid.kills) do
      local t = {boss = kill.boss, timestamp = kill.timestamp}

      t.players = {}
      for j,player in ipairs(kill.players) do
        local name = raid.players[player]
        table.insert(t.players, dir[name])
      end

      table.sort(t.players)
      table.insert(res.kills, t)
    end

    -- import drops
    for i,drop in ipairs(raid.drops) do
      local name = raid.players[drop.player]
      table.insert(res.drops, {item = drop.item, timestamp = drop.timestamp, player = dir[name]})
    end
  end

  return res
end

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

local function GetFileName(group, file, output)
  local filename = "Groups/" .. group .. "/Raids/" .. file .. ".lua"
  local errmsg = ""

  -- try default filename
  if ADDON.FileExists("Groups/" .. group .. "/Raids/nul") then
    if not ADDON.FileExists(filename) then
      return filename
    else
      errmsg = "file already exists."
    end
  else
    errmsg = "folder does not exist."
  end

  -- find a better name
  local i = 1
  repeat
    filename = "Output/" .. string.gsub(group, " ", "_") .. "_" .. file .. "_" .. i .. ".lua"
    i = i + 1
  until not ADDON.FileExists(filename)

  table.insert(output, "WARNING: Trying to import " .. group .. " / " .. file .. ", but " .. errmsg)
  table.insert(output, 'Saving file to "' .. filename .. '". Please fix manually!')
  table.insert(output, "")
  
  return filename
end

------------------------------------------------------------

local function GetLang(group)
  local func = loadfile("Groups/" .. group .. "/Settings/Settings.lua")

  -- return language
  if func then
    local addon = {InitGroup = {}}
    func("LuaDKP", addon)
    return addon.InitGroup.Settings.lang
  end

  -- return default
  return "en"
end

------------------------------------------------------------

local function ImportWTF()
  local exports = {}
  local output = {}
  local list = {}
  local cnt = 0

  -- load all exports
  local dir = ADDON.Config.basedir .. "WTF/Account/"
  for account in io.popen("dir /b /ad " .. ADDON.WinPath(dir) .. " 2> nul"):lines() do
    local file = dir .. account .. "/SavedVariables/LuaDKP-Data.lua"

    -- load file
    LuaDKP_Export = nil
    local func = loadfile(file)
    if func then
      func()
    end

    -- add to exports
    if type(LuaDKP_Export) == "table" then
      exports[file] = LuaDKP_Export
    end
  end
  LuaDKP_Export = nil

  -- go through exports
  for fn,export in pairs(exports) do
    local renamed = false

    -- sort raids by group/file into single list
    for group,t1 in pairs(export) do
      if type(t1) == "table" then
        for file,t2 in pairs(t1) do
          if type(t2) == "table" then
            if type(t2.kills) == "table" and type(t2.drops) == "table" then
              if #t2.kills > 0 or #t2.drops > 0 then

                -- add raid to list
                list[group] = list[group] or {}
                list[group][file] = list[group][file] or {}
                table.insert(list[group][file], t2)

                -- rename export files
                if not renamed then
                  local suffix = os.date(".%Y%m%d-%H%M%S.bak")
                  renamed = true

                  -- lua file
                  if not os.rename(fn, fn .. suffix) then
                    table.insert(output, "WARNING: Could not rename " .. fn)
                    table.insert(output, "")
                  end

                  -- bak file (might not be there)
                  os.rename(fn .. ".bak", fn .. ".bak" .. suffix)
                end
              end
            end
          end
        end
      end
    end
  end

  -- go through list
  for group,t1 in pairs(list) do
    for file,t2 in pairs(t1) do

      -- merge, convert and write raids
      local filename = GetFileName(group, file, output)
      local raid = MergeRaids(t2)
      local lang = GetLang(group)
      local str = ADDON.GetRaidString(lang, raid)
      local f = assert(io.open(filename, "w+b"))
      f:write(str)
      f:close()

      -- print statistics
      print(group .. " / " .. file .. " / " .. GetStatString(#raid.kills, #raid.drops))
      cnt = cnt + 1
    end
  end

  -- print total
  if cnt == 1 then
    print("1 raid imported!")
  else
    print(cnt .. " raids imported!")
  end
  print()

  -- print warnings
  if #output > 0 then
    for _,line in ipairs(output) do
      print(line)
    end

    -- user must acknowledge!
    ADDON.Choice('Enter "y" to continue!', "y")
    return
  end

  ADDON.Pause()
end

------------------------------------------------------------

-- export
ADDON.ImportWTF = ImportWTF
