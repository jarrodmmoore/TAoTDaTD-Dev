ride @s dismount

#shrunken dum gets thrown further
execute if entity @s[scores={playerCharacter=2,playerSize=1}] run scoreboard players set $strength player_motion.api.launch 12000

#throw
execute positioned as @s run function player_motion:api/launch_looking
scoreboard players set @s launchCooldown 10