#do nothing if not loaded properly
execute unless loaded ~ ~ ~ run return fail

#do nothing if we already have one here
execute if entity @e[type=armor_stand,tag=campfireWaypoint,distance=..2] run return fail
#=====

#summon waypoint
summon armor_stand ~ ~ ~ {Tags:["eraseable","setme","campfireWaypoint"],Marker:1b,Invisible:1b,Invulnerable:1b,attributes:[{id:"minecraft:scale",base:0.0625},{id:"waypoint_transmit_range",base:25}]}
waypoint modify @e[tag=setme,distance=..1,type=armor_stand,limit=1] color white
waypoint modify @e[tag=setme,distance=..1,type=armor_stand,limit=1] style set minecraft:campfire
tag @e[tag=setme,distance=..1,type=armor_stand] remove setme