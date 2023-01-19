local _, ADDON = ...

------------------------------------------------------------

local function LoadFile(file)
  assert(loadfile(file))("LuaDKP", ADDON)
end

------------------------------------------------------------

local function LoadDir(dir)
  local f = assert(io.popen("dir /b " .. ADDON.WinPath(dir) .. " 2> nul"))

  for file in f:lines() do
    if file:sub(-4) == ".lua" then
      LoadFile(dir .. "/" .. file)
    end
  end

  f:close()
end

------------------------------------------------------------

local function GetGroups()
  local groups = {}

  local f = assert(io.popen("dir /b /ad Groups 2> nul"))
  for group in f:lines() do
    table.insert(groups, group)
  end
  f:close()

  return groups
end

------------------------------------------------------------

local function LoadGroups()
  ADDON.Groups = {}

  -- load groups
  for _,group in ipairs(GetGroups()) do
    local t = {}
    ADDON.InitGroup = t
    ADDON.Groups[group] = t
    LoadDir("Groups/" .. group .. "/Settings")
    LoadDir("Groups/" .. group .. "/Raids")

    -- initialize tables
    t.Accounts = t.Accounts or {}
    t.Bosses = t.Bosses or {}
    t.Corrections = t.Corrections or {}
    t.Corrections.players = t.Corrections.players or {}
    t.Corrections.list = t.Corrections.list or {}
    t.Inactive = t.Inactive or {}
    t.Items = t.Items or {}
    t.Raids = t.Raids or {}
    t.Roster = t.Roster or {}
    t.Settings = t.Settings or {}
    t.Settings.title = t.Settings.title or k .. " DKP"
    t.Settings.tag = t.Settings.tag or "DKP"
    t.Settings.lang = t.Settings.lang or "en"
    t.Settings.stdacc = t.Settings.stdacc or 1
    t.Settings.theme = "darkly"
    t.Settings.style = "font-weight: 100; font-size: 100%"
  end

  ADDON.InitGroup = nil
end

------------------------------------------------------------

local function FileExists(fn)
  local f = io.open(fn, "rb")
  if f then
    f:close()
    return true
  end
  return false
end

------------------------------------------------------------

local function WinPath(path)
  return '"' .. path:gsub("/", "\\") .. '"'
end

------------------------------------------------------------

local function GetHost(lang, expansion)
  if lang and lang ~= "en" then
    if expansion and expansion ~= "retail" then
      return "www.wowhead.com/" .. expansion .. "/" .. lang
    else
      return "www.wowhead.com/" .. lang
    end
  else
    if expansion and expansion ~= "retail" then
      return "www.wowhead.com/" .. expansion
    else
      return "www.wowhead.com"
    end
  end
end

------------------------------------------------------------

-- export
ADDON.LoadFile = LoadFile
ADDON.LoadDir = LoadDir
ADDON.GetGroups = GetGroups
ADDON.LoadGroups = LoadGroups
ADDON.FileExists = FileExists
ADDON.WinPath = WinPath
ADDON.GetHost = GetHost
