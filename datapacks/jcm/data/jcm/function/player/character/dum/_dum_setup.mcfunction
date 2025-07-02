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
attribute @s scale base set 0.85
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
scoreboard players set @s ballState 0
scoreboard players set @s suckTime 0
scoreboard players set @s suckState 0
scoreboard players set @s inflateState 0
tag @s remove ateAnvil
scoreboard players set @s prevFallState 1
tag @s remove getMotionOnDismount
