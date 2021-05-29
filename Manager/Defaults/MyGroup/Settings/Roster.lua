local _, ADDON = ...

------------------------------------------------------------

-- Console/Definitions.lua:
-- 1 = Druid, 2 = Hunter, 3 = Mage, 4 = Paladin, 5 = Priest, 6 = Rogue, 7 = Shaman, 8 = Warlock, 9 = Warrior
-- 1 = Tank, 2 = Melee, 3 = Ranged, 4 = Heal

------------------------------------------------------------

local roster = {
--["PlayerName"] = {xclass = 1, role = 1, nickname = "NameWithoutSpecialCharacters"},
}

------------------------------------------------------------

-- export tables
ADDON.InitGroup.Roster = roster
