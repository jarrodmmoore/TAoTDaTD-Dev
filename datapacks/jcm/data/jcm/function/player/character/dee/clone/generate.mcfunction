#we have a clone
scoreboard players set @s cloneState 1

#feedback
execute at @s run playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 1.5 1.5
playsound minecraft:entity.creaking.activate master @a ~ ~ ~ 1 1.5
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force
particle block{block_state:"packed_ice"} ~ ~1 ~ 0.25 0.5 0.25 1 20 force

#---------
#summon a dude
summon skeleton ~ ~ ~ {Tags:["setme","deeClone","tickObject","ballCanLaunchInline","canPickUp","canHoldButtons"],Silent:1b,attributes:[{id:"minecraft:attack_damage",base:0},{id:"minecraft:follow_range",base:0},{id:"minecraft:jump_strength",base:0},{id:"minecraft:movement_speed",base:0},{id:"minecraft:scale",base:0.85}], \
    active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b},{id:"minecraft:regeneration",amplifier:0,duration:-1,show_particles:0b}], \
    equipment:{head:{id:"blue_dye",components:{"minecraft:item_model":"jcm/object/tweedledee_head"}}, \
    chest:{id:"blue_dye",components:{"minecraft:equippable":{slot:chest,asset_id:"dee"}}}, \
    legs:{id:"blue_dye",components:{"minecraft:equippable":{slot:legs,asset_id:"dee"}}}, \
    feet:{id:"blue_dye",components:{"minecraft:equippable":{slot:feet,asset_id:"dee"}}} \
    }}
scoreboard players operation @e[tag=setme,type=skeleton,distance=..2] playerID = @s playerID
team join player @e[tag=setme,type=skeleton,distance=..2]
scoreboard players set @e[tag=setme,type=skeleton,distance=..2] lifespan 2
#---------

#cooldown
scoreboard players set @s inputCooldownE 15