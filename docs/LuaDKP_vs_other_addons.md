# LuaDKP vs. other addons

The way LuaDKP works is quite different compared to other addons. It has an external component that is tightly integrated and **not** optional. The main goal is to get all data out of WoW as quickly as possible. Let me explain...

## WoW's addon storage

Addons cannot write data into files on their own. Instead, they rely on WoW to do it for them, i.e. loading data from the WTF folder when the game starts and saving data back to the WTF folder when the game ends. Every addon gets two files that it can use for storage, one per character and one per account.

This works great for small addons that only store a few options. It is also acceptable for larger addons that may store a lot of data but where it is not a huge problem if you lose any of it and need to start fresh (e.g. Questie, Auctionator, DPS meter etc).

But it is a big problem for DKP addons that require extensive configuration and/or contain a lot of important data such as:
- customized price lists
- tracked raids containing participants, boss kills and distributed loot
- the above not just for your last raid but all raids since you started

I do not know about you, but my data is important! The well-being of my raid and/or guild depends on it!

Therefore, it is not ideal if that data is:
- crammed into just two files
- in some garbled unreadable format
- stored somewhere deep inside the WTF folder
- that I do not regularly backup (do you?)

## How other addons do it

One way to solve it is to simply accept that the data usually remains inside of WoW and try to build around that.

This means using:
- synchronization
- configuration dialogs
- data management dialogs
- a permission system
- score lists

Synchronization means that the addon uses the ingame addon communication channel to send its data to other raid members who also have the same addon installed. This also serves as some kind of pseudo backup. If you lose your data, simply fetch the latest copy from somebody else. (Hopefully, it is not possible to send an empty list to everyone, thereby deleting all data everywhere.)

Since you cannot easily access the stored data directly, you depend on the addon to provide configuration and data management dialogs for absolutely everything. And because other people have the same data and addon as you, there had better be some kind of permission system in place to prevent others from messing around. Usually, that means guild membership and officer status is required (certainly for you, maybe for others as well).

Since all data is ingame already, why not make some nice ingame score lists that can be browsed, searched, sorted etc. Of course, that means all other raid members also need to install the addon if they want the full experience. And as an afterthought, maybe some other programmer writes an external application that allows you to export and upload the score lists to Discord or your website.

## How LuaDKP does it

Except, if you have an external application anyway that exports and uploads the data, why not use that as the primary solution for everything? Once the data is exported and in the proper format, it is way easier to backup and manipulate. Basically, you can discard all of the requirements above. Instead, you get new requirements...

Storage:
- After every raid, get the tracked data out of WoW asap!
- Store raids in individual files, properly named, in machine and human readable format, outside of the WoW directory.

Maintainability:
- Ditch ingame configuration! Do it outside of WoW instead. Use config files. Trust the user to have some basic file editing skills.
- If a programming language outside of WoW is required, why not use the official Lua interpreter, since Lua is already used for addons.

Reports:
- Ditch ingame score lists! Do not force every raid member to have your addon installed just to view scores.
- Generate single-file HTML reports instead! Upload to Discord! Or a website.

Doing this, you get a fully functional DKP system that has 3,000 lines of code, making it rather easy to maintain. Compare this to other DKP addons that may have as many as 18,000 lines of code.
