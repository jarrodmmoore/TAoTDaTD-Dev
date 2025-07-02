scoreboard players reset * itemSpawn
scoreboard players reset * valid
scoreboard players reset * playerCharacter
scoreboard players reset * itemValidSpawn

#play time
scoreboard players set #playTime value 0

#game state is 0 again
scoreboard players set #gameState value 0
function jcm:game/0/summon_props

#minor time variation...
scoreboard players set #10Hz value 0
scoreboard players set #5Hz value 1
scoreboard players set #2Sec value 2

#player data
data modify storage jcm:data dee_checkpoint set value [0,23,3,-20]
data modify storage jcm:data dee_abilities set value [0,0,0,0,0]
scoreboard players set #deeGold value 0

data modify storage jcm:data dum_checkpoint set value [0,23,3,-20]
data modify storage jcm:data dum_abilities set value [0,0,0,0,0]
scoreboard players set #dumGold value 0

#major collectibles
scoreboard players set #collectedBlazePowder value 0
scoreboard players set #collectedBottle1 value 0
scoreboard players set #collectedBottle2 value 0
scoreboard players set #collectedGhastTear value 0
scoreboard players set #collectedApple1 value 0
scoreboard players set #collectedApple2 value 0
scoreboard players set #foundBrewingStand value 0
scoreboard players set #collectedNetherWart value 0

#area-specific flags
function jcm:area/tutorial/_reset_flags
function jcm:area/central_caves/_reset_flags
function jcm:area/ancient_city/_reset_flags
function jcm:area/lush_caves/_reset_flags
function jcm:area/waterworks/_reset_flags
function jcm:area/arid_cliff/_reset_flags
function jcm:area/golden_gardens/_reset_flags
function jcm:area/gusty_tower/_reset_flags

#game data
scoreboard players set #gameProgress value 0
# 0 = not started
# 1 = watched intro
# 2 = completed tutorial
#...
# 100 = beat the game