# Why EPGP is the best system

Okay, maybe the title is a little provocative. Of course, *the* best system does not exist, otherwise everybody would use it.
But some systems are better than others. And you might not notice the problems in *your* system until you run headlong into them.

## The case against bidding

In short, bidding is a bad idea. Simply let the market decide. What could possibly go wrong?

Bidding Pros:
- It is easier to set up because you do not have to decide on prices ahead of time.
- It allows the most freedom. If you want to spend all your points on a single item, you can.
- Players cannot blame the management, only themselves.

Bidding Cons:
- It awards people who are good at estimating prices and playing markets, not players who are good at playing the game.
- It feels bad if somebody else got the same item as you just two weeks later for half the price due to changes in the market.
- It gives an advantage to nieche classes/specs with little competition. They will often get items for the minimum amount because the competition sets the price, not the quality of the item.
- The last person to get an item will get it for the minimum amount. Anticipating this, the second to last person will also be reluctant to bid very much (implicit collusion).
- Two or more people can secretly agree not to compete against each other (explicit collusion), in order to keep prices low for themselves, to the detriment of those not in on the agreement.

This last point is the most damning in my opinion. You might guess that collusion is going on but cannot even prove it.

Of course, there are other problems like rampant inflation causing difficulty for new members to gain a foothold, but those can be overcome by using weekly taxation. Other systems such as Zero Sum and Suicide Kings solve inflation but introduce new problems, so I am not even going into them.

## Fixed prices

Fixing prices beforehand allows for two kinds of balancing:
- between incoming points (EP) and outgoing points (GP), thus preventing most inflation
- between items of different qualities

The management sets prices, not players, so there can be no collusion and no trickery of any kind. The only thing players can control is their own attendence and what items they bid on. The bidding process is usually also simpler and faster because you only need to type a "+".

Example for Blackwing Lair:
- T2 Waist/Wrist +80 GP
- T2 Hands/Feet +120 GP
- T2 Shoulder/Chest +160 GP
- 1H Weapon +280 GP
- 2H Weapon +400 GP
- Drama Item (Trinket/Ring) +400 GP

DKP awarded per Boss: +10 EP

There are 8 bosses in BWL dropping around 20 items in total (not counting disenchants), so a player can reasonably expect to receive one item every two weeks. If they get +160 EP in the same time, this is therefore also the amount of GP they should have to spend per item on average.

Check out the existing price lists already included with LuaDKP:
- [BWL Price List](../Manager/Defaults/MyGroup/Settings/BWL.lua)
- [AQ40 Price List](../Manager/Defaults/MyGroup/Settings/AQ40.lua)
- [Naxx Price List](../Manager/Defaults/MyGroup/Settings/Naxx.lua)
- (TBC Lists coming soon...)

## Avoiding drama

Whatever system you choose, you should avoid drama at all cost. Drama is when several people cause an uproar and then leave the raid and/or guild all at the same time. Most people will tolerate small imperfections in a system. The more variables you lock down and the more transparent, coherent and fair it appears to be, the better for everyone. "Fair" meaning the time you put in vs. the items you get out of it. If the word "fair" means something different to you, e.g. the people most deserving in the eyes of the management, you should probably go with Loot Council.

## The advantages of EPGP

You could think of EPGP not as a DKP but as a statistic. Your score is the ratio between the bosses you have killed and the items you have received, between the effort you have put in and the benefits you have reaped. Still, like any DKP, it retains the possibility of applying corrections, e.g. for being there on time, for sitting on the bench or if someone misbehaves. New players are treated very well and can usually expect to receive an item on the second or third run, almost the same as any other raid member.
