local _, ADDON = ...

------------------------------------------------------------

-- Thanks to jvendin for creating this item list for Ulduar!

local items = {

  -- Trash
  [45541] = {boss =    1, slot =  4, xtype =  1, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Resto DPri HPal Tree"}, -- Shroud of Alteration
  [45549] = {boss =    1, slot =  6, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Grips of Chaos
  [45547] = {boss =    1, slot =  8, xtype =  2, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Arms Assa Comb MMHu SUHu Cat"}, -- Relic Hunter's Cord
  [45548] = {boss =    1, slot =  8, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Belt of the Sleeper
  [45543] = {boss =    1, slot =  3, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Shoulders of Misfortune
  [45544] = {boss =    1, slot =  9, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Leggings of the Tortured Earth
  [45542] = {boss =    1, slot = 10, xtype =  4, account = 7, cost = 400, note = "BiS: PPal OPT: PWar"}, -- Greaves of the Stonewarder
  [45540] = {boss =    1, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Fury Arms UHDk"}, -- Bladebearer's Signet
  [45539] = {boss =    1, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Demo Affl Dest SPri Arca Fire Boom"}, -- Pendant of Focused Energies
  [45538] = {boss =    1, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: PWar PPal BLDk"}, -- Titanstone Pendant
  [45605] = {boss =    1, slot = 13, xtype =  5, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Daschal's Bite
  [45038] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =  20, note = "BiS: HPal HDru Resto HPri DPri"}, -- Fragment of Val'anyr
  [45089] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Battlelord's Plate Boots
  [45088] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Belt of the Titans
  [45092] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Indestructible Plate Girdle
  [45090] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Plate Girdle of Righteousness
  [45093] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Spiked Deathdealers
  [45091] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Plans: Treads of Destiny
  [45100] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Belt of Arctic Life
  [45094] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Belt of Dragons
  [45096] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Blue Belt of Chaos
  [45095] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Boots of Living Scale
  [45101] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Boots of Wintry Endurance
  [45098] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Death-warmed Belt
  [45099] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Footpads of Silence
  [45097] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Lightning Grounded Boots
  [45104] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Cord of the White Dawn
  [45102] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Sash of Ancient Power
  [45105] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Savior's Slippers
  [45103] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Pattern: Spellslinger's Slippers
  [46027] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Formula: Enchant Weapon - Blade Ward
  [46348] = {boss =    3, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: BoE Pattern"}, -- Formula: Enchant Weapon - Blood Draining 

  -- Tokens
  [45632] = {boss = 1135, slot =  5, xtype = 18, account = 7, cost = 225, note = "-50%! BiS: Demo Affl Dest SPri DPri Retr OPT: PPal"}, -- Breastplate of the Wayward Conqueror
  [45633] = {boss = 1135, slot =  5, xtype = 18, account = 7, cost = 225, note = "-50%! BiS: Fury Arms Enha Elem OPT: MMHu SUHu"}, -- Breastplate of the Wayward Protector
  [45634] = {boss = 1135, slot =  5, xtype = 18, account = 7, cost = 225, note = "-50%! BiS: Arca Fire FRDk UHDk OPT: Assa Comb Tree BLDk"}, -- Breastplate of the Wayward Vanquisher
  [45638] = {boss = 1141, slot =  1, xtype = 18, account = 7, cost = 150, note = "-50%! BiS: SPri DPri Retr HPal PPal OPT: HPri"}, -- Crown of the Wayward Conqueror
  [45639] = {boss = 1141, slot =  1, xtype = 18, account = 7, cost = 150, note = "-50%! BiS: Fury Arms PWar Elem Resto OPT: Enha MMHu SUHu"}, -- Crown of the Wayward Protector
  [45640] = {boss = 1141, slot =  1, xtype = 18, account = 7, cost = 150, note = "-50%! BiS: Assa Fire Tree Cat BLDk OPT: FRDk"}, -- Crown of the Wayward Vanquisher
  [45653] = {boss = 1133, slot =  9, xtype = 18, account = 7, cost = 400, note = "BiS: Demo Dest SPri HPri DPri HPal OPT: Affl Retr PPal"}, -- Legplates of the Wayward Conqueror
  [45654] = {boss = 1133, slot =  9, xtype = 18, account = 7, cost = 400, note = "BiS: PWar Enha Elem Resto OPT: Fury"}, -- Legplates of the Wayward Protector
  [45655] = {boss = 1133, slot =  9, xtype = 18, account = 7, cost = 400, note = "BiS: Fire Tree OPT: Assa Comb Boom UHDk BLDk"}, -- Legplates of the Wayward Vanquisher
  [45641] = {boss = 1138, slot =  7, xtype = 18, account = 7, cost = 250, note = "BiS: Dest Retr HPal OPT: Demo Affl SPri HPri DPri PPal"}, -- Gauntlets of the Wayward Conqueror
  [45642] = {boss = 1138, slot =  7, xtype = 18, account = 7, cost = 250, note = "BiS: Fury Enha Resto OPT: Non"}, -- Gauntlets of the Wayward Protector
  [45643] = {boss = 1138, slot =  7, xtype = 18, account = 7, cost = 250, note = "BiS: Assa Tree Cat FRDk OPT: Comb Arca Fire Boom BLDk"}, -- Gauntlets of the Wayward Vanquisher
  [45656] = {boss = 1143, slot =  3, xtype = 18, account = 7, cost = 350, note = "BiS: Dest SPri HPri DPri Retr HPal PPal OPT: Non"}, -- Mantle of the Wayward Conqueror
  [45657] = {boss = 1143, slot =  3, xtype = 18, account = 7, cost = 350, note = "BiS: Fury PWar Enha Elem Resto OPT: Arms"}, -- Mantle of the Wayward Protector
  [45658] = {boss = 1143, slot =  3, xtype = 18, account = 7, cost = 350, note = "BiS: Arca Fire Boom Tree BLDk OPT: Assa Comb Cat FRDk UHDk"}, -- Mantle of the Wayward Vanquisher

  -- Flame Leviathan
  [45117] = {boss = 1132, slot =  7, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Constructor's Handwraps
  [45119] = {boss = 1132, slot =  8, xtype =  1, account = 7, cost = 150, note = "-50%! BiS: Non OPT: HPri Tree"}, -- Embrace of the Leviathan
  [45108] = {boss = 1132, slot =  6, xtype =  2, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Assa Comb Cat"}, -- Mechanist's Bindings
  [45118] = {boss = 1132, slot =  1, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Steamworker's Goggles
  [45109] = {boss = 1132, slot =  7, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Gloves of the Fiery Behemoth
  [45107] = {boss = 1132, slot =  1, xtype =  4, account = 7, cost = 150, note = "-50%! BiS: Non OPT: UHDk"}, -- Iron Riveted War Helm
  [45111] = {boss = 1132, slot =  6, xtype =  4, account = 7, cost = 200, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Mimiron's Inferno Couplings
  [45116] = {boss = 1132, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Resto HPri DPri HPal Tree"}, -- Freya's Choker of Warding
  [45113] = {boss = 1132, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: HPri DPri"}, -- Glowing Ring of Reclamation
  [45106] = {boss = 1132, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: FRDk"}, -- Strenght of the Automaton
  [45112] = {boss = 1132, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: PWar PPal BLDk"}, -- The Leviathan's Coil
  [45115] = {boss = 1132, slot = 15, xtype =  0, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Demo Dest Elem SPri Arca Fire Boom"}, -- Leviathan Fueling Manual
  [45114] = {boss = 1132, slot = 17, xtype =  0, account = 7, cost = 150, note = "BiS: Resto OPT: Non"}, -- Steamcaller's Totem
  [45110] = {boss = 1132, slot = 13, xtype =  6, account = 7, cost = 200, note = "-50%! BiS: Non OPT: PWar BLDk"}, -- Titanguard
  [45086] = {boss = 1132, slot = 17, xtype = 16, account = 7, cost =  75, note = "-50%! BiS: Non OPT: Assa Comb"}, -- Rising Sun
  -- Flame Leviathan Hard-Mode
  [45135] = {boss = 1132, slot = 10, xtype =  1, account = 7, cost = 400, note = "BiS: Demo Affl Dest SPri HPri DPri Arca Tree OPT: Elem Fire Boom"}, -- Boots of Fiery Resolution
  [45136] = {boss = 1132, slot =  3, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Shoulderpads of Dormant Energies
  [45134] = {boss = 1132, slot =  9, xtype =  4, account = 7, cost = 400, note = "BiS: Retr FRDk UHDk OPT: Arms"}, -- Plated Leggings of Ruination
  [45133] = {boss = 1132, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: Demo Affl Dest SPri Fire Boom OPT: Enha Elem Arca"}, -- Pendant of Fiery Havoc
  [45132] = {boss = 1132, slot = 14, xtype = 11, account = 7, cost = 400, note = "BiS: Enha Comb OPT: Non"}, -- Golden Saronite Dragon

  -- Ignis the Furnace Master
  [45186] = {boss = 1136, slot =  3, xtype =  1, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Demo Affl Arca Boom"}, -- Soot-Covered Mantle
  [45185] = {boss = 1136, slot =  8, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Flamewrought Cinch
  [45162] = {boss = 1136, slot = 10, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Flamestalker Boots
  [45164] = {boss = 1136, slot =  1, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Helm of the Furnace Master
  [45187] = {boss = 1136, slot =  6, xtype =  3, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Resto"}, -- Wristguards of the Firetender
  [45167] = {boss = 1136, slot =  5, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Lifeforge Breastplate
  [45161] = {boss = 1136, slot =  8, xtype =  4, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Fury FRDk"}, -- Girdle of Embers
  [45166] = {boss = 1136, slot = 10, xtype =  4, account = 7, cost = 200, note = "-50%! BiS: Non OPT: BLDk"}, -- Charred Saronite Greaves
  [45157] = {boss = 1136, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Fury Arms Enha Assa Comb MMHu SUHu Cat"}, -- Cindershard Ring
  [45168] = {boss = 1136, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Affl Resto HPal"}, -- Pyrelight Circle
  [45158] = {boss = 1136, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Heart of Iron
  [45169] = {boss = 1136, slot = 17, xtype =  0, account = 7, cost =  75, note = "-50%! BiS: Non OPT: Enha"}, -- Totem of the Dancing Flame
  [45165] = {boss = 1136, slot = 16, xtype =  7, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Worldcarver
  [45171] = {boss = 1136, slot = 16, xtype = 10, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Intensity
  [45170] = {boss = 1136, slot = 17, xtype = 15, account = 7, cost = 150, note = "BiS: DPri OPT: Non"}, -- Scepter of Creation

  -- Razorscale
  [45138] = {boss = 1139, slot =  4, xtype =  1, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Fury Arms FRDk"}, -- Drape of the Drakerider
  [45150] = {boss = 1139, slot =  1, xtype =  1, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Demo Affl Dest Arca Boom"}, -- Collar of the Wyrmhunter
  [45146] = {boss = 1139, slot =  6, xtype =  1, account = 7, cost = 100, note = "-50%! BiS: Non OPT: HPri"}, -- Shackles of the Odalisque
  [45149] = {boss = 1139, slot =  6, xtype =  2, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Tree"}, -- Bracers of the Broodmother
  [45141] = {boss = 1139, slot =  9, xtype =  2, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Cat"}, -- Proto-Hide Leggings
  [45151] = {boss = 1139, slot =  8, xtype =  3, account = 7, cost = 300, note = "BiS: Resto HPal OPT: Non"}, -- Belt of the Fallen Wyrm
  [45143] = {boss = 1139, slot =  9, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Saronite Mesh Legguards
  [45140] = {boss = 1139, slot =  3, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Razorscale Shoulderguards
  [45139] = {boss = 1139, slot =  8, xtype =  4, account = 7, cost = 300, note = "BiS: PWar OPT: PPal"}, -- Dragonslayer's Brace
  [45148] = {boss = 1139, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Demo Elem OPT: Affl Dest SPri Arca Fire Boom"}, -- Living Flame
  [45510] = {boss = 1139, slot = 17, xtype =  0, account = 7, cost =  75, note = "-50%! BiS: Non OPT: Retr"}, -- Libram of Discord
  [45144] = {boss = 1139, slot = 17, xtype =  0, account = 7, cost = 150, note = "BiS: BLDk OPT: Non"}, -- Sigil of Deflection
  [45142] = {boss = 1139, slot = 13, xtype =  6, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Comb"}, -- Remorse
  [45147] = {boss = 1139, slot = 14, xtype =  8, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Resto HPri HPal"}, -- Guiding Star
  [45137] = {boss = 1139, slot = 17, xtype = 14, account = 7, cost = 400, note = "BiS: PWar OPT: Non"}, -- Veranus' Bane

  -- XT-002 Deconstructor
  [45253] = {boss = 1142, slot =  3, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Mantle of Wavering Calm
  [45258] = {boss = 1142, slot = 10, xtype =  1, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Demo Affl Dest Elem SPri Arca Fire Boom"}, -- Sandals of Rash Temperament
  [45260] = {boss = 1142, slot = 10, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Boots of Hasty Revival
  [45259] = {boss = 1142, slot =  5, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Quartz-studded Harness
  [45249] = {boss = 1142, slot = 10, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Brass-lined Boots
  [45251] = {boss = 1142, slot =  3, xtype =  4, account = 7, cost = 175, note = "-50%! BiS: Non OPT: PWar BLDk"}, -- Shoulderplates of the Deconstructor
  [45252] = {boss = 1142, slot =  6, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Horologist's Wristguards
  [45248] = {boss = 1142, slot =  9, xtype =  4, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Arms FRDk"}, -- Clockwork Legplates
  [45250] = {boss = 1142, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: UHDk OPT: Retr"}, -- Crazed Construct Ring
  [45247] = {boss = 1142, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: PWar OPT: PPal"}, -- Signet of the Earthshaker
  [45254] = {boss = 1142, slot = 17, xtype =  0, account = 7, cost = 150, note = "BiS: UHDk OPT: FRDk"}, -- Sigil of the Vengeful Heart
  [45255] = {boss = 1142, slot = 17, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Thunderfall Totem
  [45246] = {boss = 1142, slot = 13, xtype =  5, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Assa"}, -- Golem-Shard Sticker
  [45256] = {boss = 1142, slot = 16, xtype = 10, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Twisted Visage
  [45257] = {boss = 1142, slot = 17, xtype = 15, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Quartz Crystal Wand
  -- XT-002 Deconstructor Hard-Mode
  [45446] = {boss = 1142, slot =  6, xtype =  1, account = 7, cost = 200, note = "BiS: Demo Affl Dest SPri HPri DPri Arca Fire Boom Tree OPT: Non"}, -- Grasps of Reason
  [45444] = {boss = 1142, slot =  7, xtype =  3, account = 7, cost = 250, note = "BiS: Arms MMHu SUHu OPT: FRDk"}, -- Gloves of the Steady Hand
  [45445] = {boss = 1142, slot =  5, xtype =  4, account = 7, cost = 450, note = "BiS: HPal OPT: Non"}, -- Breastplate of the Devoted
  [45443] = {boss = 1142, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: Resto DPri HPal OPT: HPri Tree"}, -- Charm of Meticulous Timing
  [45442] = {boss = 1142, slot = 13, xtype =  8, account = 7, cost = 400, note = "BiS: PWar PPal BLDk OPT: UHDk"}, -- Sorthalis, Hammer of the Watchers

  -- Assembly of Iron
  [45224] = {boss = 1140, slot =  4, xtype =  1, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Enha Assa Comb Retr MMHu SUHu Cat"}, -- Drape of the Lithe
  [45240] = {boss = 1140, slot =  5, xtype =  1, account = 7, cost = 450, note = "BiS: HPri OPT: Non"}, -- Raiments of the Iron Council
  [45238] = {boss = 1140, slot =  9, xtype =  1, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Arca"}, -- Overload Legwraps
  [45237] = {boss = 1140, slot =  5, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Phaelias Vestments of the Sprouting Seed
  [45232] = {boss = 1140, slot = 10, xtype =  2, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Cat"}, -- Runed Ironhide Boots
  [45227] = {boss = 1140, slot =  3, xtype =  3, account = 7, cost = 175, note = "-50%! BiS: Non OPT: MMHu SUHu"}, -- Iron-studded Mantle
  [45239] = {boss = 1140, slot =  7, xtype =  3, account = 7, cost = 125, note = "-50%! BiS: Non OPT: Elem"}, -- Runeshapers Gloves
  [45226] = {boss = 1140, slot =  1, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Ancient Iron Heaume
  [45225] = {boss = 1140, slot =  5, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Steelbreaker's Embrace
  [45228] = {boss = 1140, slot =  7, xtype =  4, account = 7, cost = 125, note = "-50%! BiS: Non OPT: PWar"}, -- Handguards of the Enclave
  [45193] = {boss = 1140, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: FRDk UHDk"}, -- Insurmountable Fervor
  [45236] = {boss = 1140, slot =  2, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Unblinking Eye
  [45235] = {boss = 1140, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Tree"}, -- Radiant Seal
  [45233] = {boss = 1140, slot = 16, xtype =  6, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Fury"}, -- Stormrune Edge
  [45234] = {boss = 1140, slot = 16, xtype = 10, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Rapture
  -- Assembly of Iron Hard-Mode
  [45242] = {boss = 1140, slot =  4, xtype =  1, account = 7, cost = 350, note = "BiS: Elem Fire Boom OPT: Demo Affl Dest SPri HPri Arca"}, -- Drape of Mortal Downfall
  [45245] = {boss = 1140, slot =  3, xtype =  2, account = 7, cost = 350, note = "BiS: Assa Comb Cat OPT: Fury Arms Enha MMHu"}, -- Shoulderpads of the Intruder
  [45244] = {boss = 1140, slot = 10, xtype =  3, account = 7, cost = 400, note = "BiS: MMHu SUHu OPT: Arms"}, -- Greaves of Swift Vengeance
  [45241] = {boss = 1140, slot =  8, xtype =  4, account = 7, cost = 300, note = "BiS: Arms FRDk UHDk OPT: Fury"}, -- Belt of Colossal Rage
  [45243] = {boss = 1140, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: HPri Arca Tree OPT: Affl Dest Dest SPri Fire"}, -- Sapphire Amulet of Renewal
  [45607] = {boss = 1140, slot = 13, xtype =  5, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Fang of Oblivion
  [45857] = {boss = 1140, slot =  0, xtype =  0, account = 7, cost =   0, note = "BiS: Algalon Key"}, -- Archivum Data Disc

  -- Kologarn
  [45272] = {boss = 1137, slot =  5, xtype =  1, account = 7, cost = 225, note = "-50%! BiS: Non OPT: Boom"}, -- Robes of the Umbral Brute
  [45275] = {boss = 1137, slot =  6, xtype =  1, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Demo Affl Dest Elem SPri Arca Fire Boom"}, -- Bracers of Unleashed Magic
  [45273] = {boss = 1137, slot =  7, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Handwraps of Plentiful Recovery
  [45265] = {boss = 1137, slot =  3, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Shoulderpads of the Monolith
  [45274] = {boss = 1137, slot =  9, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Leggings of the Stoneweaver
  [45264] = {boss = 1137, slot =  6, xtype =  4, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Fury Arms Retr FRDk UHDk"}, -- Decimator's Armguards
  [45269] = {boss = 1137, slot =  6, xtype =  4, account = 7, cost = 100, note = "-50%! BiS: Non OPT: HPal"}, -- Unfaltering Armguards
  [45268] = {boss = 1137, slot =  7, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Gloves of the Pythonic Guardian
  [45267] = {boss = 1137, slot =  9, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Saronite Plated Legguards
  [45262] = {boss = 1137, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: PWar"}, -- Necklace of Unerring Mettle
  [45263] = {boss = 1137, slot = 12, xtype =  0, account = 7, cost = 250, note = "-50%! BiS: Non OPT: Fury Retr UHDk"}, -- Wrathstone
  [45271] = {boss = 1137, slot = 15, xtype =  0, account = 7, cost = 400, note = "BiS: HPri Tree OPT: Demo Affl Dest SPri Arca Fire"}, -- Ironmender
  [45270] = {boss = 1137, slot = 17, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Idol of the Crying Wind
  [45266] = {boss = 1137, slot = 13, xtype =  6, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Comb"}, -- Malice
  [45261] = {boss = 1137, slot = 17, xtype = 14, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Giant's Bane

  -- Auriaya
  [45319] = {boss = 1131, slot =  4, xtype =  1, account = 7, cost = 175, note = "-50%! BiS: Non OPT: PWar PPal BLDk"}, -- Cloak of the Makers
  [45435] = {boss = 1131, slot =  1, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Cowl of the Absolute
  [45441] = {boss = 1131, slot = 10, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Sandals of the Ancient Keeper
  [45439] = {boss = 1131, slot =  1, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Unwavering Stare
  [45325] = {boss = 1131, slot =  7, xtype =  2, account = 7, cost = 125, note = "-50%! BiS: Non OPT: Arms MMHu SUHu"}, -- Gloves of the Stonereaper
  [45440] = {boss = 1131, slot =  3, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Amice of the Stoic Watch
  [45320] = {boss = 1131, slot =  3, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Shoulderplates of the Eternal
  [45334] = {boss = 1131, slot =  5, xtype =  4, account = 7, cost = 225, note = "-50%! BiS: Non OPT: PWar"}, -- Unbreakable Chestguard
  [45434] = {boss = 1131, slot = 10, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Greaves of the Rockmender
  [45326] = {boss = 1131, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: PWar BLDk"}, -- Platinum Band of the Aesir
  [45438] = {boss = 1131, slot = 11, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Ring of the Faithful Servant
  [45436] = {boss = 1131, slot = 17, xtype =  0, account = 7, cost = 150, note = "BiS: HPal OPT: Non"}, -- Libram of the Resolute
  [45437] = {boss = 1131, slot = 14, xtype =  6, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Dest Arca Fire"}, -- Runescribed Blade
  [45315] = {boss = 1131, slot = 13, xtype =  8, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Stonerender
  [45327] = {boss = 1131, slot = 17, xtype = 12, account = 7, cost = 200, note = "-50%! BiS: Non OPT: MMHu SUHu"}, -- Sirens Cry

  -- Freya
  [45483] = {boss = 1133, slot = 10, xtype =  1, account = 7, cost = 200, note = "-50%! BiS: Non OPT: HPri DPri Tree"}, -- Boots of the Servant
  [45482] = {boss = 1133, slot =  9, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Leggins of the Lifetender
  [45481] = {boss = 1133, slot =  7, xtype =  4, account = 7, cost = 250, note = "BiS: UHDk OPT: Non"}, -- Gauntlets of Ruthless Reprisal
  [45480] = {boss = 1133, slot =  2, xtype =  0, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Enha Assa Comb MMHu SUHu Cat"}, -- Nymph Heart Charm
  [45479] = {boss = 1133, slot = 16, xtype = 10, account = 7, cost = 200, note = "-50%! BiS: Non OPT: DPri Tree"}, -- The Lifebinder
  -- Freya Hard-Mode
  [45486] = {boss = 1133, slot =  4, xtype =  1, account = 7, cost = 350, note = "BiS: Resto DPri HPal OPT: Tree"}, -- Drape of the Sullen Goddess
  [45488] = {boss = 1133, slot =  9, xtype =  1, account = 7, cost = 400, note = "BiS: Affl Arca Boom OPT: Demo"}, -- Leggings of the Enslaved Idol
  [45487] = {boss = 1133, slot =  7, xtype =  4, account = 7, cost = 250, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Handguards of Revitalization
  [45485] = {boss = 1133, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Bronze Pendant of the Vanir
  [45484] = {boss = 1133, slot = 13, xtype =  5, account = 7, cost = 400, note = "BiS: Assa Comb OPT: Non"}, -- Bladetwister
  [45613] = {boss = 1133, slot = 16, xtype = 10, account = 7, cost = 400, note = "BiS: MMHu SUHu Cat OPT: Non"}, -- Dreambinder

  -- Hodir
  [45453] = {boss = 1135, slot =  5, xtype =  2, account = 7, cost = 225, note = "-50%! BiS: Non OPT: Cat"}, -- Winter's Icy Embrace
  [45454] = {boss = 1135, slot =  6, xtype =  3, account = 7, cost = 100, note = "-50%! BiS: Non OPT: Enha MMHu SUHu"}, -- Frost-bound Chain Bracers
  [45452] = {boss = 1135, slot =  9, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Frostplate Greaves
  [45451] = {boss = 1135, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Demo Affl Dest Enha Elem SPri Arca Fire Boom"}, -- Frozen Loop
  [45450] = {boss = 1135, slot = 15, xtype = 17, account = 7, cost = 200, note = "-50%! BiS: Non OPT: PWar PPal"}, -- Northern Barrier
  -- Hodir Hard-Mode
  [45461] = {boss = 1135, slot =  4, xtype =  1, account = 7, cost = 350, note = "BiS: Enha Assa Comb Retr OPT: Fury Arms MMHu SUHu Cat FRDk UHDk"}, -- Drape of Icy Intent
  [45462] = {boss = 1135, slot =  7, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Gloves of the Frozen Glade
  [45460] = {boss = 1135, slot =  6, xtype =  3, account = 7, cost = 200, note = "BiS: Enha Elem Resto HPal OPT: Non"}, -- Bindings of Winter Gale
  [45459] = {boss = 1135, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: Fury Arms OPT: Non"}, -- Frigid Strength of Hodir
  [45612] = {boss = 1135, slot = 14, xtype =  8, account = 7, cost = 400, note = "BiS: Elem Resto HPri DPri HPal Tree OPT: SPri"}, -- Constellus
  [45457] = {boss = 1135, slot = 16, xtype = 10, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Demo Dest HPri DPri Boom"}, -- Staff of Endless Winter

  -- Mimiron
  [45493] = {boss = 1138, slot =  4, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Asimov's Drape
  [45492] = {boss = 1138, slot =  3, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Malleable Steelweave Mantle
  [45491] = {boss = 1138, slot =  8, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Waistguard of the Creator
  [45490] = {boss = 1138, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: HPal OPT: Elem HPri DPri"}, -- Pandora's Plea
  [45489] = {boss = 1138, slot = 14, xtype = 11, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Enha Comb"}, -- Insanity's Grip
  -- Mimiron Hard-Mode
  [45496] = {boss = 1138, slot =  4, xtype =  1, account = 7, cost = 350, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Titanskin Cloak
  [45497] = {boss = 1138, slot =  1, xtype =  1, account = 7, cost = 300, note = "BiS: Demo Affl Dest HPri Arca Boom OPT: Non"}, -- Crown of Luminescence
  [45663] = {boss = 1138, slot =  6, xtype =  4, account = 7, cost = 200, note = "BiS: Arms FRDk UHDk OPT: Non"}, -- Armbands of Bedlam
  [45495] = {boss = 1138, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: Demo Affl Dest Elem SPri HPri Arca Fire Boom Tree OPT: Non"}, -- Conductive Seal
  [45494] = {boss = 1138, slot = 15, xtype = 11, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Delirium's Touch
  [45620] = {boss = 1138, slot = 14, xtype =  5, account = 7, cost = 400, note = "BiS: Demo Affl Dest SPri Arca Fire Boom OPT: Non"}, -- Starshards Edge

  -- Thorim
  [45468] = {boss = 1141, slot =  9, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Leggings of Lost Love
  [45467] = {boss = 1141, slot =  8, xtype =  3, account = 7, cost = 300, note = "BiS: MMHu OPT: Non"}, -- Belt of the Betrayed
  [45469] = {boss = 1141, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Fury Arms UHDk"}, -- Sif's Promise
  [45466] = {boss = 1141, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Affl Dest Resto SPri Arca Fire Boom OPT: Demo"}, -- Scale of Fates
  [45463] = {boss = 1141, slot = 13, xtype =  8, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Enha PPal FRDk UHDk"}, -- Vulmir, the Northern Tempest
  -- Thorim Hard-Mode
  [45473] = {boss = 1141, slot =  5, xtype =  2, account = 7, cost = 450, note = "BiS: Assa Comb MMHu SUHu Cat OPT: Non"}, -- Embrace of the Gladiator
  [45474] = {boss = 1141, slot =  3, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Pauldrons of the Combatant
  [45472] = {boss = 1141, slot =  1, xtype =  4, account = 7, cost = 300, note = "BiS: FRDk UHDk OPT: Fury Arms"}, -- Warhelm of the Champion
  [45471] = {boss = 1141, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: PWar PPal BLDk OPT: Non"}, -- Fate's Clutch
  [45570] = {boss = 1141, slot = 17, xtype = 13, account = 7, cost = 400, note = "BiS: MMHu SUHu Assa OPT: Comb"}, -- Skyforge Crossbow
  [45470] = {boss = 1141, slot = 15, xtype = 17, account = 7, cost = 400, note = "BiS: Elem Resto HPal OPT: Non"}, -- Wisdom's Hold

  -- General Vezax
  [45514] = {boss = 1134, slot =  3, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Mantle of the Unknowing 
  [45508] = {boss = 1134, slot =  8, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Belt of the Darkspeaker
  [45512] = {boss = 1134, slot =  7, xtype =  2, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Grips of the Unbroken
  [45504] = {boss = 1134, slot =  9, xtype =  3, account = 7, cost = 200, note = "-50%! BiS: Non OPT: MMHu SUHu"}, -- Darkcore Leggings
  [45513] = {boss = 1134, slot = 10, xtype =  3, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Boots of the Forgotten Depths
  [45502] = {boss = 1134, slot =  1, xtype =  4, account = 7, cost = 150, note = "-50%! BiS: Non OPT: PWar BLDk"}, -- Helm of the Faceless
  [45505] = {boss = 1134, slot =  8, xtype =  4, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Belt of Clinging Hope
  [45501] = {boss = 1134, slot = 10, xtype =  4, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Fury Arms FRDk UHDk"}, -- Boots of the Underdweller
  [45503] = {boss = 1134, slot = 11, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Metallic Loop of the Sufferer
  [45515] = {boss = 1134, slot = 11, xtype =  0, account = 7, cost = 175, note = "-50%! BiS: Non OPT: Demo Dest Elem SPri Arca Fire Boom"}, -- Ring of the Vacant Eye
  [45507] = {boss = 1134, slot = 12, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- The General's Heart
  [45509] = {boss = 1134, slot = 17, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Idol of the Corruptor
  [45145] = {boss = 1134, slot = 17, xtype =  0, account = 7, cost = 150, note = "BiS: PPal OPT: Non"}, -- Libram of the Sacred Shield
  [45498] = {boss = 1134, slot = 16, xtype =  9, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Arms MMHu SUHu Cat"}, -- Lotrafen, Spear of the Damned
  [45511] = {boss = 1134, slot = 17, xtype = 15, account = 7, cost = 150, note = "BiS: HPri OPT: Demo Affl Dest SPri Arca Fire"}, -- Scepter of Lost Souls
  -- General Vezax Hard-Mode
  [45520] = {boss = 1134, slot =  7, xtype =  1, account = 7, cost = 250, note = "BiS: DPri OPT: Boom"}, -- Handwraps of the Vigilant
  [45519] = {boss = 1134, slot =  5, xtype =  2, account = 7, cost = 450, note = "BiS: Boom Tree OPT: Non"}, -- Vestments of the Blind Denizen
  [45517] = {boss = 1134, slot =  2, xtype =  0, account = 7, cost = 300, note = "BiS: Enha Assa Comb Retr MMHu SUHu Cat FRDk OPT: Fury Arms"}, -- Pendulum of Infinity
  [45518] = {boss = 1134, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Demo Affl Dest Elem SPri Arca Fire Boom OPT: Non"}, -- Flare of the Heavens
  [45516] = {boss = 1134, slot = 16, xtype =  6, account = 7, cost = 400, note = "BiS: Fury Retr OPT: Non"}, -- Voldrethar, Dark Blade of Oblivion

  -- Yogg-Saron
  [45529] = {boss = 1143, slot =  4, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Shawl of Haunted Memories
  [45532] = {boss = 1143, slot =  1, xtype =  1, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Cowl of Dark Whispers
  [45523] = {boss = 1143, slot =  1, xtype =  2, account = 7, cost = 150, note = "-50%! BiS: Non OPT: Assa Comb"}, -- Garona's Guise
  [45524] = {boss = 1143, slot =  5, xtype =  3, account = 7, cost = 225, note = "-50%! BiS: Non OPT: Enha"}, -- Chestguard of Insidious Intent
  [45531] = {boss = 1143, slot =  5, xtype =  3, account = 7, cost = 225, note = "-50%! BiS: Non OPT: Resto HPal"}, -- Chestguard of the Fallen God
  [45525] = {boss = 1143, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: Retr OPT: Assa Comb"}, -- Godbane Signet
  [45530] = {boss = 1143, slot = 11, xtype =  0, account = 7, cost =   0, note = "BiS: Non OPT: Non"}, -- Sanity's Bond
  [45522] = {boss = 1143, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Retr OPT: Fury Enha Assa Comb MMHu SUHu Cat UHDk"}, -- Blood of the Old God
  [45527] = {boss = 1143, slot = 14, xtype =  5, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Demo Affl Elem SPri Arca Fire Boom"}, -- Soulscribe
  [45521] = {boss = 1143, slot = 16, xtype =  8, account = 7, cost = 200, note = "-50%! BiS: Non OPT: Fury Retr BLDk"}, -- Earthshaper
  -- Yogg-Saron Hard-Mode
  [45537] = {boss = 1143, slot = 10, xtype =  1, account = 7, cost = 400, note = "BiS: Elem Fire HPal Boom OPT: Demo Affl Dest SPri Arca Tree"}, -- Treads of the False Oracle
  [45536] = {boss = 1143, slot =  9, xtype =  2, account = 7, cost = 400, note = "BiS: Fury Arms Assa Comb MMHu SUHu Cat OPT: Non"}, -- Legguards of Cunning Deception
  [45534] = {boss = 1143, slot = 11, xtype =  0, account = 7, cost = 350, note = "BiS: Fury Arms FRDk UHDk OPT: Cat"}, -- Seal of the Betrayed King
  [45535] = {boss = 1143, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Resto HPri DPri Tree OPT: Non"}, -- Show of Faith
  [45533] = {boss = 1143, slot = 16, xtype =  9, account = 7, cost = 400, note = "BiS: Arms BLDk OPT: Retr MMHu SUHu Cat"}, -- Dark Edge of Deptravity
  [45693] = {boss = 1143, slot =  0, xtype =  0, account = 7, cost =  10, note = "BiS: Non OPT: Non"}, -- Mimiron's Head

  -- Algalon the Observer
  [45665] = {boss = 1130, slot =  7, xtype =  1, account = 7, cost = 250, note = "BiS: Demo Affl Elem SPri HPri Arca Fire Boom OPT: Non"}, -- Pharos Gloves
  [45619] = {boss = 1130, slot =  8, xtype =  1, account = 7, cost = 300, note = "BiS: Demo Affl Dest SPri HPri DPri Arca Fire OPT: Non"}, -- Starwatcher's Binding
  [45611] = {boss = 1130, slot =  6, xtype =  2, account = 7, cost = 200, note = "BiS: Fury Assa Retr OPT: Non"}, -- Solar Bindings
  [45616] = {boss = 1130, slot =  8, xtype =  2, account = 7, cost = 300, note = "BiS: Elem Boom Tree OPT: Non"}, -- Star-beaded Clutch
  [45610] = {boss = 1130, slot =  1, xtype =  3, account = 7, cost = 300, note = "BiS: Enha MMHu SUHu OPT: Non"}, -- Boundless Gaze
  [45615] = {boss = 1130, slot = 10, xtype =  3, account = 7, cost = 400, note = "BiS: Resto OPT: Non"}, -- Planewalker Treads
  [45594] = {boss = 1130, slot =  9, xtype =  4, account = 7, cost = 400, note = "BiS: PWar BLDk OPT: Non"}, -- Legplates of the Endless Void
  [45599] = {boss = 1130, slot = 10, xtype =  4, account = 7, cost = 400, note = "BiS: Fury Arms Retr FRDk UHDk OPT: Non"}, -- Sabatons of Lifeless Night
  [45609] = {boss = 1130, slot = 12, xtype =  0, account = 7, cost = 500, note = "BiS: Fury Enha Assa Comb Retr Cat UHDk OPT: Arms FRDk"}, -- Comet's Trail
  [45587] = {boss = 1130, slot = 15, xtype = 17, account = 7, cost = 400, note = "BiS: PWar PPal OPT: Non"}, -- Bulwark of Algalon
  [45617] = {boss = 1130, slot = 15, xtype =  0, account = 7, cost = 400, note = "BiS: Demo Affl Dest SPri Arca Fire Boom OPT: Non"}, -- Cosmos
  [46053] = {boss = 1130, slot =  0, xtype =  0, account = 7, cost = 400, note = "BiS: Fury Arms Demo Affl Dest Enha Resto Assa Comb SPri HPri DPri Arca HPal MMHu SUHu Tree Cat FRDk UHDk OPT: Elem Fire Boom"}, -- Reply-Code Alpha

}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
