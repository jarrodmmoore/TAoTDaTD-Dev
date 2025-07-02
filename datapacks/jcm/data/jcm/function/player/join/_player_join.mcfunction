#executed by a player at the instant they join the server

#remove debug tags
tag @s remove forceGameplay

#join or become spectator depending on game state
execute unless score #gameState value matches 1 run function jcm:player/join/join_lobby
execute if score #gameState value matches 1 run function jcm:player/join/join_spectator

#spawnpoint always in lobby room
spawnpoint @s 0 202 -21

#sync up with global time
scoreboard players operation @s joinTick = #globalTime value

#not on a team
team leave @s

#clear titles and sound
stopsound @s
title @s times 0 45 5
title @s subtitle [""]
title @s title [""]
title @s actionbar [""]

#attributes
function jcm:player/reset_attributes

#fade-in
effect give @s blindness 2 1 true

#cleanup some stuff
tag @s remove noInventory
tag @s remove getMotionOnDismount
tag @s remove bodyHideHead
tag @s remove bodyHideChest
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots

#instantiate scores
scoreboard players set @s inputCooldown 0
scoreboard players set @s inputCooldownA 0
scoreboard players set @s inputCooldownB 0
scoreboard players set @s inputCooldownC 0
scoreboard players set @s inputCooldownD 0
scoreboard players set @s inputCooldownE 0
scoreboard players set @s actionbarCooldown 0
scoreboard players set @s launchCooldown 0
scoreboard players set @s interactNearby 0
scoreboard players add #playerID value 1
scoreboard players operation @s playerID = #playerID value