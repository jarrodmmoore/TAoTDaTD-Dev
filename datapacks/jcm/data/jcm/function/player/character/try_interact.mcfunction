#open nearby chests (DISABLED because it opens up exploits)
#tag @s add reciever
#execute as @e[type=interaction,tag=chestInteraction,distance=..8] at @s run function jcm:object/chest_open
#tag @s remove reciever

#talk to nearby dudes (if LOS is valid)
execute positioned ~ ~1 ~ as @e[tag=npc,distance=..7] unless score @s age matches 1.. facing entity @s feet if function jcm:common/check_los run scoreboard players set @s age 1