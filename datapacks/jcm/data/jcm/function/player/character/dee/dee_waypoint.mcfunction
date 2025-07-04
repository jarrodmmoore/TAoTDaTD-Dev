#waypoint exists nearby? grab it and bring it to us
scoreboard players operation #checkID value = @s playerID
execute as @e[type=armor_stand,tag=deeWaypoint,distance=..5] if function jcm:player/character/waypoint_found run return 1
#=====

#otherwise make a new waypoint at our position
summon armor_stand ~ ~ ~ {Tags:["setlife","deeWaypoint"],Marker:1b,Invisible:1b,NoGravity:1b,NoBasePlate:1b,attributes:[{id:"minecraft:scale",base:0.0625},{id:"waypoint_transmit_range",base:60000000}]}
scoreboard players operation @e[tag=setlife,distance=..1,type=armor_stand] playerID = @s playerID
waypoint modify @e[tag=setlife,distance=..1,type=armor_stand,limit=1] color aqua
scoreboard players set @e[tag=setlife,distance=..1,type=armor_stand] lifespan 2
tag @e[tag=setlife,distance=..1,type=armor_stand] remove setlife