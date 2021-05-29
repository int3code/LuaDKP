local _, ADDON = ...

------------------------------------------------------------

local function CheckCurl()

  -- check if Windows 10 has curl.exe installed
  if os.execute('where /Q curl.exe') == 0 then
    return true, "curl.exe"
  end

  -- check if curl.exe is available in the Bin directory
  if ADDON.FileExists("Bin/curl.exe") then
    return true, "Bin\\curl.exe"
  end

  return false
end

------------------------------------------------------------

local function GetItemList()
  local dict = {}
  local list = {}

  -- collect ids from all groups
  for _,group in pairs(ADDON.Groups) do
    for id,_ in pairs(group.Items) do
      dict[id] = true
    end
  end

  -- create a sorted list of ids
  for id,_ in pairs(dict) do
    table.insert(list, id)
  end
  table.sort(list)

  return list
end

------------------------------------------------------------

local function Fetch(curl, items, langs, expansion)
  local cnt = 0
  local msg = ""
  local trans = {}

  -- go through items...
  for i,item in ipairs(items) do
    print(item .. " (" .. i .. " of " .. #items .. "):")
    trans[item] = {}

    -- go through languages...
    for _,lang in ipairs(langs) do
      local host = ADDON.GetHost(lang, expansion)

      -- query server
      local r = ""
      local f = io.popen(curl .. ' -kfs "https://' .. host .. '/item=' .. item .. '&xml"')
      if f then
        r = f:read("*a")
        f:close()
      end

      -- analyze result
      local s = r:match("<name><!.CDATA.(.*)..></name>")
      if s then
        print(lang .. ": " .. s)
        trans[item][lang] = s
      else
        print(lang .. ": ERROR!")
        msg = msg .. " " .. item .. "/" .. lang
        cnt = cnt + 1
      end
    end

    print()
  end
  print(cnt .. " errors occured!")
  print()

  return cnt, msg, trans
end

------------------------------------------------------------

local function TranslateItems()
  local expansion = ADDON.Config.expansion

  -- check curl.exe
  local b, curl = CheckCurl()
  if not b then
    print("Error: curl.exe could not be found.")
    print()
    print("The program curl.exe should be included in any current version of Windows 10, but it was not found on your system.")
    print("Alternatively, you can download it manually from https://curl.haxx.se/windows/ and save it in the Bin folder.")
    print()
    ADDON.Pause()
    return
  end

  -- sanity check
  print("Expansion: " .. expansion)
  print()
  print("This action will put some load on the WoWHead servers and should be used sparingly.")
  print("Do you really want to generate new item translations?")
  print()
  if ADDON.Choice("Continue?", "yN", "n") ~= "y" then
    return
  end
  print()

  -- fetch translation
  local items = GetItemList()
  local langs = {"en", "de", "es", "fr", "pt", "ru", "ko", "cn"}
  local errcnt, errmsg, trans = Fetch(curl, items, langs, expansion)

  -- too many errors?
  if errcnt > 9 then
    print("Too many errors! Please try again later.")
    print()
    ADDON.Pause()
    return
  end

  -- some errors?
  if errcnt > 0 then
    print("WARNING: Please fix the following items manually or try again later:")
    print("Errors: " .. errmsg)
    print()
  end

  -- write file
  local str = ADDON.GetTranslateString(trans)
  local filename = "Output/ItemTranslation-" .. expansion .. ".lua"
  local output = assert(io.open(filename, "w+b"))
  output:write(str)
  output:close()

  print(filename .. " written to Output directory!")
  print()
  ADDON.Pause()
end

------------------------------------------------------------

-- export
ADDON.TranslateItems = TranslateItems
