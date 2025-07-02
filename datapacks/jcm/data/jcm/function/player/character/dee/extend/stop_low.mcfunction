#done strolling
scoreboard players set @s playerSize 0
ride @s dismount
tag @s add canPickUp

#show body groups
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots
tag @s add canHoldButtons

#go low
tp @s ~ ~-5 ~

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 1.2
playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 1.5 1.2
particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0.1 20 force

#thrust downwards on exit
scoreboard players set $x player_motion.api.launch 0
scoreboard players set $y player_motion.api.launch -6000
scoreboard players set $z player_motion.api.launch 0
execute unless score @s launchCooldown matches 1.. run function player_motion:api/launch_xyz
scoreboard players set @s launchCooldown 10

#can't do it again for 0.5 sec
scoreboard players set @s[scores={inputCooldownB=..9}] inputCooldownB 10