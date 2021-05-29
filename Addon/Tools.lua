local _, ADDON = ...

------------------------------------------------------------

local function Split(s, sep)
  local t = {}
  local i = 1
  repeat
    local j = string.find(s, sep, 1, true)
    if not j then
      if s ~= "" then
        t[i] = s
      end
      break
    end
    t[i] = s:sub(1, j-1)
    s = s:sub(j+1)
    i = i + 1
  until false
  return t
end

------------------------------------------------------------

local function Trim(s)
   return s:gsub("^%s+", ""):gsub("%s+$", "")
end

------------------------------------------------------------

local function Contains(t, e)
  for i,v in ipairs(t) do
    if v == e then
      return true
    end
  end
  return false
end

------------------------------------------------------------

local function GetShortName(name)
  local i = string.find(name, "-", 1, true)
  if i then
    return name:sub(1, i-1)
  end
  return name
end

------------------------------------------------------------

local function GetLinkInfo(link)
  local a = Split(link, "|")
  if a[3] then
    local b = Split(a[3], ":")
    if b[2] then
      return tonumber(b[2]), string.sub(a[4], 3, -2)
    end
  end
end

------------------------------------------------------------

-- export
ADDON.Split = Split
ADDON.Trim = Trim
ADDON.Contains = Contains
ADDON.GetShortName = GetShortName
ADDON.GetLinkInfo = GetLinkInfo
