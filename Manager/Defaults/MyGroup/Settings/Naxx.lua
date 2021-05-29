local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Trash:
  [23044] = {boss =    1, slot = 13, xtype =  5, account = 4, cost = 400, note = "Opt: Ro"}, -- Harbinger of Doom
  [23069] = {boss =    1, slot =  5, xtype =  1, account = 4, cost =   0, note = "Stamina Cloth Chest"}, -- Necro-Knight's Garb
  [23221] = {boss =    1, slot = 13, xtype =  8, account = 4, cost = 450, note = "BiS: MSh MWa"}, -- Misplaced Servo Arm
  [23226] = {boss =    1, slot =  5, xtype =  2, account = 4, cost = 300, note = "BiS: TPa MSh Opt: TDr"}, -- Ghoul Skin Tunic
  [23237] = {boss =    1, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: Ma"}, -- Ring of the Eternal Flame
  [23238] = {boss =    1, slot = 15, xtype = 17, account = 4, cost =  50, note = "Crap PvP Shield"}, -- Stygian Buckler
  [23663] = {boss =    1, slot =  8, xtype =  3, account = 4, cost = 100, note = "Opt: RSh"}, -- Girdle of Elemental Fury
  [23664] = {boss =    1, slot =  3, xtype =  3, account = 4, cost = 200, note = "BiS: RSh Opt: HSh"}, -- Pauldrons of Elemental Fury
  [23665] = {boss =    1, slot =  9, xtype =  3, account = 4, cost = 200, note = "Opt: HSh RSh"}, -- Leggings of Elemental Fury
  [23666] = {boss =    1, slot =  8, xtype =  4, account = 4, cost =  50, note = "Crap MPa"}, -- Belt of the Grand Crusader
  [23667] = {boss =    1, slot =  3, xtype =  4, account = 4, cost = 100, note = "Crap MPa"}, -- Spaulders of the Grand Crusader
  [23668] = {boss =    1, slot =  9, xtype =  4, account = 4, cost = 150, note = "Crap MPa"}, -- Leggings of the Grand Crusader

  -- Boss Drop:
  [22354] = {boss =    3, slot =  3, xtype = 18, account = 4, cost = 250, note = "BiS: Ro TWa"}, -- Desecrated Pauldrons
  [22355] = {boss =    3, slot =  6, xtype = 18, account = 4, cost = 150, note = "BiS: Ro TWa"}, -- Desecrated Bracers
  [22356] = {boss =    3, slot =  8, xtype = 18, account = 4, cost = 150, note = "BiS: TWa Opt: Ro"}, -- Desecrated Waistguard
  [22358] = {boss =    3, slot = 10, xtype = 18, account = 4, cost = 200, note = "BiS: Ro TWa"}, -- Desecrated Sabatons
  [22361] = {boss =    3, slot =  3, xtype = 18, account = 4, cost = 250, note = "BiS: HDr Hu HPa HSh"}, -- Desecrated Spaulders
  [22362] = {boss =    3, slot =  6, xtype = 18, account = 4, cost = 150, note = "BiS: Hu HPa HSh Opt: HDr"}, -- Desecrated Wristguards
  [22363] = {boss =    3, slot =  8, xtype = 18, account = 4, cost = 150, note = "BiS: Hu HPa Opt: HDr HSh"}, -- Desecrated Girdle
  [22365] = {boss =    3, slot = 10, xtype = 18, account = 4, cost = 200, note = "BiS: Hu HPa HSh Opt: HDr"}, -- Desecrated Boots
  [22368] = {boss =    3, slot =  3, xtype = 18, account = 4, cost = 250, note = "BiS: HPr WL Opt: Ma"}, -- Desecrated Shoulderpads
  [22369] = {boss =    3, slot =  6, xtype = 18, account = 4, cost = 150, note = "Opt: Ma HPr WL"}, -- Desecrated Bindings
  [22370] = {boss =    3, slot =  8, xtype = 18, account = 4, cost = 150, note = "Opt: Ma HPr WL"}, -- Desecrated Belt
  [22372] = {boss =    3, slot = 10, xtype = 18, account = 4, cost = 200, note = "BiS: Ma WL"}, -- Desecrated Sandals
  [22726] = {boss =    3, slot =  0, xtype =  0, account = 4, cost =   0, note = "BiS: MDr HDr Ma WL"}, -- Splinter of Atiesh

  -- Anub'Rekhan
  [22935] = {boss = 1107, slot =  2, xtype =  0, account = 4, cost =   0, note = "FR Neck"}, -- Touch of Frost
  [22936] = {boss = 1107, slot =  6, xtype =  4, account = 4, cost = 150, note = "BiS: MPa MWa"}, -- Wristguards of Vengeance
  [22937] = {boss = 1107, slot = 15, xtype =  0, account = 4, cost =  50, note = "Crap OH Caster"}, -- Gem of Nerubis
  [22938] = {boss = 1107, slot =  4, xtype =  0, account = 4, cost = 150, note = "BiS: TPa Opt: TWa"}, -- Cryptfiend Silk Cloak
  [22939] = {boss = 1107, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: HDr HPr HSh"}, -- Band of Unanswered Prayers

  -- Gluth
  [22813] = {boss = 1108, slot = 16, xtype =  6, account = 4, cost = 100, note = "Crap 2H Sword"}, -- Claymore of Unholy Might
  [22981] = {boss = 1108, slot =  2, xtype =  0, account = 4, cost =  50, note = "Crap Neck BV"}, -- Gluth's Missing Collar
  [22983] = {boss = 1108, slot =  3, xtype =  1, account = 4, cost = 250, note = "BiS: HDr RDr Ma RPr Opt: RSh WL"}, -- Rime Covered Mantle
  [22994] = {boss = 1108, slot = 15, xtype =  0, account = 4, cost = 150, note = "Crap OH MP5"}, -- Digested Hand of Power
  [23075] = {boss = 1108, slot = 15, xtype = 17, account = 4, cost = 250, note = "Opt: HPa MSh HSh"}, -- Death's Bargain

  -- Gothik
  [23020] = {boss = 1109, slot =  1, xtype =  2, account = 4, cost =   0, note = "FR Leather Head"}, -- Polar Helmet
  [23021] = {boss = 1109, slot =  6, xtype =  1, account = 4, cost = 150, note = "BiS: Ma RSh Opt: HDr RDr WL"}, -- The Soul Harvester's Bindings
  [23023] = {boss = 1109, slot =  2, xtype =  0, account = 4, cost = 150, note = "Opt: MSh TWa MWa"}, -- Sadist's Collar
  [23032] = {boss = 1109, slot =  1, xtype =  1, account = 4, cost =   0, note = "FR Cloth Head"}, -- Glacial Headdress
  [23073] = {boss = 1109, slot = 10, xtype =  2, account = 4, cost = 200, note = "Opt: MDr"}, -- Boots of Displacement

  -- Faerlina
  [22806] = {boss = 1110, slot = 13, xtype =  6, account = 4, cost = 300, note = "1H Sword"}, -- Widow's Remorse
  [22940] = {boss = 1110, slot =  3, xtype =  4, account = 4, cost =   0, note = "FR Plate Shoulder"}, -- Icebane Pauldrons
  [22941] = {boss = 1110, slot =  3, xtype =  2, account = 4, cost =   0, note = "FR Leather Shoulder"}, -- Polar Shoulder Pads
  [22942] = {boss = 1110, slot = 13, xtype =  8, account = 4, cost = 350, note = "Opt: HDr HPr HSh"}, -- The Widow's Embrace
  [22943] = {boss = 1110, slot =  2, xtype =  0, account = 4, cost = 100, note = "Opt: Ma RPr"}, -- Malice Stone Pendant

  -- Grobbulus
  [22803] = {boss = 1111, slot = 13, xtype =  5, account = 4, cost = 300, note = "Opt: Ma RSh"}, -- Midnight Haze
  [22810] = {boss = 1111, slot = 17, xtype = 14, account = 4, cost =  50, note = "Crap Gun"}, -- Toxin Injector
  [22967] = {boss = 1111, slot =  3, xtype =  3, account = 4, cost =   0, note = "FR Mail Shoulder"}, -- Icy Scale Spaulders
  [22968] = {boss = 1111, slot =  3, xtype =  1, account = 4, cost =   0, note = "FR Cloth Shoulder"}, -- Glacial Mantle
  [22988] = {boss = 1111, slot = 13, xtype =  8, account = 4, cost = 500, note = "BiS: TPa RPr RSh Opt: RDr"}, -- The End of Dreams

  -- Heigan
  [23019] = {boss = 1112, slot =  1, xtype =  4, account = 4, cost =   0, note = "FR Plate Head"}, -- Icebane Helmet
  [23033] = {boss = 1112, slot =  1, xtype =  3, account = 4, cost =   0, note = "FR Mail Head"}, -- Icy Scale Coif
  [23035] = {boss = 1112, slot =  1, xtype =  1, account = 4, cost = 250, note = "BiS: RDr RPr Opt: Ma RSh"}, -- Preceptor's Hat
  [23036] = {boss = 1112, slot =  2, xtype =  0, account = 4, cost = 200, note = "BiS: HPr Opt: HDr HSh"}, -- Necklace of Necropsy
  [23068] = {boss = 1112, slot =  9, xtype =  4, account = 4, cost = 300, note = "BiS: MWa"}, -- Legplates of Carnage

  -- Razuvious
  [23004] = {boss = 1113, slot = 17, xtype =  0, account = 4, cost = 150, note = "BiS: HDr"}, -- Idol of Longevity
  [23009] = {boss = 1113, slot = 17, xtype = 15, account = 4, cost = 150, note = "BiS: HPr"}, -- Wand of the Whispering Dead
  [23014] = {boss = 1113, slot = 13, xtype =  6, account = 4, cost = 400, note = "BiS: MWa Opt: Ro"}, -- Iblis, Blade of the Fallen Seraph
  [23017] = {boss = 1113, slot =  4, xtype =  0, account = 4, cost = 100, note = "Opt: Ma RPr RSh"}, -- Veil of Eclipse
  [23018] = {boss = 1113, slot = 11, xtype =  0, account = 4, cost = 200, note = "Opt: TDr"}, -- Signet of the Fallen Defender
  [23219] = {boss = 1113, slot =  8, xtype =  4, account = 4, cost = 150, note = "BiS: MPa TWa MWa"}, -- Girdle of the Mentor

  -- Kel'Thuzad
  [22520] = {boss = 1114, slot =  0, xtype =  0, account = 4, cost = 100, note = "BiS: Ma Opt: RDr WL"}, -- The Phylactery of Kel'Thuzad
  [22798] = {boss = 1114, slot = 16, xtype =  8, account = 4, cost = 600, note = "BiS: MSh MWa"}, -- Might of Menethil
  [22799] = {boss = 1114, slot = 16, xtype = 10, account = 4, cost = 500, note = "BiS: RSh Opt: Ma RPr WL"}, -- Soulseeker
  [22802] = {boss = 1114, slot = 13, xtype =  5, account = 4, cost = 450, note = "BiS: Hu Ro"}, -- Kingsfall
  [22812] = {boss = 1114, slot = 17, xtype = 13, account = 4, cost = 450, note = "BiS: Hu Ro MWa"}, -- Nerubian Slavemaker
  [22819] = {boss = 1114, slot = 15, xtype = 17, account = 4, cost = 400, note = "BiS: HPa MSh HSh"}, -- Shield of Condemnation
  [22821] = {boss = 1114, slot = 17, xtype = 15, account = 4, cost = 150, note = "BiS: Ma WL Opt: RPr"}, -- Doomfinger
  [23053] = {boss = 1114, slot =  2, xtype =  0, account = 4, cost = 200, note = "BiS: Hu TPa MSh MWa Opt: Ro"}, -- Stormrage's Talisman of Seething
  [23054] = {boss = 1114, slot = 13, xtype =  6, account = 4, cost = 450, note = "BiS: Ro TWa MWa"}, -- Gressil, Dawn of Ruin
  [23056] = {boss = 1114, slot = 13, xtype =  8, account = 4, cost = 500, note = "BiS: HDr HPa HPr HSh"}, -- Hammer of the Twisting Nether
  [23057] = {boss = 1114, slot =  2, xtype =  0, account = 4, cost = 200, note = "BiS: RDr Ma HPa RSh WL Opt: HPr"}, -- Gem of Trapped Innocents
  [23059] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: TWa"}, -- Ring of the Dreadnaught
  [23060] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: Ro"}, -- Bonescythe Ring
  [23061] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: HPr"}, -- Ring of Faith
  [23062] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: Ma"}, -- Frostfire Ring
  [23063] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost =   0, note = "Stamina Ring WL"}, -- Plagueheart Ring
  [23064] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 150, note = "Ring HDr"}, -- Ring of the Dreamwalker
  [23065] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: HSh"}, -- Ring of the Earthshatterer
  [23066] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: HPa"}, -- Ring of Redemption
  [23067] = {boss = 1114, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: Hu"}, -- Ring of the Cryptstalker
  [23577] = {boss = 1114, slot = 13, xtype =  6, account = 4, cost = 450, note = "BiS: TPa Ro TWa MWa"}, -- The Hungering Cold

  -- Loatheb
  [22352] = {boss = 1115, slot =  9, xtype = 18, account = 4, cost = 300, note = "BiS: Ro TWa"}, -- Desecrated Legplates
  [22359] = {boss = 1115, slot =  9, xtype = 18, account = 4, cost = 300, note = "BiS: HDr Hu HPa HSh"}, -- Desecrated Legguards
  [22366] = {boss = 1115, slot =  9, xtype = 18, account = 4, cost = 300, note = "BiS: HPr Opt: WL"}, -- Desecrated Leggings
  [22800] = {boss = 1115, slot = 16, xtype = 10, account = 4, cost = 600, note = "BiS: RDr Opt: Ma RPr RSh WL"}, -- Brimstone Staff
  [23037] = {boss = 1115, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: MPa"}, -- Ring of Spiritual Fervor
  [23038] = {boss = 1115, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: TPa Ro MSh MWa"}, -- Band of Unnatural Forces
  [23039] = {boss = 1115, slot = 16, xtype =  9, account = 4, cost = 600, note = "BiS: Hu"}, -- The Eye of Nerub
  [23042] = {boss = 1115, slot = 12, xtype =  0, account = 4, cost =   0, note = "Resist Trinket"}, -- Loatheb's Reflection

  -- Maexxna
  [22357] = {boss = 1116, slot =  7, xtype = 18, account = 4, cost = 200, note = "BiS: TWa"}, -- Desecrated Gauntlets
  [22364] = {boss = 1116, slot =  7, xtype = 18, account = 4, cost = 200, note = "BiS: HDr TPa HPa HSh"}, -- Desecrated Handguards
  [22371] = {boss = 1116, slot =  7, xtype = 18, account = 4, cost = 200, note = "Opt: Ma WL"}, -- Desecrated Gloves
  [22804] = {boss = 1116, slot = 13, xtype =  5, account = 4, cost = 400, note = "BiS: Ro"}, -- Maexxna's Fang
  [22807] = {boss = 1116, slot = 13, xtype =  6, account = 4, cost = 500, note = "BiS: Ma WL"}, -- Wraith Blade
  [22947] = {boss = 1116, slot =  2, xtype =  0, account = 4, cost = 100, note = "Neck MP5"}, -- Pendant of Forgotten Names
  [22954] = {boss = 1116, slot = 12, xtype =  0, account = 4, cost = 300, note = "BiS: MDr Ro MSh TWa Opt: MWa"}, -- Kiss of the Spider
  [23220] = {boss = 1116, slot =  5, xtype =  1, account = 4, cost = 300, note = "BiS: RPr RSh Opt: RDr Ma"}, -- Crystal Webbed Robe

  -- Noth
  [22816] = {boss = 1117, slot = 13, xtype =  7, account = 4, cost = 450, note = "BiS: Hu MWa Opt: MSh"}, -- Hatchet of Sundered Bone
  [23005] = {boss = 1117, slot = 17, xtype =  0, account = 4, cost = 100, note = "Totem HSh"}, -- Totem of Flowing Water
  [23006] = {boss = 1117, slot = 17, xtype =  0, account = 4, cost = 150, note = "BiS: HPa"}, -- Libram of Light
  [23028] = {boss = 1117, slot = 11, xtype =  0, account = 4, cost =   0, note = "FR Ring"}, -- Hailstone Band
  [23029] = {boss = 1117, slot = 15, xtype =  0, account = 4, cost = 350, note = "Opt: HDr HPr"}, -- Noth's Frigid Heart
  [23030] = {boss = 1117, slot =  4, xtype =  0, account = 4, cost = 100, note = "Opt: MSh MWa"}, -- Cloak of the Scourge
  [23031] = {boss = 1117, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: RDr RPr RSh Opt: WL"}, -- Band of the Inevitable

  -- Patchwerk
  [22815] = {boss = 1118, slot = 16, xtype =  7, account = 4, cost = 300, note = "Opt: MSh"}, -- Severance
  [22818] = {boss = 1118, slot = 15, xtype = 17, account = 4, cost = 450, note = "BiS: TPa TWa"}, -- The Plague Bearer
  [22820] = {boss = 1118, slot = 17, xtype = 15, account = 4, cost = 150, note = "Opt: Ma RPr"}, -- Wand of Fates
  [22960] = {boss = 1118, slot =  4, xtype =  0, account = 4, cost = 150, note = "BiS: HDr HPr Opt: HSh"}, -- Cloak of Suturing
  [22961] = {boss = 1118, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: Hu Opt: Ro"}, -- Band of Reanimation

  -- Sapphiron
  [23040] = {boss = 1119, slot = 12, xtype =  0, account = 4, cost =  50, note = "Crap Trinket BV"}, -- Glyph of Deflection
  [23041] = {boss = 1119, slot = 12, xtype =  0, account = 4, cost = 300, note = "BiS: Hu Ro MSh Opt: MDr MWa"}, -- Slayer's Crest
  [23043] = {boss = 1119, slot = 15, xtype = 17, account = 4, cost = 450, note = "BiS: TWa"}, -- The Face of Death
  [23045] = {boss = 1119, slot =  4, xtype =  0, account = 4, cost = 150, note = "BiS: Hu MPa Ro MSh MWa Opt: MDr TPa"}, -- Shroud of Dominion
  [23046] = {boss = 1119, slot = 12, xtype =  0, account = 4, cost = 300, note = "BiS: Ma RPr RSh WL Opt: RDr"}, -- The Restrained Essence of Sapphiron
  [23047] = {boss = 1119, slot = 12, xtype =  0, account = 4, cost = 300, note = "BiS: HDr HPa HPr HSh"}, -- Eye of the Dead
  [23048] = {boss = 1119, slot = 15, xtype =  0, account = 4, cost = 400, note = "BiS: HDr HPa HPr Opt: HSh"}, -- Sapphiron's Right Eye
  [23049] = {boss = 1119, slot = 15, xtype =  0, account = 4, cost = 400, note = "BiS: RSh WL Opt: RDr RPr"}, -- Sapphiron's Left Eye
  [23050] = {boss = 1119, slot =  4, xtype =  0, account = 4, cost = 150, note = "BiS: RDr Ma HPa RSh WL Opt: RPr"}, -- Cloak of the Necropolis
  [23242] = {boss = 1119, slot = 15, xtype = 11, account = 4, cost = 450, note = "BiS: TWa MWa"}, -- Claw of the Frost Wyrm
  [23545] = {boss = 1119, slot =  0, xtype =  0, account = 4, cost = 100, note = "BiS: RDr RPr RSh Opt: Ma"}, -- Power of the Scourge
  [23547] = {boss = 1119, slot =  0, xtype =  0, account = 4, cost = 100, note = "BiS: HDr HPr HSh"}, -- Resilience of the Scourge
  [23548] = {boss = 1119, slot =  0, xtype =  0, account = 4, cost = 100, note = "BiS: Hu Ro MSh"}, -- Might of the Scourge

  -- Thaddius
  [22353] = {boss = 1120, slot =  1, xtype = 18, account = 4, cost = 250, note = "BiS: Ro TWa"}, -- Desecrated Helmet
  [22360] = {boss = 1120, slot =  1, xtype = 18, account = 4, cost = 250, note = "BiS: HDr Hu HPa HSh"}, -- Desecrated Headpiece
  [22367] = {boss = 1120, slot =  1, xtype = 18, account = 4, cost = 250, note = "BiS: Ma HPr WL"}, -- Desecrated Circlet
  [22801] = {boss = 1120, slot = 16, xtype = 10, account = 4, cost = 500, note = "BiS: HSh Opt: HDr RDr HPr"}, -- Spire of Twilight
  [22808] = {boss = 1120, slot = 13, xtype =  8, account = 4, cost = 450, note = "BiS: TWa MWa"}, -- The Castigator
  [23000] = {boss = 1120, slot =  5, xtype =  4, account = 4, cost = 300, note = "BiS: MWa"}, -- Plated Abomination Ribcage
  [23001] = {boss = 1120, slot = 12, xtype =  0, account = 4, cost = 200, note = "Opt: RDr"}, -- Eye of Diminution
  [23070] = {boss = 1120, slot =  9, xtype =  1, account = 4, cost = 300, note = "BiS: Ma RSh WL Opt: RDr RPr"}, -- Leggings of Polarity

  -- Horsemen
  [22349] = {boss = 1121, slot =  5, xtype = 18, account = 4, cost = 300, note = "BiS: Ro TWa"}, -- Desecrated Breastplate
  [22350] = {boss = 1121, slot =  5, xtype = 18, account = 4, cost = 300, note = "BiS: HDr Hu HPa HSh"}, -- Desecrated Tunic
  [22351] = {boss = 1121, slot =  5, xtype = 18, account = 4, cost = 300, note = "BiS: Ma HPr WL"}, -- Desecrated Robe
  [22691] = {boss = 1121, slot = 16, xtype =  6, account = 4, cost = 600, note = "BiS: MPa"}, -- Corrupted Ashbringer
  [22809] = {boss = 1121, slot = 16, xtype =  8, account = 4, cost = 100, note = "Crap 2H Caster Mace"}, -- Maul of the Redeemed Crusader
  [22811] = {boss = 1121, slot = 17, xtype = 12, account = 4, cost = 150, note = "BiS: TWa MWa"}, -- Soulstring
  [23025] = {boss = 1121, slot = 11, xtype =  0, account = 4, cost = 200, note = "BiS: RSh WL Opt: RDr"}, -- Seal of the Damned
  [23027] = {boss = 1121, slot = 12, xtype =  0, account = 4, cost = 300, note = "BiS: HPr Opt: HPa HSh"}, -- Warmth of Forgiveness
  [23071] = {boss = 1121, slot =  9, xtype =  2, account = 4, cost = 300, note = "BiS: TDr MDr TPa TWa MWa Opt: Hu Ro MSh"}, -- Leggings of Apocalypse

}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
