local _, ADDON = ...

------------------------------------------------------------

local items = {

  -- Special Items / T2.5:
  [21237] = {boss =   3, slot =  0, xtype = 18, account = 3, cost = 320, note = "Caster/Heal Staff > Druid Mace"}, -- Imperial Qiraji Regalia
  [21232] = {boss =   3, slot =  0, xtype = 18, account = 3, cost = 320, note = "Tank > Dagger-Rogue > Hunter"}, -- Imperial Qiraji Armaments
  [20928] = {boss =   4, slot =  0, xtype = 18, account = 3, cost = 250, note = "Tank = Rogue = Fury > Priest > Hunter"}, -- Qiraji Bindings of Command
  [20932] = {boss =   4, slot =  0, xtype = 18, account = 3, cost = 250, note = "WL = Mage > Druid = Paladin"}, -- Qiraji Bindings of Dominance
  [20930] = {boss = 715, slot =  0, xtype = 18, account = 3, cost = 250, note = "Rogue > Rest"}, -- Vek'lor's Diadem
  [20926] = {boss = 715, slot =  0, xtype = 18, account = 3, cost = 250, note = "Mage = WL = Shadow > Tank > Priest"}, -- Vek'nilash's Circlet
  [20931] = {boss = 716, slot =  0, xtype = 18, account = 3, cost = 250, note = "WL > Rest"}, -- Skin of the Great Sandworm
  [20927] = {boss = 716, slot =  0, xtype = 18, account = 3, cost = 250, note = "Tank = Rogue > Mage"}, -- Ouro's Intact Hide
  [20933] = {boss = 717, slot =  0, xtype = 18, account = 3, cost = 250, note = "Mage > WL = Shadow"}, -- Husk of the Old God
  [20929] = {boss = 717, slot =  0, xtype = 18, account = 3, cost = 250, note = "Tank = Rogue"}, -- Carapace of the Old God
  [21221] = {boss = 717, slot =  0, xtype =  0, account = 3, cost = 400, note = "Mage = WL = Shadow = Healer > Hunter > Rogue"}, -- Eye of C'Thun

  -- Skeram:
  [21702] = {boss = 709, slot =  2, xtype =  0, account = 3, cost =   0, note = "NR Meele > Hunter > Rest"}, -- Amulet of Foul Warding
  [21700] = {boss = 709, slot =  2, xtype =  0, account = 3, cost =  20, note = "Tank"}, -- Pendant of the Qiraji Guardian
  [21814] = {boss = 709, slot =  5, xtype =  4, account = 3, cost = 160, note = "Fury > Ret-Paladin > Fury-Prot"}, -- Breastplate of Annihilation
  [21698] = {boss = 709, slot =  9, xtype =  2, account = 3, cost =  40, note = "Moonkin, Heal-Druid In-Between-Item"}, -- Leggings of Immersion
  [21703] = {boss = 709, slot = 16, xtype =  8, account = 3, cost =  20, note = "Crap"}, -- Hammer of Ji'zhi
  [21708] = {boss = 709, slot =  6, xtype =  2, account = 3, cost =   0, note = "NR Meele > Hunter > Rest"}, -- Beetle Scaled Wristguards
  [21707] = {boss = 709, slot = 11, xtype =  0, account = 3, cost =  60, note = "Caster DPS In-Between-Item"}, -- Ring of Swarming Thought
  [21699] = {boss = 709, slot =  3, xtype =  3, account = 3, cost =  80, note = "Hunter"}, -- Barrage Shoulders
  [21128] = {boss = 709, slot = 16, xtype = 10, account = 3, cost =  40, note = "Caster"}, -- Staff of the Qiraji Prophets
  [21704] = {boss = 709, slot = 10, xtype =  4, account = 3, cost =  80, note = "Heal-Paladin"}, -- Boots of the Redeemed Prophecy
  [21705] = {boss = 709, slot = 10, xtype =  3, account = 3, cost =  40, note = "Shaman"}, -- Boots of the Fallen Prophet
  [21706] = {boss = 709, slot = 10, xtype =  4, account = 3, cost = 100, note = "Tank"}, -- Boots of the Unwavering Will
  [21701] = {boss = 709, slot =  4, xtype =  0, account = 3, cost = 200, note = "Tank = Melee > Hunter"}, -- Cloak of Concentrated Hatred

  -- Bugs:
  [21681] = {boss = 710, slot = 11, xtype =  0, account = 3, cost =  60, note = "Heal"}, -- Ring of the Devoured
  [21685] = {boss = 710, slot = 12, xtype =  0, account = 3, cost =  40, note = "Caster"}, -- Petrified Scarab
  [21680] = {boss = 710, slot =  5, xtype =  2, account = 3, cost = 160, note = "Feral"}, -- Vest of Swift Execution
  [21603] = {boss = 710, slot = 17, xtype = 15, account = 3, cost = 120, note = "Caster"}, -- Wand of Qiraji Nobility
  [21682] = {boss = 710, slot =  7, xtype =  2, account = 3, cost =   0, note = "NR Melee, Hunter"}, -- Bile-Covered Gauntlets
  [21686] = {boss = 710, slot =  3, xtype =  1, account = 3, cost =  60, note = "Fire-Mage"}, -- Mantle of Phrenic Power
  [21683] = {boss = 710, slot =  3, xtype =  4, account = 3, cost =  60, note = "Heal-Paladin"}, -- Mantle of the Desert Crusade
  [21684] = {boss = 710, slot =  3, xtype =  3, account = 3, cost =  20, note = "Shaman"}, -- Mantle of the Desert's Fury
  [21687] = {boss = 710, slot = 11, xtype =  0, account = 3, cost =   0, note = "SR WL"}, -- Ukko's Ring of Darkness
  [21694] = {boss = 710, slot =  3, xtype =  1, account = 3, cost = 160, note = "Priest > Druid > Paladin"}, -- Ternary Mantle
  [21696] = {boss = 710, slot =  5, xtype =  1, account = 3, cost =   0, note = "NR Caster"}, -- Robes of the Triumvirate
  [21692] = {boss = 710, slot =  8, xtype =  4, account = 3, cost =  60, note = "Fury, Ret-Paladin"}, -- Triad Girdle
  [21695] = {boss = 710, slot = 11, xtype =  0, account = 3, cost =  80, note = "Tank"}, -- Angelista's Touch
  [21697] = {boss = 710, slot =  4, xtype =  0, account = 3, cost = 120, note = "Caster DD"}, -- Cape of the Trinity
  [21693] = {boss = 710, slot =  1, xtype =  2, account = 3, cost =  80, note = "Bear"}, -- Guise of the Devourer
  [21690] = {boss = 710, slot =  2, xtype =  0, account = 3, cost =  80, note = "Heal"}, -- Angelista's Charm
  [21691] = {boss = 710, slot =  7, xtype =  4, account = 3, cost =   0, note = "NR Warrior"}, -- Ooze-ridden Gauntlets
  [21689] = {boss = 710, slot =  7, xtype =  2, account = 3, cost =  60, note = "Moonkin, Heal-Druid In-Between-Item"}, -- Gloves of Ebru
  [21688] = {boss = 710, slot = 10, xtype =  4, account = 3, cost =  80, note = "Warrior"}, -- Boots of the Fallen Hero

  -- Sartura:
  [21670] = {boss = 711, slot = 12, xtype =  0, account = 3, cost = 340, note = "Hunter = Rogue > Fury"}, -- Badge of the Swarmguard
  [21667] = {boss = 711, slot =  9, xtype =  4, account = 3, cost = 160, note = "Heal-Paladin"}, -- Legplates of Blazing Light
  [21675] = {boss = 711, slot =  8, xtype =  2, account = 3, cost = 160, note = "Bear"}, -- Thick Qirajihide Belt
  [21676] = {boss = 711, slot =  9, xtype =  1, account = 3, cost = 120, note = "Fire-Mage"}, -- Leggings of the Festering Swarm
  [21678] = {boss = 711, slot =  2, xtype =  0, account = 3, cost =   0, note = "NR Caster"}, -- Necklace of Purity
  [21672] = {boss = 711, slot =  7, xtype =  2, account = 3, cost = 200, note = "Sword-Rogue = Cat"}, -- Gloves of Enforcement
  [21669] = {boss = 711, slot =  1, xtype =  2, account = 3, cost = 120, note = "Heal-Druid/Paladin"}, -- Creeping Vine Helm
  [21671] = {boss = 711, slot =  5, xtype =  1, account = 3, cost =  80, note = "Caster"}, -- Robes of the Battleguard
  [21666] = {boss = 711, slot = 15, xtype =  0, account = 3, cost = 240, note = "Heal BiS OH"}, -- Sartura's Might
  [21668] = {boss = 711, slot =  9, xtype =  3, account = 3, cost =  20, note = "Shaman"}, -- Scaled Leggings of Qiraji Fury
  [21673] = {boss = 711, slot = 14, xtype = 11, account = 3, cost = 280, note = "Hunter"}, -- Silithid Claw
  [21674] = {boss = 711, slot =  7, xtype =  4, account = 3, cost = 100, note = "Tank In-Between-Item"}, -- Gauntlets of Steadfast Determination
  [21648] = {boss = 711, slot = 10, xtype =  1, account = 3, cost =   0, note = "NR Caster"}, -- Recomposed Boots

  -- Fankriss:
  [21652] = {boss = 712, slot =  5, xtype =  4, account = 3, cost =   0, note = "NR Warrior, Paladin"}, -- Silithid Carapace Chestguard
  [22402] = {boss = 712, slot = 17, xtype =  0, account = 3, cost =  80, note = "Paladin"}, -- Libram of Grace
  [21647] = {boss = 712, slot = 12, xtype =  0, account = 3, cost =  80, note = "WL = Shadow > Rest"}, -- Fetish of the Sand Reaver
  [21665] = {boss = 712, slot =  3, xtype =  2, account = 3, cost = 160, note = "Cat BiS"}, -- Mantle of Wicked Revenge
  [21663] = {boss = 712, slot =  5, xtype =  1, account = 3, cost = 250, note = "Priest > Druid > Paladin"}, -- Robes of the Guardian Saint
  [21639] = {boss = 712, slot =  3, xtype =  4, account = 3, cost = 120, note = "Tank In-Between-Item"}, -- Pauldrons of the Unrelenting
  [21651] = {boss = 712, slot =  9, xtype =  3, account = 3, cost =  20, note = "Hunter"}, -- Scaled Sand Reaver Leggings
  [21664] = {boss = 712, slot =  2, xtype =  0, account = 3, cost = 120, note = "Melee, Hunter"}, -- Barbed Choker
  [21645] = {boss = 712, slot = 10, xtype =  2, account = 3, cost =  60, note = "Bear"}, -- Hive Tunneler's Boots
  [22396] = {boss = 712, slot = 17, xtype =  0, account = 3, cost =  80, note = "Shaman"}, -- Totem of Life
  [21627] = {boss = 712, slot =  4, xtype =  0, account = 3, cost =   0, note = "SR WL"}, -- Cloak of Untold Secrets
  [21650] = {boss = 712, slot = 13, xtype =  0, account = 3, cost = 280, note = "Fury = Rogue"}, -- Ancient Qiraji Ripper
  [21635] = {boss = 712, slot = 16, xtype =  9, account = 3, cost =  40, note = "Hunter"}, -- Barb of the Sand Reaver

  -- Viscidus:
  [21622] = {boss = 713, slot = 14, xtype =  0, account = 3, cost = 320, note = "Caster"}, -- Sharpened Silithid Femur
  [22399] = {boss = 713, slot = 17, xtype =  0, account = 3, cost = 120, note = "Heal-Druid"}, -- Idol of Health
  [21677] = {boss = 713, slot = 11, xtype =  0, account = 3, cost = 140, note = "Physical DD"}, -- Ring of the Qiraji Fury
  [21626] = {boss = 713, slot =  9, xtype =  3, account = 3, cost =   0, note = "NR"}, -- Slime-coated Leggings
  [21625] = {boss = 713, slot = 12, xtype =  0, account = 3, cost = 160, note = "Heal"}, -- Scarab Brooch
  [21624] = {boss = 713, slot =  7, xtype =  3, account = 3, cost = 120, note = "Shaman"}, -- Gauntlets of Kalimdor
  [21623] = {boss = 713, slot =  7, xtype =  4, account = 3, cost = 120, note = "Ret-Paladin"}, -- Gauntlets of the Righteous Champion

  -- Huhuran:
  [21618] = {boss = 714, slot =  6, xtype =  4, account = 3, cost = 140, note = "Fury, Ret-Paladin"}, -- Hive Defiler Wristguards
  [21619] = {boss = 714, slot =  7, xtype =  1, account = 3, cost = 120, note = "Heal Priest BiS, Druid"}, -- Gloves of the Messiah
  [21616] = {boss = 714, slot = 17, xtype =  2, account = 3, cost =  60, note = "Rogue = Fury > Hunter"}, -- Huhuran's Stinger
  [21620] = {boss = 714, slot = 11, xtype =  0, account = 3, cost = 240, note = "Heal"}, -- Ring of the Martyr
  [21621] = {boss = 714, slot =  4, xtype =  0, account = 3, cost =  80, note = "Tank"}, -- Cloak of the Golden Hive
  [21617] = {boss = 714, slot =  7, xtype =  2, account = 3, cost = 140, note = "Heal-Druid"}, -- Wasphide Gauntlets

  -- Twins:
  [21598] = {boss = 715, slot =  8, xtype =  4, account = 3, cost = 220, note = "Tank"}, -- Royal Qiraji Belt
  [21597] = {boss = 715, slot = 15, xtype =  0, account = 3, cost = 240, note = "Caster"}, -- Royal Scepter of Vek'lor
  [21601] = {boss = 715, slot = 11, xtype =  0, account = 3, cost = 180, note = "Bear, Tank"}, -- Ring of Emperor Vek'lor
  [21600] = {boss = 715, slot = 10, xtype =  1, account = 3, cost = 160, note = "Caster BiS"}, -- Boots of Epiphany
  [21599] = {boss = 715, slot =  7, xtype =  3, account = 3, cost =  60, note = "Hunter"}, -- Vek'lor's Gloves of Devastation
  [21602] = {boss = 715, slot =  6, xtype =  2, account = 3, cost = 200, note = "Rogue, Feral > Fury"}, -- Qiraji Execution Bracers
  [21608] = {boss = 715, slot =  2, xtype =  0, account = 3, cost = 240, note = "Caster"}, -- Amulet of Vek'nilash
  [21604] = {boss = 715, slot =  6, xtype =  1, account = 3, cost = 200, note = "Heal"}, -- Bracelets of Royal Redemption
  [21607] = {boss = 715, slot =  8, xtype =  3, account = 3, cost =  20, note = "Shaman"}, -- Grasp of the Fallen Emperor
  [21606] = {boss = 715, slot =  8, xtype =  4, account = 3, cost =  40, note = "Heal-Paladin"}, -- Belt of the Fallen Emperor
  [21605] = {boss = 715, slot =  7, xtype =  2, account = 3, cost = 140, note = "Bear"}, -- Gloves of the Hidden Temple
  [21679] = {boss = 715, slot = 16, xtype =  6, account = 3, cost = 160, note = "Warrior"}, -- Kalimdor's Revenge
  [21609] = {boss = 715, slot =  8, xtype =  2, account = 3, cost = 100, note = "Heal-Druid/Paladin"}, -- Regenerating Belt of Vek'nilash

  -- Ouro:
  [21611] = {boss = 716, slot =  6, xtype =  1, account = 3, cost = 120, note = "Shadow"}, -- Burrower Bracers
  [21615] = {boss = 716, slot =  1, xtype =  1, account = 3, cost = 180, note = "Heal-Priest/Paladin"}, -- Don Rigoberto's Lost Hat
  [23570] = {boss = 716, slot = 12, xtype =  0, account = 3, cost = 310, note = "Physical DD"}, -- Jom Gabbar
  [23557] = {boss = 716, slot = 17, xtype =  3, account = 3, cost = 260, note = "Hunter, Rogue, Fury"}, -- Larvae of the Great Worm
  [23558] = {boss = 716, slot = 12, xtype =  0, account = 3, cost =  60, note = "Tank"}, -- The Burrower's Shell
  [21610] = {boss = 716, slot = 15, xtype =  9, account = 3, cost = 220, note = "Paladin, Shaman"}, -- Wormscale Blocker

  -- C'Thun:
  [22730] = {boss = 717, slot =  8, xtype =  1, account = 3, cost = 220, note = "Caster"}, -- Eyestalk Waist Cord
  [21579] = {boss = 717, slot = 12, xtype =  0, account = 3, cost =  40, note = "Fun Item"}, -- Vanquished Tentacle of C'Thun
  [21134] = {boss = 717, slot = 16, xtype =  1, account = 3, cost = 320, note = "Ret-Paladin, PvP"}, -- Dark Edge of Insanity
  [21582] = {boss = 717, slot =  8, xtype =  1, account = 3, cost = 220, note = "Priest > Druid > Paladin"}, -- Grasp of the Old God
  [21586] = {boss = 717, slot =  8, xtype =  2, account = 3, cost = 220, note = "Rogue, Cat > Fury"}, -- Belt of Never-ending Agony
  [22732] = {boss = 717, slot =  2, xtype =  0, account = 3, cost = 280, note = "Tank, Bear"}, -- Mark of C'Thun
  [21596] = {boss = 717, slot = 11, xtype =  0, account = 3, cost = 140, note = "Hunter, Rogue, Fury"}, -- Ring of the Godslayer
  [21126] = {boss = 717, slot = 13, xtype =  5, account = 3, cost = 320, note = "Rogue > Warrior, Hunter"}, -- Death's Sting
  [21585] = {boss = 717, slot =  7, xtype =  1, account = 3, cost = 180, note = "Caster"}, -- Dark Storm Gauntlets
  [21581] = {boss = 717, slot =  7, xtype =  4, account = 3, cost = 160, note = "Fury, Ret-Paladin"}, -- Gauntlets of Annihilation
  [21839] = {boss = 717, slot = 14, xtype =  4, account = 3, cost = 320, note = "Heal"}, -- Scepter of the False Prophet
  [21583] = {boss = 717, slot =  4, xtype =  0, account = 3, cost = 200, note = "Heal"}, -- Cloak of Clarity
  [22731] = {boss = 717, slot =  4, xtype =  0, account = 3, cost = 200, note = "Caster"}, -- Cloak of the Devoured

  -- Trash:
  [21836] = {boss =   1, slot = 11, xtype =  0, account = 3, cost = 180, note = "Caster"}, -- Ritssyn's Ring of Chaos
  [21856] = {boss =   1, slot = 16, xtype =  1, account = 3, cost =  80, note = "PvP"}, -- Neretzek, The Blood Drinker
  [21837] = {boss =   1, slot = 13, xtype =  4, account = 3, cost = 100, note = "1H Melee Mace"}, -- Anubisath Warhammer
  [21888] = {boss =   1, slot =  7, xtype =  1, account = 3, cost =   0, note = "Stamina Gloves"}, -- Gloves of the Immortal
  [21838] = {boss =   1, slot =  5, xtype =  1, account = 3, cost =  80, note = "Caster"}, -- Garb of Royal Ascension
  [21889] = {boss =   1, slot =  7, xtype =  4, account = 3, cost =  60, note = "Heal-Paladin"}, -- Gloves of the Redeemed Prophecy
  [21891] = {boss =   1, slot = 12, xtype =  0, account = 3, cost =  60, note = "AoE/Fun Item"}, -- Shard of the Fallen Star

}

------------------------------------------------------------

-- export items
ADDON.InitGroup.Items = ADDON.InitGroup.Items or {}
for k,v in pairs(items) do
  ADDON.InitGroup.Items[k] = v
end
items = nil
