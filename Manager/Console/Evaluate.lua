local _, ADDON = ...

------------------------------------------------------------

local format1 = {
  {path = "/",                br = true,  tbl = false, spc = true,  width = 0, comment = 0, sort = {}},
  {path = "/players/",        br = true,  tbl = true,  spc = true,  width = 0, comment = 0, sort = {}},
  {path = "/kills//",         br = false, tbl = false, spc = true,  width = 0, comment = 0, sort = {"boss", "timestamp", "players"}},
  {path = "/kills//players/", br = false, tbl = false, spc = false, width = 0, comment = 0, sort = {}},
  {path = "/drops/",          br = true,  tbl = false, spc = true,  width = 0, comment = 1, sort = {}},
  {path = "/drops//",         br = false, tbl = false, spc = true,  width = 0, comment = 0, sort = {"player", "timestamp", "item"}},
  {path = "/drops//player/",  br = false, tbl = false, spc = true,  width = 2, comment = 0, sort = {}},
}

local format2 = {
  {path = "/", br = true, tbl = false, spc = true, width = 0, comment = 0, sort = {"cn", "de", "en", "es", "fr", "ko", "pt", "ru"}},
}

local fdecl = {
  format   = nil,
  lang     = nil,
  players  = nil,
  GetArray = nil,
  GetTable = nil,
}

------------------------------------------------------------

local function SortTable(t1, sort)
  local t2 = {}
  local lookup = {}

  for i,k in ipairs(sort) do
    if t1[k] then
      table.insert(t2, {k, t1[k]})
      lookup[k] = true
    end
  end

  for k,v in pairs(t1) do
    if not lookup[k] then
      if k == 0 then
        table.insert(t2, 1, {k, v})
      else
        table.insert(t2, {k, v})
      end
    end
  end

  return t2
end

------------------------------------------------------------

local function GetComment(t, fmt)
  if fmt.comment ~= 1 then
    return ""
  end

  local trans = ADDON.ItemTranslation[t.item]
  local name = "Unknown Item"

  if trans then
    name = trans[fdecl.lang] or trans["en"] or "Unknown Item"
  end

  return " -- " .. fdecl.players[t.player] .. " : " .. name
end

------------------------------------------------------------

local function GetFormat(path, fmt)
  for i,v in ipairs(fdecl.format) do
    if v.path == path then
      return v
    end
  end
  return fmt
end

------------------------------------------------------------

local function GetIndent(path)
  local level = 0
  for i = 1, #path do
    if path:sub(i, i) == "/" then
      level = level + 1
    end
  end
  return string.rep("  ", level)
end

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

local function IsIdentifier(s)
  return s:match("^[A-Za-z_][A-Za-z0-9_]*$") ~= nil
end

------------------------------------------------------------

local function GetKey(x)
  if type(x) == "number" then
    return "[" .. string.format("%2s", "" .. x) .. "]"
  end
  if type(x) == "string" then
    if IsIdentifier(x) then
      return x
    else
      return "[" .. string.format("%q", x) .. "]"
    end
  end
  error("Invalid key!")
end

------------------------------------------------------------

local function GetVal(x, path, fmt)
  fmt = GetFormat(path, fmt)

  if type(x) == "boolean" then
    if x then
      return "true"
    else
      return "false"
    end
  end

  if type(x) == "number" then
    return string.format("%" .. fmt.width .. "d", x)
  end

  if type(x) == "string" then
    return string.format("%" .. fmt.width .. "s", string.format("%q", x))
  end

  if type(x) == "table" then
    if IsArray(x) and not fmt.tbl then
      return fdecl.GetArray(x, path, fmt)
    else
      return fdecl.GetTable(x, path, fmt)
    end
  end

  return "nil"
end

------------------------------------------------------------

local function GetArray(x, path, fmt)
  local endline = "\r\n" .. GetIndent(path)

  local s = "{"
  if fmt.br then
    s = s .. endline
  end

  if #x > 0 then
    for i,v in ipairs(x) do
      s = s .. GetVal(v, path .. "/", fmt)
      if fmt.br then
        s = s .. "," .. GetComment(v, fmt) .. endline
      else
        if fmt.spc then
          s = s .. ", "
        else
          s = s .. ","
        end
      end
    end

    if fmt.spc then
      s = s:sub(1, -3)
    else
      s = s:sub(1, -2)
    end
  end

  return s .. "}"
end

------------------------------------------------------------

local function GetTable(x, path, fmt)
  local endline = "\r\n" .. GetIndent(path)

  local s = "{"
  if fmt.br then
    s = s .. endline
  end

  local y = SortTable(x, fmt.sort)
  if #y > 0 then
    for i,t in ipairs(y) do
      local k = t[1]
      local v = t[2]
      s = s .. GetKey(k) .. " = " .. GetVal(v, path .. k .. "/", fmt)
      if fmt.br then
        s = s .. "," .. GetComment(v, fmt) .. endline
      else
        s = s .. ", "
      end
    end
    s = s:sub(1, -3)
  end

  return s .. "}"
end

------------------------------------------------------------

local function GetRaidString(lang, raid)

  -- forward declaration
  fdecl.lang = lang
  fdecl.players = raid.players
  fdecl.format = format1

  local s = ""
  s = s .. "local _, ADDON = ...\r\n\r\n"
  s = s .. "------------------------------------------------------------\r\n\r\n"
  s = s .. "local raid = " .. GetVal(raid, "/", nil) .. "\r\n\r\n"
  s = s .. "------------------------------------------------------------\r\n\r\n"
  s = s .. "-- export raid\r\n"
  s = s .. "ADDON.InitGroup.Raids = ADDON.InitGroup.Raids or {}\r\n"
  s = s .. "table.insert(ADDON.InitGroup.Raids, raid)\r\n"

  return s
end

------------------------------------------------------------

local function GetTranslateString(translation)

  -- forward declaration
  fdecl.format = format2

  local s = ""
  s = s .. "local _, ADDON = ...\r\n\r\n"
  s = s .. "------------------------------------------------------------\r\n\r\n"
  s = s .. "local translation = " .. GetVal(translation, "/", nil) .. "\r\n\r\n"
  s = s .. "------------------------------------------------------------\r\n\r\n"
  s = s .. "-- export translation\r\n"
  s = s .. "ADDON.ItemTranslation = translation\r\n"

  return s
end

------------------------------------------------------------

-- forward declarations
fdecl.GetArray = GetArray
fdecl.GetTable = GetTable

-- export
ADDON.GetRaidString = GetRaidString
ADDON.GetTranslateString = GetTranslateString
