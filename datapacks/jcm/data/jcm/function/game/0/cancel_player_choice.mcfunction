#feedback
execute at @s run playsound minecraft:entity.ender_dragon.hurt master @a ~ ~ ~ 2 0.8
particle large_smoke ~ ~1 ~ 0.1 0.5 0.1 0.1 10 force

#go back to start
tp @s 0 202 -21 0 0
scoreboard players reset @s playerCharacter
function jcm:player/reset_attributes

#canceled message
scoreboard players set @s actionbarCooldown 80
title @s actionbar [{translate:"jcm.lobby.cancel_player_selection",italic:true}]