local _, ADDON = ...

------------------------------------------------------------

local frame = nil
local label = nil
local button = nil
local dropdown1 = nil
local dropdown2 = nil
local edit = nil

local groups = {}
local delay = 0

------------------------------------------------------------

local function GetDate()
  -- new day starts at 5am
  return date("%Y-%m-%d", time() - 5*3600)
end

------------------------------------------------------------

local function RefreshLabel()
  if ADDON.Group then
    local info = ADDON.GetRaidStats(ADDON.Group, ADDON.File)
    label:SetText("Tracking is enabled: " .. info)
    label:SetTextColor(0, 1, 0)
  end
end

------------------------------------------------------------

local function IsFileReserved(group, file)
  if ADDON.Groups[group] then
    return ADDON.Contains(ADDON.Groups[group].Files, file)
  end
end

------------------------------------------------------------

local function Refresh()
  local t1 = UIDropDownMenu_GetText(dropdown1) or ""
  local b2 = true

  -- clear dropdown2
  if t1 == "" then
    edit:SetText("")
    b2 = false
  end

  if ADDON.Group then
    -- disable controls
    UIDropDownMenu_DisableDropDown(dropdown1)
    button:SetText("Disable Tracking")
    RefreshLabel()
    b2 = false
  else
    -- enable controls
    UIDropDownMenu_EnableDropDown(dropdown1)
    button:SetText("Enable Tracking")
  end

  if b2 then
    -- enable dropdown2
    UIDropDownMenu_EnableDropDown(dropdown2)
    edit:Enable()
    edit:SetTextColor(1, 1, 1)
  else
    -- disable dropdown2
    UIDropDownMenu_DisableDropDown(dropdown2)
    edit:Disable()
    edit:SetTextColor(0.5, 0.5, 0.5)
  end

  local t2 = edit:GetText()
  local b3 = t2:match("^[A-Za-z0-9_-]*$") ~= nil
  local b4 = not IsFileReserved(t1, t2)
  label:SetText("")

  -- set error message
  if not b3 then
    label:SetText("Invalid filename!")
    label:SetTextColor(1, 0, 0)
  end

  -- set error message
  if not b4 then
    label:SetText("File already exists!")
    label:SetTextColor(1, 0, 0)
  end

  -- enable or disable button
  button:SetEnabled(t1 ~= "" and t2 ~= "" and b3 and b4)
end

------------------------------------------------------------

local function ButtonClick()

  -- assign group and file
  if ADDON.Group then
    ADDON.Group = nil
    ADDON.File = nil
    LuaDKP_Settings.group = nil
    LuaDKP_Settings.file = nil
  else
    ADDON.Group = UIDropDownMenu_GetText(dropdown1)
    ADDON.File = edit:GetText()
    LuaDKP_Settings.group = ADDON.Group
    LuaDKP_Settings.file = ADDON.File
  end
  LuaDKP_Settings.date = GetDate()

  Refresh()
end

------------------------------------------------------------

local function DropDown1Change(self, val)
  UIDropDownMenu_SetText(dropdown1, val)
  edit:SetText("")
  Refresh()
end

------------------------------------------------------------

local function DropDown2Change(self, val)
  edit:SetText(val[1])
  Refresh()
end

------------------------------------------------------------

local function DropDownHandler1(self, level, menu)
  local info = UIDropDownMenu_CreateInfo()
  local text = UIDropDownMenu_GetText(dropdown1)

  for i,v in ipairs(groups) do
    info.text = v
    info.checked = text == v
    info.menuList = 1
    info.hasArrow = false
    info.func = DropDown1Change
    info.arg1 = v
    UIDropDownMenu_AddButton(info)
  end
  edit:ClearFocus()
end

------------------------------------------------------------

local function DropDownHandler2(self, level, menu)
  local info = UIDropDownMenu_CreateInfo()
  local text = edit:GetText()
  local stats = ADDON.GetStoredStats(UIDropDownMenu_GetText(dropdown1) or "")

  -- add new raid to stats
  local s = GetDate() .. "_Raid"
  local f = false
  for i,v in ipairs(stats) do
    f = f or v[1] == s
  end
  if not f then
    table.insert(stats, 1, {s, "New File"})
  end

  -- display dropdown
  for i,v in ipairs(stats) do
    info.text = v[1] .. " - " .. v[2]
    info.checked = text == v[1]
    info.menuList = 1
    info.hasArrow = false
    info.func = DropDown2Change
    info.arg1 = v
    UIDropDownMenu_AddButton(info)
  end
  edit:SetFocus()
end

------------------------------------------------------------

