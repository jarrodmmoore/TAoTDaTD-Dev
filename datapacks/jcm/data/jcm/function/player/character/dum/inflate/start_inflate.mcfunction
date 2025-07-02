#cancel momentum and dismount
ride @s dismount
tp @s @s
tag @s remove bodyHideHead
tag @s add bodyHideChest
tag @s add bodyHideLegs
tag @s add bodyHideBoots

#attributes
attribute @s jump_strength base set 0.0
attribute @s gravity base set 0.02
attribute @s movement_speed base set 0.025

#state
scoreboard players set @s inflateState 1
scoreboard players set @s inputCooldownD 15

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 0.5 1.2
playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 1.5 0.7
particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.1 20 force
particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force