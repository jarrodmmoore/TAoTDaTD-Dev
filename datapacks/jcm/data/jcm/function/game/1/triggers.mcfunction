#players can quit whenever
scoreboard players enable @a[scores={playerCharacter=1..2}] quit
execute as @a if score @s quit matches 1.. run return run function jcm:player/quit_trigger
#players can respawn whenever
scoreboard players enable @a[scores={playerCharacter=1..2}] respawn
execute as @a if score @s respawn matches 1.. run return run function jcm:player/checkpoint/try_warp_to_checkpoint