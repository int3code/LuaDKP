local _, ADDON = ...

------------------------------------------------------------

-- basedir: Needs to point to your WoW base directory.
-- It's the one that contains Interface and WTF.
-- Only use normal slashes, not backslashes!

-- interface: TOC file addon version. Increase this when
-- WoW complains about the addon being outdated. Look
-- at other addons' TOC files to get the current number.

-- expansion: Valid values are "classic", "tbc" and "retail"

local config = {
  basedir = "C:/Games/World of Warcraft/_classic_",
  interface = "20502",
  expansion = "tbc",
}

------------------------------------------------------------

-- export tables
ADDON.Config = config
