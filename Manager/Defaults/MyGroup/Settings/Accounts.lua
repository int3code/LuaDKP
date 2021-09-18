local _, ADDON = ...

------------------------------------------------------------

local accounts = {
  [0] = "?", -- do not remove!
--[1] = {basegp = 200, name = "MC"  },
--[2] = {basegp = 200, name = "BWL" },
--[3] = {basegp = 200, name = "AQ40"},
--[4] = {basegp = 200, name = "Naxx"},
  [5] = {basegp = 200, name = "SSC/TK"},
}

------------------------------------------------------------

-- export tables
ADDON.InitGroup.Accounts = accounts
