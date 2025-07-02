#done rollin
tag @s remove bodyHideHead
execute if score @s inflateState matches ..0 run tag @s remove bodyHideChest
execute if score @s inflateState matches ..0 run tag @s remove bodyHideLegs
execute if score @s inflateState matches ..0 run tag @s remove bodyHideBoots
scoreboard players set @s ballState 0
ride @s dismount
tag @s add canPickUp
tag @s remove cannotPickUp
tag @s add canHoldButtons

#shrink
scoreboard players set @s playerSize 1
attribute @s scale base set 0.45
attribute @s movement_speed base set 0.11

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 1.4
execute at @s run playsound block.beacon.deactivate master @a ~ ~ ~ 1.5 1.5
particle cloud ~ ~.25 ~ 0.25 0.25 0.25 0.1 8 force
particle minecraft:effect ~ ~1 ~ 0.25 0.5 0.25 1 10 force

#can't do it again for 0.5 sec
scoreboard players set @s[scores={inputCooldownB=..9}] inputCooldownB 10