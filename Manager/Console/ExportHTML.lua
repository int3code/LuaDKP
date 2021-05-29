local _, ADDON = ...

------------------------------------------------------------

local function IsArray(x)
  local cnt = 0
  for k,v in pairs(x) do
    cnt = cnt + 1
  end
  for i = 1, cnt do
    if x[i] == nil then
      return false
    end
  end
  return true
end

------------------------------------------------------------

local function GetKey(x, level)
  if type(x) == "number" or type(x) == "string" then
    return '"' .. x .. '"'
  end
  error("Invalid key!")
end

------------------------------------------------------------

local function GetVal(x, level)

  if type(x) == "boolean" then
    if x then
      return "true"
    else
      return "false"
    end
  end

  if type(x) == "number" then
    return "" .. x
  end

  if type(x) == "string" then
    return '"' .. x .. '"'
  end

  if type(x) == "table" then
    local first = true
    local s

    if IsArray(x) then
      s = "["
      for i,v in ipairs(x) do
        if not first then
          s = s .. ", "
        end
        first = false
        s = s .. GetVal(v, level+1)
      end
      s = s .. "]"
    else
      s = "{"
      for k,v in pairs(x) do
        if not first then
          s = s .. ", "
        end
        first = false
        if level == 0 then s = s .. "\r\n" end
        s = s .. GetKey(k, level+1) .. " : " .. GetVal(v, level+1)
      end
      if level == 0 then s = s .. "\r\n" end
      s = s .. "}"
    end

    return s
  end

  return "nil"
end

------------------------------------------------------------

local function Escape(s)
  local r, cnt = string.gsub(s, "%%", "%%%%")
  return r
end

------------------------------------------------------------

local function ExportGroup(filename, group)

  -- add names to items!
  for id,item in pairs(group.Items) do
    local dict = ADDON.ItemTranslation[id]
    if dict then
      item.name = dict[group.Settings.lang] or dict["en"] or ("Item " .. id)
    else
      item.name = "Item " .. id
    end
  end

  local data = {
    Items       = group.Items,
    Raids       = group.Raids,

    -- Config:
    Accounts    = group.Accounts,
    Bosses      = group.Bosses,
    Corrections = group.Corrections,
    Inactive    = group.Inactive,
    Roster      = group.Roster,
    Settings    = group.Settings,

    -- Definitions:
    Classes     = ADDON.Classes,
    Roles       = ADDON.Roles,
    Slots       = ADDON.Slots,
    Types       = ADDON.Types,
  }

  local file1 = assert(io.open("Misc/Template.html", "rb"))
  local html = file1:read("*all")
  file1:close()

  html = html:gsub("LUADKP_TITLE", Escape(group.Settings.title))
  html = html:gsub("LUADKP_THEME", group.Settings.theme)
  html = html:gsub("LUADKP_STYLE", Escape(group.Settings.style))
  html = html:gsub("LUADKP_DATE", os.date("%Y-%m-%d %H:%M"))
  html = html:gsub("LUADKP_JSONDATA", GetVal(data, 0) .. ";")
  html = html:gsub("LUADKP_HOST", ADDON.GetHost(group.Settings.lang or "en", ADDON.Config.expansion))

  local file2 = assert(io.open("Output/" .. filename, "w+b"))
  file2:write(html)
  file2:close()
end

------------------------------------------------------------

local function ExportHTML()

  -- export group
  for name,group in pairs(ADDON.Groups) do
    local filename = string.gsub(name, " ", "_") .. ".html"

    print('Writing "' .. filename .. '" to Output folder...')
    ExportGroup(filename, group)
  end

  print()
  ADDON.Pause()
end

------------------------------------------------------------

-- export
ADDON.ExportHTML = ExportHTML
