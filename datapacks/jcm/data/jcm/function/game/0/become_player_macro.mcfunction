#player (int) = which player character to become
#coordinates (string) = where to get sent to

scoreboard players reset @s dPlayerCharacter
$scoreboard players set @s playerCharacter $(player)
$tp @s $(coordinates) facing 0 202 0

#feedback
execute at @s run playsound entity.illusioner.mirror_move master @a ~ ~ ~ 2.5 1
execute at @s run particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.01 10 force

#lights on
execute if score @s playerCharacter matches 1 run setblock -9 202 0 light
execute if score @s playerCharacter matches 1 run scoreboard players set @e[tag=fakeTweedleDee,type=skeleton] lifespan 0
execute if score @s playerCharacter matches 2 run setblock 9 202 0 light
execute if score @s playerCharacter matches 2 run scoreboard players set @e[tag=fakeTweedleDum,type=skeleton] lifespan 0

#must have body parts
function jcm:player/character/update_character_choice
tag @s remove bodyHideHead
tag @s remove bodyHideChest
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots

#no invisibility
tag @s remove noInventory

#cooldown before we can exit back out
scoreboard players set @s inputCooldown 10
