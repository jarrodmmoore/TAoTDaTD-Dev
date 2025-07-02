#no equipment if not a player
execute unless score @s[gamemode=!creative] playerCharacter matches 1..2 run function jcm:player/spectator/keep_inventory_clear

#-------------------
#code for dee
execute if score @s playerCharacter matches 1 run function jcm:player/character/dee/equipment

#code for dum
execute if score @s playerCharacter matches 2 run function jcm:player/character/dum/equipment
#-------------------
