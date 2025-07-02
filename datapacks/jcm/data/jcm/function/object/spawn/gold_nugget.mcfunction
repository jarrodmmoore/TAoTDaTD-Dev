#are we in water?
execute store result score #test value run execute if block ~ ~ ~ water

#not in water, just spawn normally
execute if score #test value matches 0 run summon item ~ ~ ~ {Tags:["pickupGoldNugget","checkValid","setme","stay"],Invulnerable:1b,NoGravity:1b,Age:-32768,PickupDelay:0,Item:{id:"minecraft:gold_nugget",count:1}}

#in water, must spawn with a holder
execute if score #test value matches 1 run summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:200000,Tags:["itemHolder","tickObject"],Passengers:[{id:"minecraft:item",NoGravity:1b,Age:-32768,PickupDelay:0,Tags:["pickupGoldNugget","checkValid","setme","stay"],Item:{id:"minecraft:gold_nugget",count:1}}]}

#validate new pickup
scoreboard players set @e[distance=..1,type=item,tag=setme] valid 1
#team join glowYellow @e[distance=..1,type=item,tag=setme]
#execute as @e[distance=..1,type=item,tag=setme] run data merge entity @s {Glowing:1b}
tag @e[distance=..1,type=item,tag=setme] remove setme