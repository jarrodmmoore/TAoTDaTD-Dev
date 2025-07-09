# The Adventures of Tweedle Dee and Tweedle Dum
A 2-player Minecraft: Java Edition adventure map. You and your partner play as humanoid mutants that use their unique abilities to explore, fight, and solve puzzles.

## Installation
This repository is the world file containing everything needed to play the map. It should be placed in `.minecraft/saves` as an uncompressed folder.

## Links
- Planet Minecraft page: https://www.planetminecraft.com/project/the-adventures-of-tweedle-dee-and-tweedle-dum/
- StickyPiston trial page: https://trial.stickypiston.co/map/adventuresoftweedledeedum

## Map Jam
- This map was originally created in 4 days for the 2025 Java Creators MapJam.


# Development

## Editor
Enter Creative Mode and type `/trigger editor` to place objects like gold, chests, and waypoints

- Buttons, when pressed, set the block directly beneath their position to `redstone_block`. Use `/execute if block` to detect when they're pressed.

- Chests needs an associated ID, assigned via `/scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=spawnChest] chestID <number>`
```
1 = Blaze Powder
2 = Nether Wart
3 = Ghast Tear
4 = Glass Bottle 1
5 = Glass Bottle 2
6 = Apple 1
7 = Apple 2
8 = Gold Ingot
```

- Cauldrons need multiple IDs, assigned via `/scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=cauldron] cauldronID <number>`
- ...and `/scoreboard players set @e[limit=1,sort=nearest,type=marker,tag=cauldron] cauldronID2 <number>`
```
0 = unused (Dee)
1 = Extend
2 = Pick Up
3 = Trampoline
4 = Clone
...
10 = Rollout
11 = Shrink
12 = Inhale
13 = Inflate
14 = unused (Dum)
```
- cauldronID is the ability the cauldron gives in the first playthrough
- caludronID2 is the ability given in New Game +
- When a cauldron is placed, Barrier blocks should be placed in a 3x3 in the bottom half of the model (otherwise it won't acknowledge when players get inside)
- Cauldrons should be surrounded by Iron Doors (they're invisible) to give them proper collision

## Testing
- `/tag @s add forceGameplay` allows you to play the game without a partner
- `/scoreboard players set @s playerCharacter 1` to switch to Tweedle Dee
- `/scoreboard players set @s playerCharacter 2` to switch to Tweedle Dum
- `/function jcm:__` to see a list of other useful debug commands
