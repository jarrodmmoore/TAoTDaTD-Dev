#can't do it in small spaces
scoreboard players set #test value 0
execute if block ~.75 ~.75 ~.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.75 ~.75 ~.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.75 ~.75 ~-.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.75 ~.75 ~-.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.75 ~1.75 ~.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.75 ~1.75 ~.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.75 ~1.75 ~-.75 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.75 ~1.75 ~-.75 #jcm:not_solid run scoreboard players add #test value 1
execute if score #test value matches ..7 run return run function jcm:player/character/cooldown_error
#=====

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 0.8
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force

#---------
#summon stuff

#summon the collision hull
summon slime ~ ~0.75 ~ {Size:4,Tags:["setme","dumBall","checkValid","playerMount","canHoldButtons"],Silent:1b,Invulnerable:1b,attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:movement_speed",base:0},{id:"minecraft:step_height",base:1.2},{id:"minecraft:tempt_range",base:0}],active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:regeneration",amplifier:200,duration:-1,show_particles:0b}],Passengers:[ \
    {id:"minecraft:armor_stand",NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,Marker:1b,NoBasePlate:1b,Tags:["secondRideSlot","setme3"]}, \
    {id:"minecraft:interaction",Tags:["setme4","dumBallInteract"],width:3.0,height:-2.5} \
    ]}
scoreboard players operation @e[tag=setme,type=slime,distance=..2] playerID = @s playerID
team join player @e[tag=setme,type=slime,distance=..2]
scoreboard players set @e[tag=setme,type=slime,distance=..2] lifespan 2
scoreboard players set @e[tag=setme,type=slime,distance=..2] valid 1
scoreboard players set @e[tag=setme3,type=armor_stand,distance=..3] lifespan 2
scoreboard players set @e[tag=setme4,type=interaction,distance=..3] lifespan 2

#summon the model
summon item_display ~ ~1 ~ {Tags:["ballVisual","setme2"],interpolation_duration:1,teleport_duration:1,item_display:"head",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"jcm/object/tweedledum_ball"}}}
scoreboard players set @e[tag=setme2,type=item_display,distance=..2] lifespan 2
scoreboard players operation @e[tag=setme2,type=item_display,distance=..2] playerID = @s playerID

#ride the slime
ride @s mount @e[tag=setme,type=slime,distance=..2,limit=1]

#clean up tags
tag @e[tag=setme4,type=interaction,distance=..3] remove setme4
tag @e[tag=setme3,type=armor_stand,distance=..3] remove setme3
tag @e[tag=setme2,type=item_display,distance=..2] remove setme2
tag @e[tag=setme,type=slime,distance=..2] remove setme

#---------

#we're in the rolling state
tag @s add bodyHideHead
tag @s add bodyHideChest
tag @s add bodyHideLegs
tag @s add bodyHideBoots
scoreboard players set @s ballState 1
tag @s remove canPickUp
tag @s add cannotPickUp
tag @s remove canHoldButtons

#cooldown
scoreboard players set @s inputCooldownA 15