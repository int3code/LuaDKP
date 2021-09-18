local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Tokens:
  [30239] = {boss = 625, slot =  7, xtype = 18, account = 5, cost = 200, note = "BiS: TPa HPa Ro MSh Opt: MPa HSh RSh"}, -- Gloves of the Vanquished Champion
  [30240] = {boss = 625, slot =  7, xtype = 18, account = 5, cost = 200, note = "BiS: TDr RDr HPr Opt: HDr RPr TWa Arms Fury"}, -- Gloves of the Vanquished Defender
  [30241] = {boss = 625, slot =  7, xtype = 18, account = 5, cost = 200, note = "BiS: Hu Opt: Arcane Fire Destro Affli"}, -- Gloves of the Vanquished Hero
  [30245] = {boss = 626, slot =  9, xtype = 18, account = 5, cost = 300, note = "BiS: TPa Ro MSh RSh Opt: MPa HPa HSh"}, -- Leggings of the Vanquished Champion
  [30246] = {boss = 626, slot =  9, xtype = 18, account = 5, cost = 300, note = "BiS: TDr HPr TWa Arms Opt: HDr RDr RPr Fury"}, -- Leggings of the Vanquished Defender
  [30247] = {boss = 626, slot =  9, xtype = 18, account = 5, cost = 300, note = "BiS: Arcane Destro Affli Opt: Hu Fire"}, -- Leggings of the Vanquished Hero
  [30242] = {boss = 628, slot =  1, xtype = 18, account = 5, cost = 250, note = "BiS: TPa MPa HPa Ro MSh HSh RSh"}, -- Helm of the Vanquished Champion
  [30243] = {boss = 628, slot =  1, xtype = 18, account = 5, cost = 250, note = "BiS: TDr HDr RDr RPr HPr Fury Opt: TWa"}, -- Helm of the Vanquished Defender
  [30244] = {boss = 628, slot =  1, xtype = 18, account = 5, cost = 250, note = "BiS: Hu Arcane Destro Affli Opt: Fire"}, -- Helm of the Vanquished Hero

  -- Hydross:
  [30047] = {boss = 623, slot =  6, xtype =  3, account = 5, cost = 150, note = "BiS: HPa HSh"}, -- Blackfathom Warbands
  [30048] = {boss = 623, slot =  1, xtype =  4, account = 5, cost = 150, note = ""}, -- Brighthelm of Justice
  [30049] = {boss = 623, slot = 15, xtype =  0, account = 5, cost = 400, note = "BiS: RDr Arcane RSh Destro Affli Opt: Fire"}, -- Fathomstone
  [30050] = {boss = 623, slot = 10, xtype =  1, account = 5, cost = 180, note = "Opt: Destro Affli"}, -- Boots of the Shifting Nightmare
  [30051] = {boss = 623, slot = 17, xtype =  0, account = 5, cost =  50, note = ""}, -- Idol of the Crescent Goddess
  [30052] = {boss = 623, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: TDr MDr Hu Ro MSh Opt: Arms Fury"}, -- Ring of Lethality
  [30053] = {boss = 623, slot =  3, xtype =  4, account = 5, cost = 230, note = "Opt: Arms Fury"}, -- Pauldrons of the Wardancer
  [30054] = {boss = 623, slot =  5, xtype =  3, account = 5, cost = 270, note = "Opt: Hu"}, -- Ranger-General's Chestguard
  [30055] = {boss = 623, slot =  3, xtype =  2, account = 5, cost = 250, note = "BiS: MDr MPa Ro MSh Arms Fury Opt: TDr Hu"}, -- Shoulderpads of the Stranger
  [30056] = {boss = 623, slot =  5, xtype =  1, account = 5, cost = 270, note = "Opt: RDr Arcane Fire Destro Affli"}, -- Robe of Hateful Echoes
  [30629] = {boss = 623, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: TPa"}, -- Scarab of Displacement
  [30664] = {boss = 623, slot = 12, xtype =  0, account = 5, cost = 100, note = ""}, -- Living Root of the Wildheart
  [32516] = {boss = 623, slot =  6, xtype =  1, account = 5, cost = 150, note = "BiS: HPr Opt: HSh"}, -- Wraps of Purification
  [33055] = {boss = 623, slot = 11, xtype =  0, account = 5, cost =  50, note = ""}, -- Band of Vile Aggression

  -- Lurker:
  [30057] = {boss = 624, slot =  6, xtype =  4, account = 5, cost = 150, note = "BiS: MPa Arms Fury"}, -- Bracers of Eradication
  [30058] = {boss = 624, slot = 14, xtype =  8, account = 5, cost = 450, note = "BiS: TWa"}, -- Mallet of the Tides
  [30059] = {boss = 624, slot =  2, xtype =  0, account = 5, cost = 180, note = "Opt: Hu Arms Fury"}, -- Choker of Animalistic Fury
  [30060] = {boss = 624, slot = 10, xtype =  2, account = 5, cost = 180, note = "Opt: TDr MDr Hu"}, -- Boots of Effortless Striking
  [30061] = {boss = 624, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: MDr MPa Opt: TDr TWa Arms Fury"}, -- Ancestral Ring of Conquest
  [30062] = {boss = 624, slot =  6, xtype =  2, account = 5, cost = 150, note = "BiS: HDr"}, -- Grove-Bands of Remulos
  [30063] = {boss = 624, slot = 17, xtype =  0, account = 5, cost = 100, note = ""}, -- Libram of Absolute Truth
  [30064] = {boss = 624, slot =  8, xtype =  1, account = 5, cost = 150, note = "BiS: RPr Opt: RDr Arcane Fire RSh Destro Affli"}, -- Cord of Screaming Terrors
  [30065] = {boss = 624, slot =  5, xtype =  4, account = 5, cost = 200, note = ""}, -- Glowing Breastplate of Truth
  [30066] = {boss = 624, slot = 10, xtype =  3, account = 5, cost = 180, note = "Opt: HSh"}, -- Tempest-Strider Boots
  [30067] = {boss = 624, slot = 10, xtype =  1, account = 5, cost = 200, note = "BiS: RDr Arcane Fire RSh Opt: Destro Affli"}, -- Velvet Boots of the Guardian
  [30665] = {boss = 624, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: HPr"}, -- Earring of Soulful Meditation
  [33054] = {boss = 624, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: TDr"}, -- The Seal of Danzalar

  -- Leotheras:
  [30091] = {boss = 625, slot =  6, xtype =  3, account = 5, cost = 150, note = "BiS: MSh Opt: Hu Arms Fury"}, -- True-Aim Stalker Bands
  [30092] = {boss = 625, slot = 10, xtype =  2, account = 5, cost = 200, note = "BiS: HDr HSh Opt: HPa"}, -- Orca-Hide Boots
  [30095] = {boss = 625, slot = 14, xtype =  6, account = 5, cost = 450, note = "BiS: Arcane Fire TPa Destro Affli"}, -- Fang of the Leviathan
  [30096] = {boss = 625, slot =  8, xtype =  4, account = 5, cost = 150, note = "BiS: TPa TWa"}, -- Girdle of the Invulnerable
  [30097] = {boss = 625, slot =  3, xtype =  3, account = 5, cost = 250, note = "BiS: HSh Opt: HPa"}, -- Coral-Barbed Shoulderpads
  [30627] = {boss = 625, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: MDr Fury Opt: TDr Hu MPa Ro MSh Arms"}, -- Tsunami Talisman

  -- Karathress:
  [30090] = {boss = 626, slot = 16, xtype =  8, account = 5, cost = 300, note = ""}, -- World Breaker
  [30099] = {boss = 626, slot =  2, xtype =  0, account = 5, cost = 200, note = "BiS: TWa"}, -- Frayed Tether of the Drowned
  [30100] = {boss = 626, slot = 10, xtype =  1, account = 5, cost = 200, note = "BiS: HPr Opt: HDr"}, -- Soul-Strider Boots
  [30101] = {boss = 626, slot =  5, xtype =  2, account = 5, cost = 300, note = "BiS: MDr Ro Fury Opt: TDr MPa Arms"}, -- Bloodsea Brigand's Vest
  [30626] = {boss = 626, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: Fire Opt: RSh Destro Affli"}, -- Sextant of Unstable Currents
  [30663] = {boss = 626, slot = 12, xtype =  0, account = 5, cost = 150, note = ""}, -- Fathom-Brooch of the Tidewalker

  -- Morogrim:
  [30008] = {boss = 627, slot =  2, xtype =  0, account = 5, cost = 180, note = "Opt: Arcane TPa"}, -- Pendant of the Lost Ages
  [30068] = {boss = 627, slot =  8, xtype =  3, account = 5, cost = 100, note = ""}, -- Girdle of the Tidal Call
  [30075] = {boss = 627, slot =  5, xtype =  2, account = 5, cost = 270, note = "Opt: HDr"}, -- Gnarled Chestpiece of the Ancients
  [30079] = {boss = 627, slot =  3, xtype =  1, account = 5, cost = 230, note = "Opt: RDr Arcane Fire Destro Affli"}, -- Illidari Shoulderpads
  [30080] = {boss = 627, slot = 17, xtype = 15, account = 5, cost = 150, note = "BiS: HPr"}, -- Luminescent Rod of the Naaru
  [30081] = {boss = 627, slot = 10, xtype =  4, account = 5, cost = 200, note = "BiS: MPa Arms Fury"}, -- Warboots of Obliteration
  [30082] = {boss = 627, slot = 13, xtype =  6, account = 5, cost = 450, note = "BiS: Ro Fury"}, -- Talon of Azshara
  [30083] = {boss = 627, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: TPa"}, -- Ring of Sundered Souls
  [30084] = {boss = 627, slot =  3, xtype =  4, account = 5, cost = 130, note = ""}, -- Pauldrons of the Argent Sentinel
  [30085] = {boss = 627, slot =  3, xtype =  3, account = 5, cost = 230, note = "Opt: Hu"}, -- Mantle of the Tireless Tracker
  [30098] = {boss = 627, slot =  4, xtype =  0, account = 5, cost = 150, note = "BiS: MPa Opt: TDr MDr Arms Fury"}, -- Razor-Scale Battlecloak
  [30720] = {boss = 627, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: Arcane"}, -- Serpent-Coil Braid
  [33058] = {boss = 627, slot = 11, xtype =  0, account = 5, cost =  50, note = ""}, -- Band of the Vigilant

  -- Lady Vashj:
  [30102] = {boss = 628, slot =  5, xtype =  4, account = 5, cost = 300, note = "Opt: MPa Arms Fury"}, -- Krakken-Heart Breastplate
  [30103] = {boss = 628, slot = 13, xtype =  5, account = 5, cost = 520, note = "BiS: Ro TWa"}, -- Fang of Vashj
  [30104] = {boss = 628, slot = 10, xtype =  3, account = 5, cost = 220, note = "BiS: Hu Opt: MPa MSh"}, -- Cobra-Lash Boots
  [30105] = {boss = 628, slot = 17, xtype = 12, account = 5, cost = 170, note = "BiS: Hu Arms Fury"}, -- Serpent Spine Longbow
  [30106] = {boss = 628, slot =  8, xtype =  2, account = 5, cost = 170, note = "BiS: TDr MDr MPa Ro MSh TWa Arms Fury Opt: Hu"}, -- Belt of One-Hundred Deaths
  [30107] = {boss = 628, slot =  5, xtype =  1, account = 5, cost = 330, note = "BiS: Fire RPr RSh Destro Affli Opt: RDr Arcane"}, -- Vestments of the Sea-Witch
  [30108] = {boss = 628, slot = 14, xtype =  8, account = 5, cost = 520, note = "BiS: HDr HPa HPr HSh"}, -- Lightfathom Scepter
  [30109] = {boss = 628, slot = 11, xtype =  0, account = 5, cost = 220, note = "BiS: RDr Fire RPr RSh Destro Affli Opt: TPa"}, -- Ring of Endless Coils
  [30110] = {boss = 628, slot = 11, xtype =  0, account = 5, cost = 220, note = "BiS: HDr HPa HPr Opt: HSh"}, -- Coral Band of the Revived
  [30111] = {boss = 628, slot =  3, xtype =  2, account = 5, cost = 250, note = "Opt: HDr"}, -- Runetotem's Mantle
  [30112] = {boss = 628, slot =  7, xtype =  4, account = 5, cost = 140, note = ""}, -- Glorious Gauntlets of Crestfall
  [30621] = {boss = 628, slot = 12, xtype =  0, account = 5, cost = 240, note = ""}, -- Prism of Inner Calm

  -- Trash:
  [30620] = {boss =   1, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: TWa Opt: TDr"}, -- Spyglass of the Hidden Fleet
  [30023] = {boss =   1, slot = 17, xtype =  0, account = 5, cost =  50, note = ""}, -- Totem of the Maelstrom
  [30027] = {boss =   1, slot = 10, xtype =  4, account = 5, cost = 200, note = "BiS: HPa"}, -- Boots of Courage Unending
  [30022] = {boss =   1, slot =  2, xtype =  0, account = 5, cost = 200, note = "BiS: MPa MSh Arms Fury"}, -- Pendant of the Perilous
  [30025] = {boss =   1, slot = 17, xtype =  0, account = 5, cost = 150, note = "BiS: TWa"}, -- Serpentshrine Shuriken
  [30021] = {boss =   1, slot = 16, xtype = 10, account = 5, cost = 600, note = "BiS: TDr MDr"}, -- Wildfury Greatstaff

  -- Patterns:
  [30282] = {boss =   1, slot = 10, xtype =  1, account = 5, cost = 160, note = "BiS: RDr Arcane Fire Destro Affli"}, -- Pattern: Boots of Blasting
  [30323] = {boss =   1, slot = 10, xtype =  4, account = 5, cost =  50, note = ""}, -- Plans: Boots of the Protector
  [30283] = {boss =   1, slot = 10, xtype =  1, account = 5, cost =  50, note = ""}, -- Pattern: Boots of the Long Road
  [30305] = {boss =   1, slot = 10, xtype =  2, account = 5, cost =  50, note = ""}, -- Pattern: Boots of Natural Grace
  [30306] = {boss =   1, slot = 10, xtype =  2, account = 5, cost = 160, note = "BiS: MSh"}, -- Pattern: Boots of Utter Darkness
  [30324] = {boss =   1, slot = 10, xtype =  4, account = 5, cost =  50, note = ""}, -- Plans: Red Havoc Boots
  [30308] = {boss =   1, slot = 10, xtype =  3, account = 5, cost =  50, note = ""}, -- Pattern: Hurricane Boots
  [30307] = {boss =   1, slot = 10, xtype =  3, account = 5, cost = 140, note = "Opt: Hu"}, -- Pattern: Boots of the Crimson Hawk
}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
