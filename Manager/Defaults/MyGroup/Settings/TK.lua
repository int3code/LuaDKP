local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Tokens:
  [30248] = {boss = 731, slot =  3, xtype = 18, account = 5, cost = 250, note = "BiS: HPa Ro HSh RSh Opt: TPa MPa"}, -- Pauldrons of the Vanquished Champion
  [30249] = {boss = 731, slot =  3, xtype = 18, account = 5, cost = 250, note = "BiS: MDr HDr RDr HPr TWa Opt: RPr Arms Fury"}, -- Pauldrons of the Vanquished Defender
  [30250] = {boss = 731, slot =  3, xtype = 18, account = 5, cost = 250, note = "BiS: Hu Arcane Fire Opt: Destro Affli"}, -- Pauldrons of the Vanquished Hero
  [30236] = {boss = 733, slot =  5, xtype = 18, account = 5, cost = 300, note = "BiS: TPa MPa HPa Ro MSh HSh RSh"}, -- Chestguard of the Vanquished Champion
  [30237] = {boss = 733, slot =  5, xtype = 18, account = 5, cost = 300, note = "BiS: TDr MDr HDr RDr HPr TWa Fury Opt: RPr Arms"}, -- Chestguard of the Vanquished Defender
  [30238] = {boss = 733, slot =  5, xtype = 18, account = 5, cost = 300, note = "BiS: Hu Arcane Opt: Fire Destro Affli"}, -- Chestguard of the Vanquished Hero

  -- Al'ar:
  [29918] = {boss = 730, slot =  6, xtype =  1, account = 5, cost = 150, note = "BiS: RDr Arcane Fire RSh Destro Affli Opt: RPr"}, -- Mindstorm Wristbands
  [29920] = {boss = 730, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: HPa HPr HSh"}, -- Phoenix-Ring of Rebirth
  [29921] = {boss = 730, slot =  5, xtype =  3, account = 5, cost = 270, note = "Opt: HSh"}, -- Fire Crest Breastplate
  [29922] = {boss = 730, slot = 11, xtype =  0, account = 5, cost = 200, note = "BiS: TPa RPr Opt: Arcane Fire Destro Affli"}, -- Band of Al'ar
  [29923] = {boss = 730, slot = 15, xtype =  0, account = 5, cost = 400, note = "BiS: HPa HPr Opt: HDr HSh"}, -- Talisman of the Sun King
  [29924] = {boss = 730, slot = 13, xtype =  7, account = 5, cost = 450, note = "BiS: MSh Opt: Arcane Fury"}, -- Netherbane
  [29925] = {boss = 730, slot =  4, xtype =  0, account = 5, cost = 150, note = "BiS: TPa TWa"}, -- Phoenix-Wing Cloak
  [29947] = {boss = 730, slot =  7, xtype =  2, account = 5, cost = 200, note = "BiS: TDr MDr MPa TWa Arms Fury Opt: Ro"}, -- Gloves of the Searing Grip
  [29948] = {boss = 730, slot = 15, xtype = 11, account = 5, cost = 450, note = "BiS: Hu"}, -- Claw of the Phoenix
  [29949] = {boss = 730, slot = 17, xtype = 14, account = 5, cost = 150, note = "BiS: Ro Opt: Hu"}, -- Arcanite Steam-Pistol
  [30447] = {boss = 730, slot = 12, xtype =  0, account = 5, cost = 150, note = ""}, -- Tome of Fiery Redemption
  [30448] = {boss = 730, slot = 12, xtype =  0, account = 5, cost = 150, note = ""}, -- Talon of Al'ar
  [32944] = {boss = 730, slot = 14, xtype = 11, account = 5, cost = 450, note = "BiS: Hu MSh Opt: Ro"}, -- Talon of the Phoenix

  -- Void Reaver:
  [29983] = {boss = 731, slot =  1, xtype =  4, account = 5, cost = 230, note = "Opt: TPa Arms Fury"}, -- Fel-Steel Warhelm
  [29984] = {boss = 731, slot =  8, xtype =  2, account = 5, cost = 150, note = "BiS: HDr"}, -- Girdle of Zaetar
  [29985] = {boss = 731, slot =  9, xtype =  3, account = 5, cost = 270, note = "Opt: Hu"}, -- Void Reaver Greaves
  [29986] = {boss = 731, slot =  1, xtype =  1, account = 5, cost = 250, note = "BiS: Arcane RPr Opt: RDr Fire Affli"}, -- Cowl of the Grand Engineer
  [30450] = {boss = 731, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: Ro"}, -- Warp-Spring Coil
  [30619] = {boss = 731, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: HPr"}, -- Fel Reaver's Piston
  [32515] = {boss = 731, slot =  6, xtype =  4, account = 5, cost = 150, note = "BiS: TPa"}, -- Wristguards of Determination

  -- Solarian:
  [29950] = {boss = 732, slot =  9, xtype =  4, account = 5, cost = 300, note = "BiS: MPa TWa Opt: Arms Fury"}, -- Greaves of the Bloodwarder
  [29951] = {boss = 732, slot = 10, xtype =  3, account = 5, cost = 200, note = "BiS: Hu Opt: MPa Arms Fury"}, -- Star-Strider Boots
  [29962] = {boss = 732, slot = 13, xtype =  5, account = 5, cost = 410, note = "Opt: Ro"}, -- Heartrazor
  [29965] = {boss = 732, slot =  8, xtype =  4, account = 5, cost = 140, note = "Opt: HPa"}, -- Girdle of the Righteous Path
  [29966] = {boss = 732, slot =  6, xtype =  2, account = 5, cost = 150, note = "BiS: TDr MDr Hu Ro Opt: MSh"}, -- Vambraces of Ending
  [29972] = {boss = 732, slot =  9, xtype =  1, account = 5, cost = 300, note = "BiS: RPr Opt: RDr Arcane Fire Destro Affli"}, -- Trousers of the Astromancer
  [29976] = {boss = 732, slot =  7, xtype =  3, account = 5, cost = 200, note = "BiS: HSh"}, -- Worldstorm Gauntlets
  [29977] = {boss = 732, slot =  9, xtype =  1, account = 5, cost = 270, note = "Opt: HDr HPr"}, -- Star-Soul Breeches
  [29981] = {boss = 732, slot = 16, xtype = 10, account = 5, cost = 600, note = "BiS: HDr Opt: HPr"}, -- Ethereum Life-Staff
  [29982] = {boss = 732, slot = 17, xtype = 15, account = 5, cost = 150, note = "BiS: Fire RPr Destro Affli Opt: Arcane"}, -- Wand of the Forgotten Star
  [30446] = {boss = 732, slot = 12, xtype =  0, account = 5, cost = 300, note = "BiS: Arms"}, -- Solarian's Sapphire
  [30449] = {boss = 732, slot = 12, xtype =  0, account = 5, cost = 200, note = ""}, -- Void Star Talisman
  [32267] = {boss = 732, slot = 10, xtype =  4, account = 5, cost = 200, note = "BiS: TWa Opt: TPa"}, -- Boots of the Resilient

  -- Kael'thas:
  [29987] = {boss = 733, slot =  7, xtype =  1, account = 5, cost = 220, note = "BiS: Arcane Opt: RDr Fire Destro Affli"}, -- Gauntlets of the Sun King
  [29988] = {boss = 733, slot = 16, xtype = 10, account = 5, cost = 690, note = "BiS: RDr Arcane Fire RSh Opt: Destro Affli"}, -- The Nexus Key
  [29989] = {boss = 733, slot =  4, xtype =  0, account = 5, cost = 170, note = "BiS: HDr HPa HPr HSh"}, -- Sunshower Light Cloak
  [29990] = {boss = 733, slot =  1, xtype =  1, account = 5, cost = 250, note = "Opt: HPr"}, -- Crown of the Sun
  [29991] = {boss = 733, slot =  9, xtype =  3, account = 5, cost = 330, note = "BiS: HPa HSh"}, -- Sunhawk Leggings
  [29992] = {boss = 733, slot =  4, xtype =  0, account = 5, cost = 170, note = "BiS: RDr Arcane TPa RPr Opt: Fire RSh Destro Affli"}, -- Royal Cloak of the Sunstriders
  [29993] = {boss = 733, slot = 16, xtype =  6, account = 5, cost = 690, note = "BiS: Hu MPa Arms"}, -- Twinblade of the Phoenix
  [29994] = {boss = 733, slot =  4, xtype =  0, account = 5, cost = 170, note = "BiS: TDr MDr Hu MSh Opt: MPa Ro TWa Arms Fury"}, -- Thalassian Wildercloak
  [29995] = {boss = 733, slot =  9, xtype =  2, account = 5, cost = 330, note = "BiS: TDr MDr Hu Arms Fury Opt: MPa Ro"}, -- Leggings of Murderous Intent
  [29996] = {boss = 733, slot = 13, xtype =  8, account = 5, cost = 520, note = "BiS: MSh Fury Opt: Ro"}, -- Rod of the Sun King
  [29997] = {boss = 733, slot = 11, xtype =  0, account = 5, cost = 220, note = "BiS: TDr MDr Hu MPa Ro MSh Arms Fury"}, -- Band of the Ranger-General
  [29998] = {boss = 733, slot =  7, xtype =  4, account = 5, cost = 220, note = "BiS: TPa TWa"}, -- Royal Gauntlets of Silvermoon
  [32405] = {boss = 733, slot =  2, xtype =  0, account = 5, cost = 220, note = "BiS: TDr HDr RDr Hu Arcane Fire TPa HPa HPr MSh HSh RSh Destro Affli Opt: MDr Ro Arms Fury"}, -- Verdant Sphere

  -- Trash:
  [30020] = {boss =   1, slot =  8, xtype =  1, account = 5, cost =  50, note = ""}, -- Fire-Cord of the Magus
  [30024] = {boss =   1, slot =  3, xtype =  1, account = 5, cost = 250, note = "BiS: Fire Opt: RDr Arcane RSh"}, -- Mantle of the Elven Kings
  [30026] = {boss =   1, slot =  6, xtype =  3, account = 5, cost = 140, note = "Opt: Hu"}, -- Bands of the Celestial Archer
  [30028] = {boss =   1, slot = 11, xtype =  0, account = 5, cost = 100, note = ""}, -- Seventh Ring of the Tirisfalen
  [30029] = {boss =   1, slot =  7, xtype =  2, account = 5, cost = 130, note = ""}, -- Bark-Gloves of Ancient Wisdom
  [30030] = {boss =   1, slot =  8, xtype =  3, account = 5, cost = 150, note = "BiS: HPa HSh"}, -- Girdle of Fallen Stars
}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
