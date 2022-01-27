local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Trash
  [ 32526] = {boss =    1, slot = 11, xtype =  0, account = 6, cost =  220, note = "BIS: MPa OPT: Arms Fury MSh"}, -- Band of Devastation
  [ 32527] = {boss =    1, slot = 11, xtype =  0, account = 6, cost =  220, note = "BIS: Arcane RSh RDr RPr WL OPT: Fire Frost"}, -- Ring of Ancient Knowledge
  [ 32528] = {boss =    1, slot = 11, xtype =  0, account = 6, cost =  220, note = "BIS: HDr HPa HPr HSh OPT: RPr"}, -- Blessed Band of Karabor
  [ 32589] = {boss =    1, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: Destro Fire"}, -- Hellfire-Encased Pendant
  [ 32590] = {boss =    1, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: RPr WL"}, -- Nethervoid Cloak
  [ 32591] = {boss =    1, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: Arms BMHu Fury MDr MSh MSHu OPT: TWa Ro"}, -- Choker of Serrated Blades
  [ 32592] = {boss =    1, slot =  5, xtype =  3, account = 6, cost =  270, note = "OPT: RSh"}, -- Chestguard of Relentless Storms
  [ 32593] = {boss =    1, slot = 10, xtype =  2, account = 6, cost =  200, note = "BIS: TDr"}, -- Treads of the Den Mother
  [ 32606] = {boss =    1, slot =  8, xtype =  4, account = 6, cost =   75, note = ""}, -- Girdle of the Lightbearer
  [ 32608] = {boss =    1, slot =  7, xtype =  4, account = 6, cost =  180, note = "OPT: Wa"}, -- Pillager's Gauntlets
  [ 32609] = {boss =    1, slot = 10, xtype =  1, account = 6, cost =  200, note = "BIS: HDr HPr HSh OPT: HPa"}, -- Boots of the Divine Light
  [ 32943] = {boss =    1, slot = 13, xtype =  8, account = 6, cost =  405, note = "OPT: TWa"}, -- Swiftsteel Bludgeon
  [ 34011] = {boss =    1, slot = 15, xtype = 17, account = 6, cost =  405, note = "OPT: TPa"}, -- Illidari Runeshield
  [ 34012] = {boss =    1, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: HPa OPT: HDr HSh"}, -- Shroud of the Final Stand

  -- Trash/Bosses
  [ 32736] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "OPT: MPa"}, -- Plans: Swiftsteel Bracers
  [ 32737] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  110, note = "OPT: Arms Fury"}, -- Plans: Swiftsteel Shoulders
  [ 32738] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "OPT: HPa"}, -- Plans: Dawnsteel Bracers
  [ 32739] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =   60, note = ""}, -- Plans: Dawnsteel Shoulders
  [ 32744] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "BIS: HDr HSh"}, -- Pattern: Bracers of Renewed Life
  [ 32745] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  110, note = "OPT: HDr"}, -- Pattern: Shoulderpads of Renewed Life
  [ 32746] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "OPT: BMHu MDr MSHu TDr Ro"}, -- Pattern: Swiftstrike Bracers
  [ 32747] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  125, note = "BIS: MPa MSh OPT: BMHu MSHu Ro"}, -- Pattern: Swiftstrike Shoulders
  [ 32748] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "BIS: MPa MSh OPT: Arms BMHu Fury MSHu"}, -- Pattern: Bindings of Lightning Reflexes
  [ 32749] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  125, note = "BIS: MSh OPT: BMHu MSHu"}, -- Pattern: Shoulders of Lightning Reflexes
  [ 32750] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "BIS: HSh"}, -- Pattern: Living Earth Bindings
  [ 32751] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  110, note = "OPT: HSh"}, -- Pattern: Living Earth Shoulders
  [ 32752] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "BIS: HDr HPr HSh"}, -- Pattern: Swiftheal Wraps
  [ 32753] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  125, note = "BIS: HPr OPT: HDr"}, -- Pattern: Swiftheal Mantle
  [ 32754] = {boss =    5, slot =  6, xtype = 19, account = 6, cost =    0, note = "BIS: RSh Fire Frost RDr RPr WL OPT: Arcane"}, -- Pattern: Bracers of Nimble Thought
  [ 32755] = {boss =    5, slot =  3, xtype = 19, account = 6, cost =  125, note = "BIS: RSh OPT: RDr RPr WL Ma"}, -- Pattern: Mantle of Nimble Thought

  -- Naj'entus
  [ 32232] = {boss =  601, slot =  6, xtype =  4, account = 6, cost =  150, note = "BIS: TPa TWa"}, -- Eternium Shell Bracers
  [ 32234] = {boss =  601, slot =  7, xtype =  3, account = 6, cost =  200, note = "BIS: MSh"}, -- Fists of Mukoa
  [ 32236] = {boss =  601, slot = 13, xtype =  7, account = 6, cost =  405, note = "OPT: MSh"}, -- Rising Tide
  [ 32237] = {boss =  601, slot = 14, xtype =  5, account = 6, cost =  450, note = "BIS: RDr OPT: RSh RPr WL Ma"}, -- The Maelstrom's Fury
  [ 32238] = {boss =  601, slot = 11, xtype =  0, account = 6, cost =  200, note = "BIS: HPa OPT: HSh"}, -- Ring of Calming Waves
  [ 32239] = {boss =  601, slot = 10, xtype =  1, account = 6, cost =  200, note = "BIS: RSh RDr RPr WL Ma"}, -- Slippers of the Seacaller
  [ 32240] = {boss =  601, slot =  1, xtype =  2, account = 6, cost =  225, note = "OPT: HDr"}, -- Guise of the Tidal Lurker
  [ 32241] = {boss =  601, slot =  1, xtype =  3, account = 6, cost =  225, note = "OPT: HPa HSh"}, -- Helm of Soothing Currents
  [ 32242] = {boss =  601, slot = 10, xtype =  3, account = 6, cost =  200, note = "BIS: RSh"}, -- Boots of Oceanic Fury
  [ 32243] = {boss =  601, slot = 10, xtype =  4, account = 6, cost =  200, note = "BIS: HPa"}, -- Pearl Inlaid Boots
  [ 32245] = {boss =  601, slot = 10, xtype =  4, account = 6, cost =  200, note = "BIS: TPa"}, -- Tide-stomper's Greaves
  [ 32247] = {boss =  601, slot = 11, xtype =  0, account = 6, cost =  200, note = "BIS: Fire Frost WL OPT: RSh RDr RPr"}, -- Ring of Captured Storms
  [ 32248] = {boss =  601, slot = 16, xtype =  9, account = 6, cost =  600, note = "BIS: Hu"}, -- Halberd of Desolation
  [ 32377] = {boss =  601, slot =  3, xtype =  2, account = 6, cost =  225, note = "OPT: MSh Ro"}, -- Mantle of Darkness

  -- Supremus
  [ 32250] = {boss =  602, slot =  3, xtype =  4, account = 6, cost =  225, note = "OPT: TPa TWa"}, -- Pauldrons of Abyssal Fury
  [ 32251] = {boss =  602, slot =  6, xtype =  3, account = 6, cost =   75, note = ""}, -- Wraps of Precise Flight
  [ 32252] = {boss =  602, slot =  5, xtype =  2, account = 6, cost =  300, note = "BIS: MDr OPT: MSh TDr Ro"}, -- Nether Shadow Tunic
  [ 32253] = {boss =  602, slot = 17, xtype = 13, account = 6, cost =  150, note = "BIS: TWa"}, -- Legionkiller
  [ 32254] = {boss =  602, slot = 13, xtype =  7, account = 6, cost =  450, note = "BIS: TWa"}, -- The Brutalizer
  [ 32255] = {boss =  602, slot = 15, xtype = 17, account = 6, cost =  450, note = "BIS: HPa HSh"}, -- Felstone Bulwark
  [ 32256] = {boss =  602, slot =  8, xtype =  1, account = 6, cost =  150, note = "BIS: Arcane RPr WL OPT: RSh Fire Frost RDr"}, -- Waistwrap of Infinity
  [ 32257] = {boss =  602, slot = 17, xtype =  0, account = 6, cost =  150, note = "BIS: TDr OPT: MDr"}, -- Idol of the White Stag
  [ 32258] = {boss =  602, slot =  8, xtype =  3, account = 6, cost =  150, note = "BIS: HSh"}, -- Naturalist's Preserving Cinch
  [ 32259] = {boss =  602, slot =  6, xtype =  3, account = 6, cost =  135, note = "OPT: RSh"}, -- Bands of the Coming Storm
  [ 32260] = {boss =  602, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: Arms Fury MDr MPa MSh Ro OPT: BMHu"}, -- Choker of Endless Nightmares
  [ 32261] = {boss =  602, slot = 11, xtype =  0, account = 6, cost =  200, note = "BIS: TWa OPT: TPa"}, -- Band of the Abyssal Lord
  [ 32262] = {boss =  602, slot = 13, xtype =  8, account = 6, cost =  450, note = "BIS: MSh"}, -- Syphon of the Nathrezim

  -- Akama
  [ 32263] = {boss =  603, slot =  9, xtype =  4, account = 6, cost =  300, note = "BIS: TPa TWa"}, -- Praetorian's Legguards
  [ 32264] = {boss =  603, slot =  3, xtype =  3, account = 6, cost =  225, note = "OPT: BMHu MSHu"}, -- Shoulders of the Hidden Predator
  [ 32265] = {boss =  603, slot =  8, xtype =  2, account = 6, cost =  135, note = "OPT: MDr MSh Ro"}, -- Shadow-walker's Cord
  [ 32266] = {boss =  603, slot = 11, xtype =  0, account = 6, cost =  200, note = "BIS: TDr TWa OPT: BMHu MDr MSh Ro"}, -- Ring of Deceitful Intent
  [ 32268] = {boss =  603, slot = 10, xtype =  4, account = 6, cost =  200, note = "BIS: TWa"}, -- Myrmidon's Treads
  [ 32270] = {boss =  603, slot =  6, xtype =  1, account = 6, cost =  135, note = "OPT: RDr RPr WL Ma"}, -- Focused Mana Bindings
  [ 32271] = {boss =  603, slot =  9, xtype =  2, account = 6, cost =  270, note = "OPT: HDr HPa HSh"}, -- Kilt of Immortal Nature
  [ 32273] = {boss =  603, slot =  3, xtype =  1, account = 6, cost =  225, note = "OPT: HDr"}, -- Amice of Brilliant Light
  [ 32275] = {boss =  603, slot =  7, xtype =  3, account = 6, cost =  180, note = "OPT: RSh HSh"}, -- Spiritwalker Gauntlets
  [ 32276] = {boss =  603, slot =  8, xtype =  3, account = 6, cost =  150, note = "BIS: RSh"}, -- Flashfire Girdle
  [ 32278] = {boss =  603, slot =  7, xtype =  4, account = 6, cost =  200, note = "BIS: Arms Fury"}, -- Grips of Silent Justice
  [ 32279] = {boss =  603, slot =  6, xtype =  4, account = 6, cost =  150, note = "BIS: TPa"}, -- The Seeker's Wristguards
  [ 32361] = {boss =  603, slot = 15, xtype =  0, account = 6, cost =  405, note = "OPT: Arcane RDr RPr WL"}, -- Blind-Seers Icon
  [ 32513] = {boss =  603, slot =  6, xtype =  1, account = 6, cost =  135, note = "OPT: HDr"}, -- Wristbands of Divine Influence

  -- Gorefiend
  [ 32280] = {boss =  604, slot =  7, xtype =  4, account = 6, cost =  200, note = "BIS: TWa"}, -- Gauntlets of Enforcement
  [ 32323] = {boss =  604, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: Arms BMHu Fury MDr MSh MSHu Ro OPT: TDr"}, -- Shadowmoon Destroyer's Drape
  [ 32324] = {boss =  604, slot =  6, xtype =  2, account = 6, cost =  150, note = "BIS: MDr MSh TDr Hu Ro OPT: Arms Fury"}, -- Insidious Bands
  [ 32325] = {boss =  604, slot = 17, xtype = 14, account = 6, cost =   75, note = ""}, -- Rifle of the Stoic Guardian
  [ 32326] = {boss =  604, slot = 17, xtype = 16, account = 6, cost =  150, note = "BIS: Arms Fury OPT: Ro"}, -- Twisted Blades of Zarak
  [ 32327] = {boss =  604, slot =  5, xtype =  1, account = 6, cost =  270, note = "OPT: RPr WL"}, -- Robe of the Shadow Council
  [ 32328] = {boss =  604, slot =  7, xtype =  2, account = 6, cost =  200, note = "BIS: HDr HSh OPT: RSh HPa"}, -- Botanist's Gloves of Growth
  [ 32329] = {boss =  604, slot =  1, xtype =  1, account = 6, cost =  250, note = "BIS: HDr OPT: HPr"}, -- Cowl of Benevolence
  [ 32330] = {boss =  604, slot = 17, xtype =  0, account = 6, cost =  150, note = "BIS: RSh"}, -- Totem of Ancestral Guidance
  [ 32348] = {boss =  604, slot = 16, xtype =  7, account = 6, cost =  600, note = "BIS: Arms"}, -- Soul Cleaver
  [ 32510] = {boss =  604, slot = 10, xtype =  3, account = 6, cost =  200, note = "BIS: MSh"}, -- Softstep Boots of Tracking
  [ 32512] = {boss =  604, slot =  8, xtype =  4, account = 6, cost =   75, note = ""}, -- Girdle of Lordaeron's Fallen

  -- Bloodboil
  [ 32269] = {boss =  605, slot = 13, xtype =  5, account = 6, cost =  225, note = ""}, -- Messenger of Fate
  [ 32333] = {boss =  605, slot =  8, xtype =  4, account = 6, cost =  150, note = "BIS: TWa OPT: TPa"}, -- Girdle of Stability
  [ 32334] = {boss =  605, slot =  5, xtype =  3, account = 6, cost =  150, note = ""}, -- Vest of Mounting Assault
  [ 32335] = {boss =  605, slot = 11, xtype =  0, account = 6, cost =  200, note = "BIS: Arms Fury OPT: MDr MPa MSh"}, -- Unstoppable Aggressor's Ring
  [ 32337] = {boss =  605, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: HDr OPT: HPa HPr"}, -- Shroud of Forgiveness
  [ 32338] = {boss =  605, slot =  3, xtype =  1, account = 6, cost =  225, note = "OPT: RDr RPr WL Ma"}, -- Blood-cursed Shoulderpads
  [ 32339] = {boss =  605, slot =  8, xtype =  2, account = 6, cost =  150, note = "BIS: HDr HSh"}, -- Belt of Primal Majesty
  [ 32340] = {boss =  605, slot =  5, xtype =  1, account = 6, cost =  150, note = ""}, -- Garments of Temperance
  [ 32341] = {boss =  605, slot =  9, xtype =  4, account = 6, cost =  300, note = "BIS: Arms Fury"}, -- Leggings of Divine Retribution
  [ 32342] = {boss =  605, slot =  8, xtype =  4, account = 6, cost =  150, note = "BIS: TPa OPT: TWa"}, -- Girdle of Mighty Resolve
  [ 32343] = {boss =  605, slot = 17, xtype = 15, account = 6, cost =  135, note = "OPT: RPr WL Ma"}, -- Wand of Prismatic Focus
  [ 32344] = {boss =  605, slot = 16, xtype = 10, account = 6, cost =  540, note = "OPT: HDr HPr"}, -- Staff of Immaculate Recovery
  [ 32501] = {boss =  605, slot = 12, xtype =  0, account = 6, cost =  300, note = "BIS: TDr TPa"}, -- Shadowmoon Insignia

  -- Reliquary
  [ 32332] = {boss =  606, slot = 16, xtype =  8, account = 6, cost =  600, note = "BIS: MPa"}, -- Torch of the Damned
  [ 32345] = {boss =  606, slot = 10, xtype =  4, account = 6, cost =  200, note = "BIS: Wa OPT: MPa"}, -- Dreadboots of the Legion
  [ 32346] = {boss =  606, slot =  8, xtype =  3, account = 6, cost =  150, note = "BIS: BMHu OPT: MSh MSHu"}, -- Boneweave Girdle
  [ 32347] = {boss =  606, slot =  7, xtype =  2, account = 6, cost =  200, note = "BIS: MPa MSh OPT: MDr Ro"}, -- Grips of Damnation
  [ 32349] = {boss =  606, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: Frost RPr WL OPT: Arcane RSh Fire RDr"}, -- Translucent Spellthread Necklace
  [ 32350] = {boss =  606, slot = 15, xtype =  0, account = 6, cost =  405, note = "OPT: HDr HPr"}, -- Touch of Inspiration
  [ 32351] = {boss =  606, slot =  6, xtype =  2, account = 6, cost =  135, note = "OPT: RDr"}, -- Elunite Empowered Bracers
  [ 32352] = {boss =  606, slot = 10, xtype =  2, account = 6, cost =  200, note = "BIS: RSh OPT: RDr"}, -- Naturewarden's Treads
  [ 32353] = {boss =  606, slot =  7, xtype =  1, account = 6, cost =  180, note = "OPT: HDr HPr"}, -- Gloves of Unfailing Faith
  [ 32354] = {boss =  606, slot =  1, xtype =  4, account = 6, cost =  225, note = "OPT: HPa"}, -- Crown of Empowered Fate
  [ 32362] = {boss =  606, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: TPa TWa OPT: TDr"}, -- Pendant of Titans
  [ 32363] = {boss =  606, slot = 17, xtype = 15, account = 6, cost =  150, note = "BIS: HPr"}, -- Naaru-Blessed Life Rod
  [ 32517] = {boss =  606, slot =  3, xtype =  3, account = 6, cost =  125, note = ""}, -- The Wavemender's Mantle

  -- Shahraz
  [ 31101] = {boss =  607, slot =  3, xtype = 18, account = 6, cost =  250, note = "BIS: HPa TPa WL Pr OPT: MPa"}, -- Pauldrons of the Forgotten Conqueror
  [ 31102] = {boss =  607, slot =  3, xtype = 18, account = 6, cost =  250, note = "BIS: Fire Frost Dr Ro OPT: Arcane"}, -- Pauldrons of the Forgotten Vanquisher
  [ 31103] = {boss =  607, slot =  3, xtype = 18, account = 6, cost =  250, note = "BIS: RSh HSh Hu Wa"}, -- Pauldrons of the Forgotten Protector
  [ 32365] = {boss =  607, slot =  5, xtype =  4, account = 6, cost =  150, note = ""}, -- Heartshatter Breastplate
  [ 32366] = {boss =  607, slot = 10, xtype =  2, account = 6, cost =  200, note = "BIS: MDr MPa MSh TDr Hu Ro"}, -- Shadowmaster's Boots
  [ 32367] = {boss =  607, slot =  9, xtype =  1, account = 6, cost =  300, note = "BIS: WL OPT: RDr RPr TPa Ma"}, -- Leggings of Devastation
  [ 32368] = {boss =  607, slot = 17, xtype =  0, account = 6, cost =  150, note = "BIS: TPa"}, -- Tome of the Lightbringer
  [ 32369] = {boss =  607, slot = 13, xtype =  6, account = 6, cost =  450, note = "BIS: TWa Ro OPT: Arms"}, -- Blade of Savagery
  [ 32370] = {boss =  607, slot =  2, xtype =  0, account = 6, cost =  200, note = "BIS: HPa HPr HSh OPT: HDr"}, -- Nadina's Pendant of Purity

  -- Council
  [ 31098] = {boss =  608, slot =  9, xtype = 18, account = 6, cost =  300, note = "BIS: HPa TPa WL OPT: MPa Pr"}, -- Leggings of the Forgotten Conqueror
  [ 31099] = {boss =  608, slot =  9, xtype = 18, account = 6, cost =  300, note = "BIS: MDr TDr Ma Ro OPT: HDr RDr"}, -- Leggings of the Forgotten Vanquisher
  [ 31100] = {boss =  608, slot =  9, xtype = 18, account = 6, cost =  300, note = "BIS: BMHu RSh HSh MSHu TWa OPT: Arms Fury SVHu"}, -- Leggings of the Forgotten Protector
  [ 32331] = {boss =  608, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: RSh Fire Frost RDr WL OPT: Arcane RPr TPa"}, -- Cloak of the Illidari Council
  [ 32373] = {boss =  608, slot =  1, xtype =  4, account = 6, cost =  225, note = "OPT: Arms Fury MPa"}, -- Helm of the Illidari Shatterer
  [ 32376] = {boss =  608, slot =  1, xtype =  3, account = 6, cost =  225, note = "OPT: BMHu MPa MSHu"}, -- Forest Prowler's Helm
  [ 32505] = {boss =  608, slot = 12, xtype =  0, account = 6, cost =  300, note = "BIS: Arms Fury MDr MSh TDr Hu OPT: MPa Ro"}, -- Madness of the Betrayer
  [ 32518] = {boss =  608, slot =  3, xtype =  2, account = 6, cost =  225, note = "OPT: HDr"}, -- Veil of Turning Leaves
  [ 32519] = {boss =  608, slot =  8, xtype =  1, account = 6, cost =  150, note = "BIS: HPr OPT: HDr"}, -- Belt of Divine Guidance

  -- Illidan
  [ 31089] = {boss =  609, slot =  5, xtype = 18, account = 6, cost =  300, note = "BIS: HPa TPa WL Pr OPT: MPa"}, -- Chestguard of the Forgotten Conqueror
  [ 31090] = {boss =  609, slot =  5, xtype = 18, account = 6, cost =  300, note = "BIS: Fire Frost Dr Ro OPT: Arcane"}, -- Chestguard of the Forgotten Vanquisher
  [ 31091] = {boss =  609, slot =  5, xtype = 18, account = 6, cost =  300, note = "BIS: RSh HSh Hu Wa"}, -- Chestguard of the Forgotten Protector
  [ 32235] = {boss =  609, slot =  1, xtype =  2, account = 6, cost =  275, note = "BIS: Arms BMHu Fury MPa MSh MSHu Ro OPT: MDr TDr"}, -- Cursed Vision of Sargeras
  [ 32336] = {boss =  609, slot = 17, xtype = 12, account = 6, cost =  165, note = "BIS: Hu"}, -- Black Bow of the Betrayer
  [ 32374] = {boss =  609, slot = 16, xtype = 10, account = 6, cost =  660, note = "BIS: RSh RDr RPr WL Ma"}, -- Zhar'doom, Greatstaff of the Devourer
  [ 32375] = {boss =  609, slot = 15, xtype = 17, account = 6, cost =  495, note = "BIS: TPa TWa"}, -- Bulwark of Azzinoth
  [ 32471] = {boss =  609, slot = 13, xtype =  5, account = 6, cost =  445, note = "OPT: Ro"}, -- Shard of Azzinoth
  [ 32483] = {boss =  609, slot = 12, xtype =  0, account = 6, cost =  330, note = "BIS: RSh RDr RPr WL Ma"}, -- The Skull of Gul'dan
  [ 32496] = {boss =  609, slot = 12, xtype =  0, account = 6, cost =  330, note = "BIS: HDr HPa HPr HSh"}, -- Memento of Tyrande
  [ 32497] = {boss =  609, slot = 11, xtype =  0, account = 6, cost =  220, note = "BIS: Arms BMHu Fury MDr MSh MSHu Ro OPT: TDr"}, -- Stormrage Signet Ring
  [ 32500] = {boss =  609, slot = 14, xtype =  8, account = 6, cost =  495, note = "BIS: HDr HPa HPr HSh"}, -- Crystal Spire of Karabor
  [ 32521] = {boss =  609, slot =  1, xtype =  4, account = 6, cost =  275, note = "BIS: TPa TWa"}, -- Faceplate of the Impenetrable
  [ 32524] = {boss =  609, slot =  4, xtype =  0, account = 6, cost =  165, note = "BIS: Arcane HDr HPa HPr HSh RDr WL OPT: RPr"}, -- Shroud of the Highborne
  [ 32525] = {boss =  609, slot =  1, xtype =  1, account = 6, cost =  275, note = "BIS: Fire Frost WL OPT: Arcane RSh RDr RPr"}, -- Cowl of the Illidari High Lord
}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
