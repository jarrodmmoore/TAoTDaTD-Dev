#reset trigger
scoreboard players reset @s musicToggle

#feedback
execute at @s run playsound minecraft:block.note_block.cow_bell master @s ~ 100000 ~ 100000
execute if entity @s[tag=musicDisabled] run tellraw @s [{translate:"jcm.game.music_on_off_status",with:[{translate:"jcm.basic.on",color:yellow}]}]
execute if entity @s[tag=!musicDisabled] run tellraw @s [{translate:"jcm.game.music_on_off_status",with:[{translate:"jcm.basic.off",color:yellow}]}]

#toggle the tag
execute if entity @s[tag=musicDisabled] run return run tag @s remove musicDisabled
#=====
tag @s add musicDisabled
stopsound @s record