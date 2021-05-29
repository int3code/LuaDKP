local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Druid T2:
  [16897] = {boss = 617, slot =  5, xtype =  2, xclass = 1, account = 2, cost = 160}, -- Stormrage Chestguard
  [16898] = {boss = 612, slot = 10, xtype =  2, xclass = 1, account = 2, cost = 120}, -- Stormrage Boots
  [16899] = {boss =   2, slot =  7, xtype =  2, xclass = 1, account = 2, cost = 120}, -- Stormrage Handguards
  [16902] = {boss = 616, slot =  3, xtype =  2, xclass = 1, account = 2, cost = 160}, -- Stormrage Pauldrons
  [16903] = {boss = 611, slot =  8, xtype =  2, xclass = 1, account = 2, cost =  80}, -- Stormrage Belt
  [16904] = {boss = 610, slot =  6, xtype =  2, xclass = 1, account = 2, cost =  80}, -- Stormrage Bracers

  -- Hunter T2:
  [16935] = {boss = 610, slot =  6, xtype =  3, xclass = 2, account = 2, cost =  80}, -- Dragonstalker's Bracers
  [16936] = {boss = 611, slot =  8, xtype =  3, xclass = 2, account = 2, cost =  80}, -- Dragonstalker's Belt
  [16937] = {boss = 616, slot =  3, xtype =  3, xclass = 2, account = 2, cost = 160}, -- Dragonstalker's Spaulders
  [16940] = {boss =   2, slot =  7, xtype =  3, xclass = 2, account = 2, cost = 120}, -- Dragonstalker's Gauntlets
  [16941] = {boss = 612, slot = 10, xtype =  3, xclass = 2, account = 2, cost = 120}, -- Dragonstalker's Greaves
  [16942] = {boss = 617, slot =  5, xtype =  3, xclass = 2, account = 2, cost = 160}, -- Dragonstalker's Breastplate

  -- Mage T2:
  [16818] = {boss = 611, slot =  8, xtype =  1, xclass = 3, account = 2, cost =  80}, -- Netherwind Belt
  [16912] = {boss = 612, slot = 10, xtype =  1, xclass = 3, account = 2, cost = 120}, -- Netherwind Boots
  [16913] = {boss =   2, slot =  7, xtype =  1, xclass = 3, account = 2, cost = 120}, -- Netherwind Gloves
  [16916] = {boss = 617, slot =  5, xtype =  1, xclass = 3, account = 2, cost = 160}, -- Netherwind Robes
  [16917] = {boss = 616, slot =  3, xtype =  1, xclass = 3, account = 2, cost = 160}, -- Netherwind Mantle
  [16918] = {boss = 610, slot =  6, xtype =  1, xclass = 3, account = 2, cost =  80}, -- Netherwind Bindings

  -- Paladin T2:
  [16951] = {boss = 610, slot =  6, xtype =  4, xclass = 4, account = 2, cost =  80}, -- Judgement Bindings
  [16952] = {boss = 611, slot =  8, xtype =  4, xclass = 4, account = 2, cost =  80}, -- Judgement Belt
  [16953] = {boss = 616, slot =  3, xtype =  4, xclass = 4, account = 2, cost = 160}, -- Judgement Spaulders
  [16956] = {boss =   2, slot =  7, xtype =  4, xclass = 4, account = 2, cost = 120}, -- Judgement Gauntlets
  [16957] = {boss = 612, slot = 10, xtype =  4, xclass = 4, account = 2, cost = 120}, -- Judgement Sabatons
  [16958] = {boss = 617, slot =  5, xtype =  4, xclass = 4, account = 2, cost = 160}, -- Judgement Breastplate

  -- Priest T2:
  [16919] = {boss = 612, slot = 10, xtype =  1, xclass = 5, account = 2, cost = 120}, -- Boots of Transcendence
  [16920] = {boss =   2, slot =  7, xtype =  1, xclass = 5, account = 2, cost = 120}, -- Handguards of Transcendence
  [16923] = {boss = 617, slot =  5, xtype =  1, xclass = 5, account = 2, cost = 160}, -- Robes of Transcendence
  [16924] = {boss = 616, slot =  3, xtype =  1, xclass = 5, account = 2, cost = 160}, -- Pauldrons of Transcendence
  [16925] = {boss = 611, slot =  8, xtype =  1, xclass = 5, account = 2, cost =  80}, -- Belt of Transcendence
  [16926] = {boss = 610, slot =  6, xtype =  1, xclass = 5, account = 2, cost =  80}, -- Bindings of Transcendence

  -- Rogue T2:
  [16832] = {boss = 616, slot =  3, xtype =  2, xclass = 6, account = 2, cost = 160}, -- Bloodfang Spaulders
  [16905] = {boss = 617, slot =  5, xtype =  2, xclass = 6, account = 2, cost = 160}, -- Bloodfang Chestpiece
  [16906] = {boss = 612, slot = 10, xtype =  2, xclass = 6, account = 2, cost = 120}, -- Bloodfang Boots
  [16907] = {boss =   2, slot =  7, xtype =  2, xclass = 6, account = 2, cost = 120}, -- Bloodfang Gloves
  [16910] = {boss = 611, slot =  8, xtype =  2, xclass = 6, account = 2, cost =  80}, -- Bloodfang Belt
  [16911] = {boss = 610, slot =  6, xtype =  2, xclass = 6, account = 2, cost =  80}, -- Bloodfang Bracers

  -- Shaman T2:
  [16944] = {boss = 611, slot =  8, xtype =  3, xclass = 7, account = 2, cost =  80}, -- Belt of Ten Storms
  [16943] = {boss = 610, slot =  6, xtype =  3, xclass = 7, account = 2, cost =  80}, -- Bracers of Ten Storms
  [16950] = {boss = 617, slot =  5, xtype =  3, xclass = 7, account = 2, cost = 160}, -- Breastplate of Ten Storms
  [16945] = {boss = 616, slot =  3, xtype =  3, xclass = 7, account = 2, cost = 160}, -- Epaulets of Ten Storms
  [16948] = {boss =   2, slot =  7, xtype =  3, xclass = 7, account = 2, cost = 120}, -- Gauntlets of Ten Storms
  [16949] = {boss = 612, slot = 10, xtype =  3, xclass = 7, account = 2, cost = 120}, -- Greaves of Ten Storms

  -- Warlock T2:
  [16927] = {boss = 612, slot = 10, xtype =  1, xclass = 8, account = 2, cost = 120}, -- Nemesis Boots
  [16928] = {boss =   2, slot =  7, xtype =  1, xclass = 8, account = 2, cost = 120}, -- Nemesis Gloves
  [16931] = {boss = 617, slot =  5, xtype =  1, xclass = 8, account = 2, cost = 160}, -- Nemesis Robes
  [16932] = {boss = 616, slot =  3, xtype =  1, xclass = 8, account = 2, cost = 160}, -- Nemesis Spaulders
  [16933] = {boss = 611, slot =  8, xtype =  1, xclass = 8, account = 2, cost =  80}, -- Nemesis Belt
  [16934] = {boss = 610, slot =  6, xtype =  1, xclass = 8, account = 2, cost =  80}, -- Nemesis Bracers

  -- Warrior T2:
  [16959] = {boss = 610, slot =  6, xtype =  4, xclass = 9, account = 2, cost =  80}, -- Bracelets of Wrath
  [16960] = {boss = 611, slot =  8, xtype =  4, xclass = 9, account = 2, cost =  80}, -- Waistband of Wrath
  [16961] = {boss = 616, slot =  3, xtype =  4, xclass = 9, account = 2, cost = 160}, -- Pauldrons of Wrath
  [16964] = {boss =   2, slot =  7, xtype =  4, xclass = 9, account = 2, cost = 120}, -- Gauntlets of Wrath
  [16965] = {boss = 612, slot = 10, xtype =  4, xclass = 9, account = 2, cost = 120}, -- Sabatons of Wrath
  [16966] = {boss = 617, slot =  5, xtype =  4, xclass = 9, account = 2, cost = 160}, -- Breastplate of Wrath

  -- Trinkets:
  [19336] = {boss = 610, slot = 12, xtype =  0, xclass = 2, account = 2, cost =  20}, -- Arcane Infused Gem
  [19337] = {boss = 610, slot = 12, xtype =  0, xclass = 8, account = 2, cost =  20}, -- The Black Book
  [19339] = {boss = 611, slot = 12, xtype =  0, xclass = 3, account = 2, cost = 200}, -- Mind Quickening Gem
  [19340] = {boss = 611, slot = 12, xtype =  0, xclass = 1, account = 2, cost =  20}, -- Rune of Metamorphosis
  [19341] = {boss = 612, slot = 12, xtype =  0, xclass = 9, account = 2, cost =  80}, -- Lifegiving Gem
  [19342] = {boss = 612, slot = 12, xtype =  0, xclass = 6, account = 2, cost =  20}, -- Venomous Totem
  [19343] = {boss = 615, slot = 12, xtype =  0, xclass = 4, account = 2, cost =  80}, -- Scrolls of Blinding Light
  [19344] = {boss = 615, slot = 12, xtype =  0, xclass = 7, account = 2, cost =  80}, -- Natural Alignment Crystal
  [19345] = {boss = 614, slot = 12, xtype =  0, xclass = 5, account = 2, cost =  20}, -- Aegis of Preservation

  -- Razorgore:
  [19369] = {boss = 610, slot =  7, xtype =  1, account = 2, cost =  20, note = "Crap"}, -- Gloves of Rapid Evolution
  [19370] = {boss = 610, slot =  3, xtype =  1, account = 2, cost = 200, note = "Mage/WL/Shadow BiS"}, -- Mantle of the Blackwing Cabal
  [19335] = {boss = 610, slot = 14, xtype =  8, account = 2, cost = 120, note = "Human-Fury, whatever"}, -- Spineshatter
  [19334] = {boss = 610, slot = 16, xtype =  6, account = 2, cost = 200, note = "Cool Proc"}, -- The Untamed Blade

  -- Vaelastrasz:
  [19371] = {boss = 611, slot =  2, xtype =  0, account = 2, cost =  40, note = "Crap"}, -- Pendant of the Fallen Dragon
  [19372] = {boss = 611, slot =  1, xtype =  4, account = 2, cost =  80, note = "Tank > PvP"}, -- Helm of Endless Rage
  [19346] = {boss = 611, slot = 13, xtype =  5, account = 2, cost = 160, note = "Tank, Rogue, Hunter"}, -- Dragonfang Blade
  [19348] = {boss = 611, slot = 15, xtype = 17, account = 2, cost = 120, note = "Heal-Paladin"}, -- Red Dragonscale Protector

  -- Broodlord:
  [19373] = {boss = 612, slot =  3, xtype =  3, account = 2, cost =  20, note = "Crap"}, -- Black Brood Pauldrons
  [19374] = {boss = 612, slot =  6, xtype =  1, account = 2, cost = 280, note = "WL, Mage"}, -- Bracers of Arcane Accuracy
  [19350] = {boss = 612, slot = 17, xtype = 12, account = 2, cost =  80, note = "Whatever"}, -- Heartstriker
  [19351] = {boss = 612, slot = 13, xtype =  6, account = 2, cost = 280, note = "Human-Warrior/Tank"}, -- Maladath, Runed Blade of the Black Flight

  -- The Three Drakes:
  [19397] = {boss =   2, slot = 11, xtype =  0, account = 2, cost =  80, note = "Shadow > Mage, WL"}, -- Ring of Blackrock
  [19395] = {boss =   2, slot = 12, xtype =  0, account = 2, cost = 400, note = "Heal"}, -- Rejuvenating Gem
  [19353] = {boss =   2, slot = 16, xtype =  7, account = 2, cost =  20, note = "PvP"}, -- Drake Talon Cleaver
  [19394] = {boss =   2, slot =  3, xtype =  4, account = 2, cost = 160, note = "Fury-Prot, good until Naxx"}, -- Drake Talon Pauldrons
  [19396] = {boss =   2, slot =  8, xtype =  2, account = 2, cost =  80, note = "Bear"}, -- Taut Dragonhide Belt
  [19355] = {boss =   2, slot = 16, xtype = 10, account = 2, cost =  80, note = "Heal-Druid In-Between-Item"}, -- Shadow Wing Focus Staff

  -- Firemaw:
  [19399] = {boss = 615, slot =  5, xtype =  1, account = 2, cost =  80, note = "FR Bear"}, -- Black Ash Robe
  [19400] = {boss = 615, slot =  8, xtype =  1, account = 2, cost = 120, note = "Shadow"}, -- Firemaw's Clutch
  [19365] = {boss = 615, slot = 14, xtype = 11, account = 2, cost = 120, note = "Fury, Rogue"}, -- Claw of the Black Drake
  [19398] = {boss = 615, slot =  4, xtype =  0, account = 2, cost = 160, note = "Melee > Hunter"}, -- Cloak of Firemaw
  [19402] = {boss = 615, slot =  9, xtype =  4, account = 2, cost = 160, note = "Tank > DPS"}, -- Legguards of the Fallen Crusader
  [19401] = {boss = 615, slot =  9, xtype =  3, account = 2, cost =  80, note = "Shaman"}, -- Primalist's Linked Legguards

  -- Ebonroc:
  [19403] = {boss = 614, slot = 11, xtype =  0, account = 2, cost = 200, note = "Mage, WL"}, -- Band of Forced Concentration
  [19406] = {boss = 614, slot = 12, xtype =  0, account = 2, cost = 400, note = "Tank, Melee"}, -- Drake Fang Talisman
  [19407] = {boss = 614, slot =  7, xtype =  1, account = 2, cost = 120, note = "Shadow, WL"}, -- Ebony Flame Gloves
  [19405] = {boss = 614, slot =  5, xtype =  2, account = 2, cost = 120, note = "Bear"}, -- Malfurion's Blessed Bulwark
  [19368] = {boss = 614, slot = 17, xtype = 14, account = 2, cost =  80, note = "Tank first"}, -- Dragonbreath Hand Cannon

  -- Flamegore:
  [19430] = {boss = 613, slot =  4, xtype =  0, account = 2, cost = 160, note = "Heal"}, -- Shroud of Pure Thought
  [19432] = {boss = 613, slot = 11, xtype =  0, account = 2, cost = 120, note = "Tank/Bear first"}, -- Circle of Applied Force
  [19433] = {boss = 613, slot =  9, xtype =  3, account = 2, cost =  80, note = "Tank"}, -- Emberweave Leggings
  [19431] = {boss = 613, slot = 12, xtype =  0, account = 2, cost = 120, note = "Tank"}, -- Styleen's Impeding Scarab
  [19367] = {boss = 613, slot = 17, xtype = 15, account = 2, cost = 120, note = "Caster"}, -- Dragon's Touch
  [19357] = {boss = 613, slot = 16, xtype =  8, account = 2, cost =  20, note = "Paladin, PvP"}, -- Herald of Woe

  -- Chromaggus:
  [19388] = {boss = 616, slot =  8, xtype =  1, account = 2, cost = 200, note = "WL, Moonkin"}, -- Angelista's Grasp
  [19389] = {boss = 616, slot =  3, xtype =  2, account = 2, cost =  80, note = "Rogue, Feral"}, -- Taut Dragonhide Shoulderpads
  [19387] = {boss = 616, slot = 10, xtype =  4, account = 2, cost = 280, note = "Warrior"}, -- Chromatic Boots
  [19390] = {boss = 616, slot =  7, xtype =  2, account = 2, cost =  80, note = "Whatever"}, -- Taut Dragonhide Gloves
  [19391] = {boss = 616, slot = 10, xtype =  1, account = 2, cost =  20, note = "Whatever"}, -- Shimmering Geta
  [19386] = {boss = 616, slot =  4, xtype =  0, account = 2, cost =  80, note = "Tank, Feral"}, -- Elementium Threaded Cloak
  [19392] = {boss = 616, slot =  8, xtype =  4, account = 2, cost =  20, note = "Paladin"}, -- Girdle of the Fallen Crusader
  [19385] = {boss = 616, slot =  9, xtype =  1, account = 2, cost = 200, note = "Heal"}, -- Empowered Leggings
  [19352] = {boss = 616, slot = 13, xtype =  6, account = 2, cost = 280, note = "Warrior, Rogue, only Human/Edgemaster"}, -- Chromatically Tempered Sword
  [19393] = {boss = 616, slot =  8, xtype =  3, account = 2, cost =  20, note = "Shaman"}, -- Primalist's Linked Waistguard
  [19347] = {boss = 616, slot = 13, xtype =  5, account = 2, cost = 280, note = "Caster"}, -- Claw of Chromaggus
  [19361] = {boss = 616, slot = 17, xtype = 13, account = 2, cost =  80, note = "Hunter"}, -- Ashjre'thul, Crossbow of Smiting
  [19349] = {boss = 616, slot = 15, xtype = 17, account = 2, cost = 120, note = "Tank, Off-Tank"}, -- Elementium Reinforced Bulwark

  -- Nefarian:
  [19003] = {boss = 617, slot =  0, xtype =  0, account = 2, cost = 160, note = "Melee/Hunter Ring"}, -- Head of Nefarian
  [19378] = {boss = 617, slot =  4, xtype =  0, account = 2, cost = 200, note = "Shadow/Caster"}, -- Cloak of the Brood Lord
  [19381] = {boss = 617, slot = 10, xtype =  2, account = 2, cost = 200, note = "Bear > Rogue"}, -- Boots of the Shadow Flame
  [19380] = {boss = 617, slot =  8, xtype =  3, account = 2, cost = 120, note = "Whatever"}, -- Therazane's Link
  [19376] = {boss = 617, slot = 11, xtype =  0, account = 2, cost =  80, note = "Tank, Feral > PvP"}, -- Archimtiros' Ring of Reckoning
  [19382] = {boss = 617, slot = 11, xtype =  0, account = 2, cost = 400, note = "Heal"}, -- Pure Elementium Band
  [19379] = {boss = 617, slot = 12, xtype =  0, account = 2, cost = 400, note = "Mage, WL, Shadow"}, -- Neltharion's Tear
  [19375] = {boss = 617, slot =  1, xtype =  1, account = 2, cost = 280, note = "Mage, WL > Heal-Paladin"}, -- Mish'undare, Circlet of the Mind Flayer
  [19377] = {boss = 617, slot =  2, xtype =  0, account = 2, cost = 200, note = "Hunter > Rogue, Feral"}, -- Prestor's Talisman of Connivery
  [19356] = {boss = 617, slot = 16, xtype = 10, account = 2, cost = 400, note = "Mage, WL"}, -- Staff of the Shadow Flame
  [19364] = {boss = 617, slot = 16, xtype =  6, account = 2, cost = 400, note = "Warrior > Hunter"}, -- Ashkandi, Greatsword of the Brotherhood
  [19363] = {boss = 617, slot = 13, xtype =  7, account = 2, cost = 280, note = "Tank, Fury"}, -- Crul'shorukh, Edge of Chaos
  [19360] = {boss = 617, slot = 14, xtype =  8, account = 2, cost = 400, note = "Paladin, Druid > Priest"}, -- Lok'amir il Romathis

  -- Trash:
  [19436] = {boss =   1, slot =  4, xtype =  0, account = 2, cost = 120, note = "Fury > Tank"}, -- Cloak of Draconic Might
  [19439] = {boss =   1, slot =  5, xtype =  2, account = 2, cost =  20, note = "Druid In-Between-Item"}, -- Interlaced Shadow Jerkin
  [19437] = {boss =   1, slot = 10, xtype =  1, account = 2, cost = 200, note = "BiS Heal"}, -- Boots of Pure Thought
  [19438] = {boss =   1, slot = 10, xtype =  1, account = 2, cost = 120, note = "Mage"}, -- Ringo's Blizzard Boots
  [19434] = {boss =   1, slot = 11, xtype =  0, account = 2, cost = 120, note = "Shadow, WL"}, -- Band of Dark Dominion
  [19435] = {boss =   1, slot = 17, xtype = 15, account = 2, cost =  80, note = "Priest"}, -- Essence Gatherer
  [19362] = {boss =   1, slot = 13, xtype =  7, account = 2, cost = 160, note = "Tank > DPS, no Humans"}, -- Doom's Edge
  [19354] = {boss =   1, slot = 16, xtype =  7, account = 2, cost =  20, note = "Crap, maybe Hunter"}, -- Draconic Avenger
  [19358] = {boss =   1, slot = 16, xtype =  8, account = 2, cost = 200, note = "Feral"}, -- Draconic Maul

}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
