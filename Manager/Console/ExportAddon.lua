local _, ADDON = ...

------------------------------------------------------------

local function WriteMain()

  -- main
  local str = ""
  str = str .. "local _, ADDON = ...\r\n"
  str = str .. "\r\n"
  str = str .. "ADDON.Version = " .. ADDON.Version .. "\r\n"
  str = str .. "\r\n"
  str = str .. "function LuaDKP_GetData()\r\n"
  str = str .. "  return ADDON\r\n"
  str = str .. "end\r\n"

  -- write file
  local name = ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/Main.lua"
  local file = assert(io.open(name, "w+b"))
  file:write(str)
  file:close()
end

------------------------------------------------------------

local function WriteInit(group)

  -- header
  local str = ""
  str = str .. "local _, ADDON = ...\r\n"
  str = str .. "\r\n"
  str = str .. "ADDON.InitGroup = {}\r\n"
  str = str .. "ADDON.Groups = ADDON.Groups or {}\r\n"
  str = str .. 'ADDON.Groups["' .. group .. '"] = ADDON.InitGroup\r\n'
  str = str .. "\r\n"
  str = str .. "ADDON.InitGroup.Files = {\r\n"

  -- raids
  for file in io.popen("dir /b " .. ADDON.WinPath("Groups/" .. group .. "/Raids/*.lua") .. " 2> nul"):lines() do
    str = str .. '  "' .. string.sub(file, 1, -5) .. '",\r\n'
  end
  str = str .. "}\r\n"

  -- write file
  local name = ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/" .. group .. "/Init.lua"
  local file = assert(io.open(name, "w+b"))
  file:write(str)
  file:close()
end

------------------------------------------------------------

local function WriteTOC()
  local str = ""

  -- header
  str = str .. "## Interface: " .. ADDON.Config.interface .. "\r\n"
  str = str .. "## Title: LuaDKP-Data\r\n"
  str = str .. "## SavedVariables: LuaDKP_Export\r\n"

  for _,group in ipairs(ADDON.GetGroups()) do

    -- init
    str = str .. "\r\n"
    str = str .. "# Init:\r\n"
    str = str .. group .. "/Init.lua\r\n"

    -- settings
    str = str .. "\r\n"
    str = str .. "# Settings:\r\n"
    local dir = group .. "/Settings/"
    for file in io.popen("dir /b " .. ADDON.WinPath("Groups/" .. dir .. "*.lua") .. " 2> nul"):lines() do
      str = str .. dir .. file .. "\r\n"
    end

    -- raids
    str = str .. "\r\n"
    str = str .. "# Raids:\r\n"
    local dir = group .. "/Raids/"
    for file in io.popen("dir /b " .. ADDON.WinPath("Groups/" .. dir .. "*.lua") .. " 2> nul"):lines() do
      str = str .. dir .. file .. "\r\n"
    end
  end

  -- main
  str = str .. "\r\n"
  str = str .. "# Main:\r\n"
  str = str .. "Main.lua\r\n"

  -- write file
  local name = ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/LuaDKP-Data.toc"
  local file = assert(io.open(name, "w+b"))
  file:write(str)
  file:close()
end

------------------------------------------------------------

local function ExportAddon()

  -- sanity check
  assert(ADDON.FileExists(ADDON.Config.basedir .. "Interface/AddOns/nul"))

  -- remove old addon
  if ADDON.FileExists(ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/nul") then
    os.execute("rmdir /S /Q " .. ADDON.WinPath(ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data"))
  end

  -- create new addon
  os.execute("mkdir " .. ADDON.WinPath(ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data"))

  -- copy groups
  for _,group in ipairs(ADDON.GetGroups()) do
    print()
    os.execute("mkdir " .. ADDON.WinPath(ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/" .. group))
    os.execute("xcopy /E " .. ADDON.WinPath("Groups/" .. group) .. " " .. ADDON.WinPath(ADDON.Config.basedir .. "Interface/AddOns/LuaDKP-Data/" .. group))
  end
  print()

  -- write init
  print("Writing init files")
  WriteMain()
  for _,group in ipairs(ADDON.GetGroups()) do
    WriteInit(group)
  end

  -- write TOC
  print("Writing TOC")
  WriteTOC()

  print()
  ADDON.Pause()
end

------------------------------------------------------------

-- set version
ADDON.Version = 1

-- export
ADDON.ExportAddon = ExportAddon
