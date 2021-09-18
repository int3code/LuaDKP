## Quick Q&A

Below you will find some quick questions and answers. It will give you a general idea on how things are supposed to work without going into too much detail.

### General

**Q: Do I really need to download manager.zip from GitHub to get this thing to work?**\
A: Yes. The addon from CurseForge is basically just the tracker and ingame helper. The complete configuration and all your raids are kept in the external manager component. Without that, the system is completely useless. You can read more about the reasons [here](LuaDKP_vs_other_addons.md).

**Q: How do I configure this thing?**\
A: LuaDKP should be working out of the box. Even the EPGP lists are already included. But of course, you will have to make some changes, e.g. add player names, add corrections etc. The [Groups\MyGroup](/Manager/Defaults/MyGroup) folder contains all configuration and raid data. Simply edit those files.

**Q: Should I edit Lua files? What happens if I make a mistake, e.g. forget a comma or a closing bracket?**\
A: The format is not that hard to grasp. Any file under Groups is safe to edit. But yeah, if you make a mistake, the addon won't load. Use "/console scriptErrors 1" ingame or start the manager console to find out in what file and on which line the offending part is. It should be an easy fix. Ask on Discord if you need help. Worst case, you can always go back to the initial configuration, compare with your files and carefully work the changes back in.

**Q: Why do I have to type so much ingame using those "/dkp" commands?**\
A: I know. I hate writing GUIs, but I see that users really like them, so it's on the to-do list. In the meantime, if you want more comfort, you could make macros for "/dkp stop" and "/dkp assign 1" etc. to ease the load a bit.

### DKP

**Q: How do I change EP for a given boss?**\
A: In Groups\MyGroup\Settings, edit [Bosses.lua](/Manager/Defaults/MyGroup/Settings/Bosses.lua).

**Q: How do I change GP for one or more specific items?**\
A: In Groups\MyGroup\Settings, edit the corresponding lists, e.g. [SSC.lua](/Manager/Defaults/MyGroup/Settings/SSC.lua).

**Q: How do I change the assignment of an item to a different player, e.g. if players decide to trade items after a raid?**\
A: Simply edit the corresponding raid file in Groups\MyGroup\Raids. Look up the desired player number under "players" and then adjust "drops" and the comment at the end.

**Q: How do I make quick DKP corrections, e.g. add rewards or punishments?**\
A: In Groups\MyGroup\Settings, edit [Corrections.lua](/Manager/Defaults/MyGroup/Settings/Corrections.lua). Add new player numbers to "players" and a new line to the list.

**Q: Does the system support alternative characters (alts)?**\
A: Not directly, but you can change names in your raid files, i.e. make it look as if a player participated with their main character. Alternatively, you can also add a correction, i.e. subtract EP and GP from the alt and add the same amounts to the main.

**Q: What happens to existing DKP scores if I change EP or GP values later on?**\
A: All DKP scores are always re-calculated from scratch based on your raid files and configuration, i.e. there is no database holding current values that would need to be adjusted. If an item gets cheaper in the future, past purchases are automatically taken into account and also benefit from the change.

**Q: Does the system support weekly decay/taxation?**\
A: Not yet, but everything is prepared for it (e.g. timestamps) if the feature gets added later on. Honestly, I'm not sure it's really required. Inflation isn't much of a problem in EPGP with fixed prices and the system is also fair to newcomers.

### Accounts

**Q: How do I change the name of my raid group?**\
A: You can rename the MyGroup folder to anything you want.

**Q: How do I add another raid group to my existing LuaDKP installation?**\
A: Simply copy an existing group to a new folder, e.g. Groups\MyNewGroup. Make changes to copied files where necessary. This also works great for testing new settings.

**Q: Can I subdivide items into separate accounts?**\
A: You should probably keep all items assigned to a single raid tier account. But if you really want, you can create new accounts in [Accounts.lua](/Manager/Defaults/MyGroup/Settings/Accounts.lua) and then assign items by adjusting the item lists.

### Reports

**Q: How do I change the title in HTML reports?**\
A: In Groups\MyGroup\Settings, edit [Settings.lua](/Manager/Defaults/MyGroup/Settings/Settings.lua).

**Q: How do I add class colors to player names in HTML reports?**\
A: In Groups\MyGroup\Settings, edit [Roster.lua](/Manager/Defaults/MyGroup/Settings/Roster.lua) and add class, role and nickname where required (to deal with special characters).

**Q: How do I change the language in HTML reports, e.g. for localized item names?**\
A: In Groups\MyGroup\Settings, edit the "lang" property in [Settings.lua](/Manager/Defaults/MyGroup/Settings/Settings.lua).

**Q: How do I remove inactive players from HTML reports?**\
A: In Groups\MyGroup\Settings, add their player names to [Inactive.lua](/Manager/Defaults/MyGroup/Settings/Inactive.lua). You should NOT remove them from raid files. They were present in the raid. Removing them would be *lying* and also mess with statistics.

### Technical

**Q: manager.zip contains a lua5.1.exe file in the Bin folder! Do I need to worry about viruses?**\
A: It's the official Lua interpreter from SourceForge compiled in 2014. It was included for your convenience. If you're worried, delete both the EXE and DLL file and download the original yourself. Read the [readme.txt](/Manager/Bin/readme.txt) on how to do that.

**Q: How do I backup my data?**\
A: All you need is inside the Groups folder. Just copy that folder or create a ZIP archive and store it somewhere safe.

**Q: How do I publish my HTML reports?**\
A: Uploading them to Discord is probably the easiest way. If your guild has a website, that works too.

**Q: How do I share my actual data with others, e.g. other raid leaders? I can't always be there.**\
A: Send them your complete Groups folder or individual raid files. Have them send their tracked raids back to you. When dealing with configuration, it's probably best if a single person is responsible and communicates changes as necessary.
