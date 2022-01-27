local _, ADDON = ...

------------------------------------------------------------

local function Pad(s, n)
  return string.rep(" ", n - string.len(s)) .. s
end

------------------------------------------------------------

local function GetNote(prefix, tbl)
  if #tbl > 0 then
    return prefix .. table.concat(tbl, " ")
  end
  return ""
end

------------------------------------------------------------

local function SortList(a, b)
  if a.boss == b.boss then
    return a.id < b.id
  else
    return a.boss < b.boss
  end
end

------------------------------------------------------------

local function GetText(list, fn)
  local lastboss = 0

  -- add header
  local s = 'local _, ADDON = ...\r\n' ..
            '\r\n' ..
            '------------------------------------------------------------\r\n' ..
            '\r\n' ..
            'local items = {\r\n'

  -- add body
  for _,item in ipairs(list) do

    -- add some lines between bosses
    if item.boss ~= lastboss then
      s = s .. '\r\n  -- Boss ' .. item.boss .. '\r\n'
      lastboss = item.boss
    end

    -- get note
    local note = GetNote(" BIS: ", item.bis) .. GetNote(" OPT: ", item.opt)

    -- write line
    s = s .. '  [' .. Pad(item.id, 6) .. '] ' ..
             '= {boss = ' .. Pad(item.boss, 4) ..
             ', slot = ' .. Pad(item.slot, 2) ..
             ', xtype = ' .. Pad(item.xtype, 2) ..
             ', account = ?' ..
             ', cost = ' .. Pad(item.cost, 4) ..
             ', note = "' .. note:sub(2) .. '"' ..
             '}, -- ' .. item.name .. '\r\n'
  end

  -- add footer
  s = s .. '}\r\n' ..
           '\r\n' ..
           '------------------------------------------------------------\r\n' ..
           '\r\n' ..
           '-- export items\r\n' ..
           'ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}\r\n' ..
           'for k,v in pairs(items) do\r\n' ..
           '  ADDON.InitGroup.Items[k] = v\r\n' ..
           'end\r\n' ..
           'items = nil\r\n'

  return s
end

------------------------------------------------------------

local function BuildTemplates()
  for file in io.popen("dir /b Templates\\*_Template.lua 2> nul"):lines() do
    print("Loading " .. file .. "...")

    -- load template and get table!
    GetTemplateTable = nil
    dofile("Templates/" .. file)
    if type(GetTemplateTable) == "function" then

      -- call external function
      local tbl = GetTemplateTable()

      -- convert to sorted list
      local list = {}
      for k,v in pairs(tbl) do
        v.id = k
        table.insert(list, v)
      end
      table.sort(list, SortList)

      -- get text
      local fn = file:sub(1, -14)
      local s = GetText(list, fn)
      print("Writing " .. fn .. ".lua to Output...")

      -- write text
      local f1 = assert(io.open("Output/" .. fn .. ".lua", "w+b"))
      f1:write(s)
      f1:close()
    else
      print("WARNING: GetTemplateTable() not found, skipping file!")
    end

    print()
  end

  ADDON.Pause()
end

------------------------------------------------------------

-- export
ADDON.BuildTemplates = BuildTemplates
