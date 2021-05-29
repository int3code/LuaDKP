local _, ADDON = ...

------------------------------------------------------------

local function GetData()
  local DATA = LuaDKP_GetData()
  local message = ""

  -- check version
  if DATA.Version ~= ADDON.Version then
    message = message .. "LuaDKP-Core Version: " .. ADDON.Version .. "|n"
    message = message .. "LuaDKP-Data Version: " .. DATA.Version .. "|n|n"

    if DATA.Version < ADDON.Version then
      message = message .. "LuaDKP-Data seems to be outdated.|nYou have the following options:|n|n"
      message = message .. "Carefully update the Manager and re-export.|nCreate a backup and read the instructions first!|n|n"
      message = message .. "...OR...|n|n"
      message = message .. "Downgrade Core to the previous version."
    end

    if DATA.Version > ADDON.Version then
      message = message .. "LuaDKP-Core seems to be outdated.|n"
      message = message .. "Please update the addon and restart."
    end

    StaticPopupDialogs["LUADKP_VERSION_MISMATCH"] = {
      text = message,
      button1 = "OK",
      timeout = 0,
      whileDead = true,
      hideOnEscape = true,
      preferredIndex = 3, -- avoid UI taint
    }

    StaticPopup_Show("LUADKP_VERSION_MISMATCH")
    return
  end

  -- assign data
  ADDON.Groups = DATA.Groups or {}
end

------------------------------------------------------------

local function EventHandler(self, event, ...)

  -- get data
  if LuaDKP_GetData then
    GetData()
  end

  -- initialize tables
  for k,v in pairs(ADDON.Groups) do
    v.Accounts = v.Accounts or {}
    v.Bosses = v.Bosses or {}
    v.Corrections = v.Corrections or {}
    v.Corrections.players = v.Corrections.players or {}
    v.Corrections.list = v.Corrections.list or {}
    v.Inactive = v.Inactive or {}
    v.Items = v.Items or {}
    v.Raids = v.Raids or {}
    v.Roster = v.Roster or {}
    v.Settings = v.Settings or {}
    v.Settings.title = v.Settings.title or k .. " DKP"
    v.Settings.tag = v.Settings.tag or "DKP"
    v.Settings.stdacc = v.Settings.stdacc or 1
    -- theme + style are not required in the addon part!
  end

  -- initialize modules
  ADDON.InitTracker()
  ADDON.InitMain()
end

------------------------------------------------------------

-- set version
ADDON.Version = 1

-- initialize groups
ADDON.Groups = {}
ADDON.Group = nil

-- initialize WTF
LuaDKP_Settings = {}

-- register event handler
local f = CreateFrame("Frame")
f:SetScript("OnEvent", EventHandler)
f:RegisterEvent("PLAYER_ENTERING_WORLD")
