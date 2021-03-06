# LuaDKP

All-in-one package with:
- DKP system based on EPGP with fixed prices (no bidding!)
- Ingame addon for tracking & loot distribution
- HTML generator for statistics (upload to Discord!)
- Support for multiple accounts and raid groups
- Configuration and data are stored in text files
- Easy to edit and backup
- Also works outside of guilds (no officer notes required)

This package consists of two parts:
- The addon for tracking raids, displaying scores and assigning items
- An external manager component (written in Lua and run with the official Lua interpreter) to import/export data and generate HTML reports

Installation:
- Download [addon.zip](https://github.com/int3code/LuaDKP/releases/latest/download/addon.zip) and unpack it to WoW's Interface/Addons folder
- Download [manager.zip](https://github.com/int3code/LuaDKP/releases/latest/download/manager.zip) and unpack it to your Desktop or Documents folder

*Important: You need both parts (addon and manager) for the package to work as intended!*

How to get help:
- Watch the demo video on YouTube: https://www.youtube.com/watch?v=urjL5tsLxF8
- Try the example report: https://int3code.github.io/LuaDKP/example.html
- You can reach me via Discord: https://discord.gg/MqsXMn5YGG

Questions & Answers:
- [Quick Q&A](docs/Quick_Q&A.md)

Ideas & Considerations:
- [Introduction to EPGP](docs/Introduction_to_EPGP.md)
- [Why EPGP is the best system](docs/Why_EPGP_is_the_best_system.md)
- [LuaDKP vs. other addons](docs/LuaDKP_vs_other_addons.md)

Source Install (if you want to contribute):
- Use Git to clone the repository to your computer
- Create a symlink or copy the Addon folder to Interface/Addons/LuaDKP-Core
- Copy the contents of Manager/Defaults to Manager/Config.lua and Manager/Groups/MyGroup
