#can't do if blocks are above
scoreboard players set #test value 0
execute if block ~ ~1 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~2 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~3 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~4 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~5 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~6 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if block ~ ~7 ~ #jcm:not_solid run scoreboard players add #test value 1
execute if score #test value matches ..6 run return run function jcm:player/character/cooldown_error
#=====

#hide legs and boots body groups
tag @s add bodyHideLegs
tag @s add bodyHideBoots

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 0.8
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force

#---------
#summon stuff

#summon the collision hull
summon husk ~ ~ ~ {Tags:["setme","deeLegs","playerMount","ballCanLaunchInline","canPickUp","canHoldButtons"],Silent:1b,equipment:{head:{id:blue_dye,components:{item_model:"jcm/object/tweedledee_torso_stretched"}}},Health:1000,attributes:[{id:"minecraft:max_health",base:1000},{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:movement_speed",base:0},{id:"minecraft:tempt_range",base:0}],Passengers:[{id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Marker:0b,NoBasePlate:1b,attributes:[{id:"minecraft:scale",base:2.0}],Tags:["spacerModel","setme3"]}]}
scoreboard players operation @e[tag=setme,type=husk,distance=..2] playerID = @s playerID
team join player @e[tag=setme,type=husk,distance=..2]
scoreboard players set @e[tag=setme,type=husk,distance=..2] lifespan 2
scoreboard players set @e[tag=setme3,type=armor_stand,distance=..3] lifespan 2

#ride the spacer armor stand
ride @s mount @e[tag=setme3,type=armor_stand,distance=..2,limit=1]

#clean up tags
tag @e[tag=setme3,type=armor_stand,distance=..3] remove setme3
tag @e[tag=setme,type=slime,distance=..2] remove setme

#---------

#we're in the extended state
scoreboard players set @s playerSize 1
tag @s remove canPickUp
tag @s remove canHoldButtons

#cooldown
scoreboard players set @s inputCooldownB 15