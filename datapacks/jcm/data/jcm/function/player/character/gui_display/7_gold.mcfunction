execute store result score #test value run clear @s *[custom_data~{questInfo:7}]
#make sure the count is right!
execute unless score #displayIngot value matches 1.. unless score #test value = #displayNugget value run clear @s *[custom_data~{questInfo:7}]
execute if score #displayIngot value matches 1.. unless score #test value = #displayIngot value run clear @s *[custom_data~{questInfo:7}]

#displayIngot
execute store result storage jcm:func_args a int 1 run scoreboard players get #displayIngot value
#displayNugget
execute store result storage jcm:func_args b int 1 run scoreboard players get #displayNugget value
#color
execute unless score #displayIngot value matches 16.. run data modify storage jcm:func_args c set value "gray"
execute if score #displayIngot value matches 16.. run data modify storage jcm:func_args c set value "yellow"

#no gold whatsoever
execute if score #displayIngot value matches ..0 if score #displayNugget value matches ..0 run item replace entity @s inventory.16 with red_dye[custom_data={questInfo:7},item_model="jcm/object/blank",tooltip_display={hide_tooltip:true}]
#nuggets only
execute if score #displayNugget value matches 1.. if score #displayIngot value matches ..0 run function jcm:player/character/gui_display/gold_display_nugget_macro with storage jcm:func_args
#at least 1 ingot
execute if score #displayIngot value matches 1.. run function jcm:player/character/gui_display/gold_display_ingot_macro with storage jcm:func_args
