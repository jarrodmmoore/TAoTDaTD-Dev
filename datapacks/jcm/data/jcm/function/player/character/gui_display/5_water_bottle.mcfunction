execute store result score #test value run execute if items entity @s inventory.14 *[custom_data~{questInfo:5}]
execute if score #test value matches 0 run clear @s *[custom_data~{questInfo:5}]

#this is bad code
#but score components don't resolve on lore text
execute store result score #count1 value run execute if score #collectedBottle1 value matches 1..
execute if score #collectedBottle2 value matches 1.. run scoreboard players add #count1 value 1

execute if score #gameProgress value matches ..1 run item replace entity @s inventory.14 with red_dye[custom_data={questInfo:5},item_model="jcm/gui/bottle_0",custom_name=[{translate:"jcm.ability.missing",bold:true,italic:false}]]
execute if score #gameProgress value matches 2.. if score #count1 value matches ..0 run item replace entity @s inventory.14 with red_dye[custom_data={questInfo:5},item_model="jcm/gui/bottle_1",custom_name=[{translate:"jcm.quest.water_bottles",bold:true,italic:false}],lore=[{translate:"jcm.quest.0_2_collected",italic:true,color:gray}]]
execute if score #gameProgress value matches 2.. if score #count1 value matches 1 run item replace entity @s inventory.14 with red_dye[custom_data={questInfo:5},item_model="jcm/gui/bottle_1",custom_name=[{translate:"jcm.quest.water_bottles",bold:true,italic:false}],lore=[{translate:"jcm.quest.1_2_collected",italic:true,color:gray}]]
execute if score #gameProgress value matches 2.. if score #count1 value matches 2.. run item replace entity @s inventory.14 with red_dye[custom_data={questInfo:5},item_model="jcm/gui/bottle_2",custom_name=[{translate:"jcm.quest.water_bottles",bold:true,italic:false}],lore=[{translate:"jcm.quest.2_2_collected",italic:true,color:yellow}]]