local function CreateTrackerFrame()

  frame = CreateFrame("Frame", "LuaDKP_TrackerFrame", UIParent, "UIPanelDialogTemplate")
  frame:SetSize(320, 169)
  frame:SetPoint("CENTER", 0, 100)
  frame:SetFrameStrata("DIALOG")
  frame:Hide()

  local caption1 = frame:CreateFontString(nil, "BORDER", "GameFontNormal")
  caption1:SetPoint("TOP", 0, -9)
  caption1:SetText("LuaDKP Tracker")

  local caption2 = frame:CreateFontString(nil, "BORDER", "GameFontHighlight")
  caption2:SetPoint("TOPLEFT", 17, -44)
  caption2:SetText("Group:")

  local caption3 = frame:CreateFontString(nil, "BORDER", "GameFontHighlight")
  caption3:SetPoint("TOPLEFT", 17, -78)
  caption3:SetText("File:")

  label = frame:CreateFontString(nil, "BORDER", "GameFontNormal")
  label:SetPoint("BOTTOM", 0, 51)
  label:SetText("...")
  label:SetTextColor(0, 1, 0)

  ----------------------------------------

  dropdown1 = CreateFrame("FRAME", "LuaDKP_GroupDropDown", frame, "UIDropDownMenuTemplate")
  dropdown1:SetPoint("TOPRIGHT", 0, -35)
  UIDropDownMenu_SetWidth(dropdown1, 197)
  UIDropDownMenu_JustifyText(dropdown1, "LEFT")
  UIDropDownMenu_SetText(dropdown1, "")

  dropdown2 = CreateFrame("FRAME", "LuaDKP_DropDown2", frame, "UIDropDownMenuTemplate")
  dropdown2:SetPoint("TOPRIGHT", 0, -70)
  UIDropDownMenu_SetWidth(dropdown2, 197)
  UIDropDownMenu_SetText(dropdown2, "")

  edit = CreateFrame("EditBox", nil, dropdown2)
  edit:SetPoint("TOPLEFT", 27, 0)
  edit:SetPoint("BOTTOMRIGHT", -39, 4)
  edit:SetFontObject("GameFontHighlightSmall")
  edit:SetAutoFocus(false)
  edit:SetText("")
  edit:SetScript("OnEnterPressed", function(self) edit:ClearFocus() end)
  edit:SetScript("OnTextChanged", function(self) Refresh() end)

  UIDropDownMenu_Initialize(dropdown1, DropDownHandler1)
  UIDropDownMenu_Initialize(dropdown2, DropDownHandler2)

  ----------------------------------------

  local btn = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  btn:SetPoint("BOTTOMRIGHT", -16, 18)
  btn:SetSize(140, 25)
  btn:SetText("Close")
  btn:SetScript("OnClick", function(self) frame:Hide() end)

  button = CreateFrame("Button", nil, frame, "UIPanelButtonTemplate")
  button:SetPoint("BOTTOMLEFT", 16, 18)
  button:SetSize(140, 25)
  button:SetText("...")
  button:SetScript("OnClick", ButtonClick)

  ----------------------------------------

  groups = ADDON.GetGroups()
end

------------------------------------------------------------

local function Track()

  -- load initial values
  if ADDON.Group then
    UIDropDownMenu_SetText(dropdown1, ADDON.Group)
    edit:SetText(ADDON.File)
  else
    if #groups == 1 then
      UIDropDownMenu_SetText(dropdown1, groups[1])
    else
      UIDropDownMenu_SetText(dropdown1, "")
    end
    edit:SetText("")
  end

  Refresh()
  frame:Show()
end

------------------------------------------------------------

local function UpdateHandler(self, sec)
  delay = delay + sec
  if delay > 0.25 then
    delay = 0
    RefreshLabel()
  end
end

------------------------------------------------------------

local function EventHandler(self, event, ...)

  -- show tracker when entering a raid instance
  if event == "RAID_INSTANCE_WELCOME" then
    local name, _, _, _, _, _, _, instanceid, _ = GetInstanceInfo()
    if LuaDKP_Settings.instance ~= instanceid then
      LuaDKP_Settings.instance = instanceid
      ADDON.Track()
    end
  end
end

------------------------------------------------------------

local function InitTracker()
  local b1 = LuaDKP_Settings.date ~= GetDate()
  local b2 = IsFileReserved(LuaDKP_Settings.group, LuaDKP_Settings.file)
  local b3 = not ADDON.Groups[LuaDKP_Settings.group]

  if b1 or b2 or b3 then
    LuaDKP_Settings.date = GetDate()
    LuaDKP_Settings.instance = 0
    LuaDKP_Settings.group = nil
    LuaDKP_Settings.file = nil
  end

  ADDON.Group = LuaDKP_Settings.group
  ADDON.File = LuaDKP_Settings.file

  -- create frame
  CreateTrackerFrame()

  -- register events
  local f = CreateFrame("Frame")
  f:SetScript("OnUpdate", UpdateHandler)
  f:SetScript("OnEvent", EventHandler)
  f:RegisterEvent("RAID_INSTANCE_WELCOME")
end

------------------------------------------------------------

-- export
ADDON.Track = Track
ADDON.InitTracker = InitTracker
