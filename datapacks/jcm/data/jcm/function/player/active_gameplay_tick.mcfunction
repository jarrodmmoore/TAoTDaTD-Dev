#no equipment if not a player
execute unless score @s[gamemode=!creative] playerCharacter matches 1..2 run function jcm:player/spectator/keep_inventory_clear

#-------------------
#generic player code
execute if score @s playerCharacter matches 1..2 run function jcm:player/character/generic_player_tick
#-------------------

#-------------------
#code for dee
execute if score @s playerCharacter matches 1 run function jcm:player/character/dee/_dee_tick

#code for dum
execute if score @s playerCharacter matches 2 run function jcm:player/character/dum/_dum_tick
#-------------------
