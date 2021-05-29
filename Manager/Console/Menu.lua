local _, ADDON = ...

------------------------------------------------------------

local function Clear()
  os.execute("cls")
end

------------------------------------------------------------

local function Pause()
  print("Press enter to continue...")
  io.read()
end

------------------------------------------------------------

local function Choice(prompt, chars, default)
  repeat
    io.write(prompt .. " [" .. chars .. "]: ")
    answer = string.lower(io.read())

    -- default answer?
    if default and answer == "" then
      return default
    end

    -- valid answer?
    if string.len(answer) == 1 then
      if string.find(string.lower(chars), answer, 1, true) then
        return answer
      end
    end
  until false
end

------------------------------------------------------------

-- export
ADDON.Clear = Clear
ADDON.Pause = Pause
ADDON.Choice = Choice
