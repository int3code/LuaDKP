local _, ADDON = ...

------------------------------------------------------------

local corrections = {
  players = {
    [ 0] = "?", -- do not remove!
--  [ 1] = "PlayerName",
  },
  list = {
--  {timestamp = "2021-01-01 20:00", account = 1, ep = 0, gp = 0, reason = "Reason", players = {1}}, -- PlayerNames
  },
}

------------------------------------------------------------

-- export raid
ADDON.InitGroup.Corrections = corrections
