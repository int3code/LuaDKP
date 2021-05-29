local _, ADDON = ...

------------------------------------------------------------

local classes = {
  [0] = "?",
  [1] = {en = "Druid",   de = "Druide",       color = "#FF7C0A"},
  [2] = {en = "Hunter",  de = "Jäger",        color = "#AAD372"},
  [3] = {en = "Mage",    de = "Magier",       color = "#3FC7EB"},
  [4] = {en = "Paladin",                      color = "#F48CBA"},
  [5] = {en = "Priest",  de = "Priester",     color = "inherit"},
  [6] = {en = "Rogue",   de = "Schurke",      color = "#E9D700"},
  [7] = {en = "Shaman",  de = "Schamane",     color = "#2359FF"},
  [8] = {en = "Warlock", de = "Hexenmeister", color = "#9382C9"},
  [9] = {en = "Warrior", de = "Krieger",      color = "#C69B6D"},
}

------------------------------------------------------------

local roles = {
  [0] = "?",
  [1] = {en = "Tank"},
  [2] = {en = "Melee"},
  [3] = {en = "Ranged"},
  [4] = {en = "Heal", de = "Heiler"},
}

------------------------------------------------------------

local slots = {
  [ 0] = "?",
  [ 1] = {en = "Head", de = "Kopf"},
  [ 2] = {en = "Neck", de = "Hals"},
  [ 3] = {en = "Shoulder", de = "Schulter"},
  [ 4] = {en = "Back", de = "Rücken"},
  [ 5] = {en = "Chest", de = "Brust"},
  [ 6] = {en = "Wrist", de = "Handgelenke"},
  [ 7] = {en = "Hands", de = "Hände"},
  [ 8] = {en = "Waist", de = "Taille"},
  [ 9] = {en = "Legs", de = "Beine"},
  [10] = {en = "Feet", de = "Füsse"},
  [11] = {en = "Finger"},
  [12] = {en = "Trinket", de = "Schmuck"},
  [13] = {en = "One-Hand", de = "Einhändig"},
  [14] = {en = "Main Hand", de = "Waffenhand"},
  [15] = {en = "Off Hand", de = "Schildhand"},
  [16] = {en = "Two-Hand", de = "Zweihändig"},
  [17] = {en = "Ranged", de = "Distanz"},
}

------------------------------------------------------------

local types = {
  [ 0] = "?",
  [ 1] = {en = "Cloth", de = "Stoff"},
  [ 2] = {en = "Leather", de = "Leder"},
  [ 3] = {en = "Mail", de = "Kette"},
  [ 4] = {en = "Plate", de = "Platte"},
  [ 5] = {en = "Dagger", de = "Dolch"},
  [ 6] = {en = "Sword", de = "Schwert"},
  [ 7] = {en = "Axe", de = "Axt"},
  [ 8] = {en = "Mace", de = "Streitkolben"},
  [ 9] = {en = "Polearm", de = "Stangenwaffe"},
  [10] = {en = "Staff", de = "Stab"},
  [11] = {en = "Fist Weapon", de = "Faustwaffe"},
  [12] = {en = "Bow", de = "Bogen"},
  [13] = {en = "Crossbow", de = "Armbrust"},
  [14] = {en = "Gun", de = "Schusswaffe"},
  [15] = {en = "Wand", de = "Zauberstab"},
  [16] = {en = "Trown", de = "Wurfwaffe"},
  [17] = {en = "Shield", de = "Schild"},
  [18] = {en = "Token", de = "Marke"},
}

------------------------------------------------------------

-- export tables
ADDON.Classes = classes
ADDON.Roles = roles
ADDON.Slots = slots
ADDON.Types = types
