local _, ADDON = ...

------------------------------------------------------------

local bosses = {
  [   0] = "?", -- do not remove!
  [   1] = {en = "Trash"},
  [   2] = {en = "The Three Drakes", de = "Die Drei Drachen"},
  [   3] = {en = "All Bosses", de = "Alle Bosse"},
  [   4] = {en = "Huhuran/Viscidus"},
  [   5] = {en = "Trash/Bosses"},

  -- BWL:
  [ 610] = {points = 10, accounts = {2}, en = "Razorgore"},
  [ 611] = {points = 10, accounts = {2}, en = "Vaelastrasz"},
  [ 612] = {points = 10, accounts = {2}, en = "Broodlord", de = "Brutwächter"},
  [ 615] = {points = 10, accounts = {2}, en = "Firemaw", de = "Feuerschwinge"},
  [ 614] = {points = 10, accounts = {2}, en = "Ebonroc", de = "Schattenschwinge"},
  [ 613] = {points = 10, accounts = {2}, en = "Flamegor", de = "Flammenmaul"},
  [ 616] = {points = 10, accounts = {2}, en = "Chromaggus"},
  [ 617] = {points = 10, accounts = {2}, en = "Nefarian"},

  -- AQ40:
  [ 709] = {points = 10, accounts = {3}, en = "Skeram"},
  [ 710] = {points = 10, accounts = {3}, en = "Bugs", de = "Käfer"},
  [ 711] = {points = 10, accounts = {3}, en = "Sartura"},
  [ 712] = {points = 10, accounts = {3}, en = "Fankriss"},
  [ 713] = {points = 20, accounts = {3}, en = "Viscidus"},
  [ 714] = {points = 10, accounts = {3}, en = "Huhuran"},
  [ 715] = {points = 20, accounts = {3}, en = "Twins", de = "Zwillinge"},
  [ 716] = {points = 10, accounts = {3}, en = "Ouro"},
  [ 717] = {points = 20, accounts = {3}, en = "C'Thun"},

  -- Naxx:
  [1107] = {points = 10, accounts = {4}, en = "Anub'Rekhan"},
  [1108] = {points = 10, accounts = {4}, en = "Gluth"},
  [1109] = {points = 15, accounts = {4}, en = "Gothik"},
  [1110] = {points = 10, accounts = {4}, en = "Faerlina"},
  [1111] = {points = 10, accounts = {4}, en = "Grobbulus"},
  [1112] = {points = 10, accounts = {4}, en = "Heigan"},
  [1113] = {points = 10, accounts = {4}, en = "Razuvious"},
  [1114] = {points = 20, accounts = {4}, en = "Kel'Thuzad"},
  [1115] = {points = 20, accounts = {4}, en = "Loatheb"},
  [1116] = {points = 15, accounts = {4}, en = "Maexxna"},
  [1117] = {points = 10, accounts = {4}, en = "Noth"},
  [1118] = {points = 15, accounts = {4}, en = "Patchwerk", de = "Flickwerk"},
  [1119] = {points = 20, accounts = {4}, en = "Sapphiron"},
  [1120] = {points = 15, accounts = {4}, en = "Thaddius"},
  [1121] = {points = 20, accounts = {4}, en = "Horsemen", de = "Reiter"},

  -- SSC:
  [ 623] = {points = 15, accounts = {5}, en = "Hydross"},
  [ 624] = {points = 10, accounts = {5}, en = "Lurker"},
  [ 625] = {points = 10, accounts = {5}, en = "Leotheras"},
  [ 626] = {points = 15, accounts = {5}, en = "Karathress"},
  [ 627] = {points = 10, accounts = {5}, en = "Morogrim"},
  [ 628] = {points = 25, accounts = {5}, en = "Lady Vashj"},

  -- TK:
  [ 730] = {points = 15, accounts = {5}, en = "Al'ar"},
  [ 731] = {points = 10, accounts = {5}, en = "Void Reaver", de = "Leerhäscher"},
  [ 732] = {points = 10, accounts = {5}, en = "Solarian"},
  [ 733] = {points = 25, accounts = {5}, en = "Kael'thas"},

  -- MH:
  [ 618] = {points = 10, accounts = {6}, en = "Winterchill"},
  [ 619] = {points = 10, accounts = {6}, en = "Anetheron"},
  [ 620] = {points = 10, accounts = {6}, en = "Kaz'rogal"},
  [ 621] = {points = 15, accounts = {6}, en = "Azgalor"},
  [ 622] = {points = 25, accounts = {6}, en = "Archimonde"},

  -- BT:
  [ 601] = {points = 10, accounts = {6}, en = "Naj'entus"},
  [ 602] = {points = 10, accounts = {6}, en = "Supremus"},
  [ 603] = {points = 10, accounts = {6}, en = "Akama"},
  [ 604] = {points = 15, accounts = {6}, en = "Gorefiend"},
  [ 605] = {points = 15, accounts = {6}, en = "Bloodboil"},
  [ 606] = {points = 15, accounts = {6}, en = "Reliquary"},
  [ 607] = {points = 15, accounts = {6}, en = "Shahraz"},
  [ 608] = {points = 15, accounts = {6}, en = "Council"},
  [ 609] = {points = 25, accounts = {6}, en = "Illidan"},
}

------------------------------------------------------------

-- export tables
ADDON.InitGroup.Bosses = bosses
