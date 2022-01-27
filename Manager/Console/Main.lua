ADDON = {}

------------------------------------------------------------

local function CheckLocation()
  if ADDON.FileExists("../../../Interface/AddOns/nul") then
    print("Error: Manager seems to be installed in WoW's Interface/AddOns folder!")
    print()
    print("Please install Manager outside of the Interface/AddOns folder,")
    print("otherwise it may accidentally get overwritten by an updater.")
    print("Good locations are your Desktop or Documents folders.")
    print()
    print("Read the LuaDKP documentation if you want to know more...")
    os.exit(1)
  end
end

------------------------------------------------------------

local function CheckConfig()

  -- add trailing slash
  local basedir = ADDON.Config.basedir
  if string.sub(basedir, -1) ~= "/" then
    basedir = basedir .. "/"
    ADDON.Config.basedir = basedir
  end

  -- check basedir folder
  if not ADDON.FileExists(basedir .. "WTF/Account/nul") or not ADDON.FileExists(basedir .. "Interface/AddOns/nul") then
    print("Error: WoW basedir not found or incorrect!")
    print("Please set the correct value in Config.lua.")
    os.exit(1)
  end

  -- check Output folder
  if not ADDON.FileExists("Output/nul") then
    print("Error: Output folder missing! Please create it in LuaDKP's root directory.")
    os.exit(1)
  end
end

------------------------------------------------------------

local function CheckWoW()

  -- detect WoW
  local cnt = 0
  for line in io.popen('tasklist /FI "WINDOWTITLE eq WORLD OF WARCRAFT" 2> nul'):lines() do
    cnt = cnt + 1
  end

  -- if uncertain, ask user!
  if cnt == 0 then
    print("World of Warcraft must not be running while you import/export.")
    print("Please make sure the game is closed before you proceed.")
    print()
    if ADDON.Choice("Continue?", "yn") ~= "y" then
      return false
    end
  end

  -- WoW seems to be running!
  if cnt > 2 then
    print("World of Warcraft must not be running while you import/export.")
    print("Please close the game client first and then try again.")
    print()
    ADDON.Pause()
    return false
  end

  return true
end

------------------------------------------------------------

local function ShowAdvanced()

  repeat
    ADDON.Clear()
    print("================")
    print("=== Advanced ===")
    print("================")
    print()
    print("1. Translate Items")
    print("2. Build Templates")
    print("0. Back")
    print()
    local d = ADDON.Choice("Answer", "120")
    print()

    if d == "1" then
      ADDON.LoadGroups()
      ADDON.TranslateItems()
      ADDON.Groups = nil
    end

    if d == "2" then
      ADDON.BuildTemplates()
    end

  until d == "0"
end

------------------------------------------------------------

local function ShowMain()
  CheckLocation()
  CheckConfig()

  repeat
    ADDON.Clear()
    print("============")
    print("=== Main ===")
    print("============")
    print()
    print("1. Import WTF")
    print("2. Export Addon")
    print("3. Export HTML")
    print("9. Advanced")
    print("0. Exit")
    print()
    local d = ADDON.Choice("Answer", "12390")
    print()

    if d == "1" then
      if CheckWoW() then
        ADDON.ImportWTF()
      end
    end

    if d == "2" then
      if CheckWoW() then
        ADDON.ExportAddon()
      end
    end

    if d == "3" then
      ADDON.LoadGroups()
      ADDON.ExportHTML()
      ADDON.Groups = nil
    end

    if d == "9" then
      ShowAdvanced()
    end

  until d == "0"
end

------------------------------------------------------------

-- load tools
assert(loadfile("Console/Tools.lua"))("LuaDKP", ADDON)

-- load console
ADDON.LoadFile("Console/Evaluate.lua")
ADDON.LoadFile("Console/ImportWTF.lua")
ADDON.LoadFile("Console/ExportAddon.lua")
ADDON.LoadFile("Console/ExportHTML.lua")
ADDON.LoadFile("Console/TranslateItems.lua")
ADDON.LoadFile("Console/BuildTemplates.lua")
ADDON.LoadFile("Console/Menu.lua")

-- load configuarion
ADDON.LoadFile("Config.lua")

-- load misc
ADDON.LoadFile("Misc/Definitions.lua")
ADDON.LoadFile("Misc/ItemTranslation-" .. ADDON.Config.expansion .. ".lua")

------------------------------------------------------------

-- show main menu
ShowMain()
