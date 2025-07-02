#done rollin
tag @s remove bodyHideHead
tag @s remove bodyHideChest
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots
scoreboard players set @s ballState 0
ride @s dismount
tag @s add canPickUp
tag @s remove cannotPickUp
tag @s add canHoldButtons

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 1.2
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.5 1.2
particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 20 force

#tp down a bit
execute at @s if block ~ ~-1.25 ~ #jcm:not_solid run tp @s ~ ~-1.25 ~

#can't do it again for 0.5 sec
scoreboard players set @s[scores={inputCooldownA=..9}] inputCooldownA 10