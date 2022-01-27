local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Trash
  [ 32945] = {boss =    1, slot = 15, xtype = 11, account = 6, cost =  225, note = ""}, -- Fist of Molten Fury
  [ 32946] = {boss =    1, slot = 14, xtype = 11, account = 6, cost =  405, note = "OPT: MSh"}, -- Claw of Molten Fury
  [ 34009] = {boss =    1, slot = 14, xtype =  8, account = 6, cost =  450, note = "BIS: RDr OPT: RSh RPr TPa"}, -- Hammer of Judgement
  [ 34010] = {boss =    1, slot =  4, xtype =  0, account = 6, cost =  150, note = "BIS: TPa TWa OPT: TDr"}, -- Pepe's Shroud of Pacification

  -- All Bosses
  [ 32285] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Flashing Crimson Spinel
  [ 32289] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Stormy Empyrean Sapphire
  [ 32295] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Mystic Lionseye
  [ 32296] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Great Lionseye
  [ 32297] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Sovereign Shadowsong Amethyst
  [ 32298] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Shifting Shadowsong Amethyst
  [ 32303] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Inscribed Pyrestone
  [ 32307] = {boss =    3, slot =  0, xtype = 19, account = 6, cost =    0, note = ""}, -- Design: Veiled Pyrestone

  -- Winterchill
  [ 30861] = {boss =  618, slot =  6, xtype =  4, account = 6, cost =  135, note = "OPT: Fury TWa"}, -- Furious Shackles
  [ 30862] = {boss =  618, slot =  6, xtype =  4, account = 6, cost =  150, note = "BIS: HPa"}, -- Blessed Adamantite Bracers
  [ 30863] = {boss =  618, slot =  6, xtype =  2, account = 6, cost =  150, note = "BIS: Arms Fury MSh OPT: MDr TDr Ro"}, -- Deadly Cuffs
  [ 30864] = {boss =  618, slot =  6, xtype =  3, account = 6, cost =   75, note = ""}, -- Bracers of the Pathfinder
  [ 30865] = {boss =  618, slot = 13, xtype =  5, account = 6, cost =  405, note = "OPT: BMHu MSHu Ro"}, -- Tracker's Blade
  [ 30866] = {boss =  618, slot =  3, xtype =  4, account = 6, cost =  125, note = ""}, -- Blood-stained Pauldrons
  [ 30868] = {boss =  618, slot =  6, xtype =  2, account = 6, cost =  150, note = "BIS: HDr"}, -- Rejuvenating Bracers
  [ 30869] = {boss =  618, slot =  6, xtype =  3, account = 6, cost =  135, note = "OPT: HPa HSh"}, -- Howling Wind Bracers
  [ 30870] = {boss =  618, slot =  6, xtype =  1, account = 6, cost =  150, note = "BIS: Arcane OPT: RSh Fire Frost RDr RPr WL"}, -- Cuffs of Devastation
  [ 30871] = {boss =  618, slot =  6, xtype =  1, account = 6, cost =  150, note = "BIS: HDr HPr"}, -- Bracers of Martyrdom
  [ 30872] = {boss =  618, slot = 15, xtype =  0, account = 6, cost =  450, note = "BIS: RSh RDr WL Ma OPT: RPr"}, -- Chronicle of Dark Secrets
  [ 30873] = {boss =  618, slot = 10, xtype =  3, account = 6, cost =  200, note = "BIS: HSh"}, -- Stillwater Boots

  -- Anetheron
  [ 30874] = {boss =  619, slot = 13, xtype =  6, account = 6, cost =  450, note = "BIS: TWa"}, -- The Unbreakable Will
  [ 30878] = {boss =  619, slot =  3, xtype =  4, account = 6, cost =  225, note = "OPT: HPa"}, -- Glimmering Steel Mantle
  [ 30879] = {boss =  619, slot =  8, xtype =  2, account = 6, cost =  150, note = "BIS: Hu OPT: MDr MSh TDr Ro"}, -- Don Alejandro's Money Belt
  [ 30880] = {boss =  619, slot = 10, xtype =  3, account = 6, cost =  180, note = "OPT: MSh"}, -- Quickstrider Moccasins
  [ 30881] = {boss =  619, slot = 13, xtype =  6, account = 6, cost =  450, note = "BIS: Hu OPT: Arms Fury Ro"}, -- Blade of Infamy
  [ 30882] = {boss =  619, slot = 15, xtype = 17, account = 6, cost =  450, note = "BIS: HPa HSh"}, -- Bastion of Light
  [ 30883] = {boss =  619, slot = 16, xtype = 10, account = 6, cost =  600, note = "BIS: TDr OPT: MDr"}, -- Pillar of Ferocity
  [ 30884] = {boss =  619, slot =  3, xtype =  1, account = 6, cost =  225, note = "OPT: RSh RDr RPr WL Ma"}, -- Hatefury Mantle
  [ 30885] = {boss =  619, slot = 10, xtype =  1, account = 6, cost =  180, note = "OPT: HDr"}, -- Archbishop's Slippers
  [ 30886] = {boss =  619, slot = 10, xtype =  2, account = 6, cost =  180, note = "OPT: HDr"}, -- Enchanted Leather Sandals
  [ 30887] = {boss =  619, slot =  5, xtype =  3, account = 6, cost =  270, note = "OPT: HSh"}, -- Golden Links of Restoration
  [ 30888] = {boss =  619, slot =  8, xtype =  1, account = 6, cost =  150, note = "BIS: Arcane RDr WL OPT: Fire Frost RPr"}, -- Anetheron's Noose

  -- Kaz'rogal
  [ 30889] = {boss =  620, slot = 15, xtype = 17, account = 6, cost =  405, note = "OPT: TPa TWa"}, -- Kaz'rogal's Hardened Heart
  [ 30891] = {boss =  620, slot = 10, xtype =  2, account = 6, cost =  100, note = ""}, -- Black Featherlight Boots
  [ 30892] = {boss =  620, slot =  3, xtype =  3, account = 6, cost =  225, note = "OPT: BMHu MSHu"}, -- Beast-tamer's Shoulders
  [ 30893] = {boss =  620, slot =  9, xtype =  3, account = 6, cost =  270, note = "OPT: HPa HSh"}, -- Sun-touched Chain Leggings
  [ 30894] = {boss =  620, slot = 10, xtype =  1, account = 6, cost =  180, note = "OPT: RDr RPr TPa WL Ma"}, -- Blue Suede Shoes
  [ 30895] = {boss =  620, slot =  8, xtype =  1, account = 6, cost =  150, note = "BIS: HDr HPr HSh"}, -- Angelista's Sash
  [ 30914] = {boss =  620, slot =  8, xtype =  2, account = 6, cost =  135, note = "OPT: RDr"}, -- Belt of the Crescent Moon
  [ 30915] = {boss =  620, slot =  8, xtype =  4, account = 6, cost =   75, note = ""}, -- Belt of Seething Fury
  [ 30916] = {boss =  620, slot =  9, xtype =  1, account = 6, cost =  300, note = "BIS: RSh RDr RPr WL OPT: Ma"}, -- Leggings of Channeled Elements
  [ 30917] = {boss =  620, slot =  3, xtype =  2, account = 6, cost =  225, note = "OPT: TDr Ro"}, -- Razorfury Mantle
  [ 30918] = {boss =  620, slot = 14, xtype =  8, account = 6, cost =  450, note = "BIS: HPa OPT: HDr HPr HSh"}, -- Hammer of Atonement
  [ 30919] = {boss =  620, slot =  8, xtype =  3, account = 6, cost =  135, note = "OPT: MSh"}, -- Valestalker Girdle

  -- Azgalor
  [ 30896] = {boss =  621, slot =  5, xtype =  4, account = 6, cost =  270, note = "OPT: TPa TWa"}, -- Glory of the Defender
  [ 30897] = {boss =  621, slot =  8, xtype =  4, account = 6, cost =  150, note = "BIS: HPa"}, -- Girdle of Hope
  [ 30898] = {boss =  621, slot =  9, xtype =  2, account = 6, cost =  270, note = "OPT: Arms Fury MDr MSh TDr Hu Ro"}, -- Shady Dealer's Pantaloons
  [ 30899] = {boss =  621, slot =  5, xtype =  2, account = 6, cost =  150, note = ""}, -- Don Rodrigo's Poncho
  [ 30900] = {boss =  621, slot =  9, xtype =  3, account = 6, cost =  300, note = "BIS: MPa MSh SVHu OPT: BMHu MSHu"}, -- Bow-stitched Leggings
  [ 30901] = {boss =  621, slot = 13, xtype =  5, account = 6, cost =  450, note = "BIS: BMHu MSHu"}, -- Boundless Agony
  [ 31092] = {boss =  621, slot =  7, xtype = 18, account = 6, cost =  200, note = "BIS: TPa WL Pr OPT: HPa"}, -- Gloves of the Forgotten Conqueror
  [ 31093] = {boss =  621, slot =  7, xtype = 18, account = 6, cost =  200, note = "BIS: Fire Frost MDr RDr TDr Ro OPT: Arcane HDr"}, -- Gloves of the Forgotten Vanquisher
  [ 31094] = {boss =  621, slot =  7, xtype = 18, account = 6, cost =  200, note = "BIS: RSh Hu OPT: Arms Fury HSh"}, -- Gloves of the Forgotten Protector

  -- Archimonde
  [ 30902] = {boss =  622, slot = 16, xtype =  6, account = 6, cost =  660, note = "BIS: Arms OPT: MPa"}, -- Cataclysm's Edge
  [ 30903] = {boss =  622, slot =  9, xtype =  4, account = 6, cost =  295, note = "OPT: Wa"}, -- Legguards of Endless Rage
  [ 30904] = {boss =  622, slot =  5, xtype =  4, account = 6, cost =  295, note = "OPT: HPa"}, -- Savior's Grasp
  [ 30905] = {boss =  622, slot =  5, xtype =  2, account = 6, cost =  330, note = "BIS: MPa MSh OPT: Arms Fury MDr TDr Ro"}, -- Midnight Chestguard
  [ 30906] = {boss =  622, slot = 17, xtype = 12, account = 6, cost =  165, note = "BIS: Hu"}, -- Bristleblitz Striker
  [ 30907] = {boss =  622, slot =  5, xtype =  3, account = 6, cost =  165, note = ""}, -- Mail of Fevered Pursuit
  [ 30908] = {boss =  622, slot = 16, xtype = 10, account = 6, cost =  660, note = "BIS: HDr OPT: HPr"}, -- Apostle of Argus
  [ 30909] = {boss =  622, slot = 15, xtype = 17, account = 6, cost =  495, note = "BIS: RSh TPa"}, -- Antonidas's Aegis of Rapt Concentration
  [ 30910] = {boss =  622, slot = 14, xtype =  6, account = 6, cost =  495, note = "BIS: TPa WL Ma"}, -- Tempest of Chaos
  [ 30911] = {boss =  622, slot = 15, xtype =  0, account = 6, cost =  495, note = "BIS: HDr HPa HPr"}, -- Scepter of Purification
  [ 30912] = {boss =  622, slot =  9, xtype =  1, account = 6, cost =  330, note = "BIS: HDr HPr OPT: HPa HSh"}, -- Leggings of Eternity
  [ 30913] = {boss =  622, slot =  5, xtype =  1, account = 6, cost =  295, note = "OPT: RDr RPr WL Ma"}, -- Robes of Rhonin
  [ 31095] = {boss =  622, slot =  1, xtype = 18, account = 6, cost =  250, note = "BIS: RSh HSh SVHu OPT: BMHu MSh MSHu Wa"}, -- Helm of the Forgotten Protector
  [ 31096] = {boss =  622, slot =  1, xtype = 18, account = 6, cost =  250, note = "BIS: HDr RDr TDr OPT: Ma Ro"}, -- Helm of the Forgotten Vanquisher
  [ 31097] = {boss =  622, slot =  1, xtype = 18, account = 6, cost =  250, note = "BIS: HPa TPa WL Pr OPT: MPa"}, -- Helm of the Forgotten Conqueror
}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
