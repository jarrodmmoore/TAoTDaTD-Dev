#no ride
ride @s dismount

#be a team player
team join player @s

#tags
tag @s add canPickUp
tag @s remove cannotPickUp
tag @s add canHoldButtons

#clear inv
clear @s[gamemode=adventure]

#attributes
attribute @s movement_speed base set 0.15
attribute @s scale base reset
attribute @s entity_interaction_range base set 4
attribute @s attack_knockback base set 1.1
attribute @s jump_strength base reset
attribute @s gravity base reset

#body groups
tag @s remove bodyHideHead
tag @s remove bodyHideChest
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots

#variables
scoreboard players set @s playerSize 0
scoreboard players set @s stretchState 0
scoreboard players set @s pickUpState 0
scoreboard players set @s trampolineState 0
tag @s remove getMotionOnDismount
#...