#sync up
scoreboard players operation @s buttonState = #press value

#set model
execute if entity @s[tag=buttonAny,scores={buttonState=..0}] run item replace entity @s container.0 with stone[item_model="jcm/object/pressure_plate"]
execute if entity @s[tag=buttonAny,scores={buttonState=1..}] run item replace entity @s container.0 with stone[item_model="jcm/object/pressure_plate_pressed"]
execute if entity @s[tag=buttonCrate,scores={buttonState=..0}] run item replace entity @s container.0 with stone[item_model="jcm/object/box_pressure_plate"]
execute if entity @s[tag=buttonCrate,scores={buttonState=1..}] run item replace entity @s container.0 with stone[item_model="jcm/object/box_pressure_plate_pressed"]
execute if entity @s[tag=buttonAnvil,scores={buttonState=..0}] run item replace entity @s container.0 with stone[item_model="jcm/object/heavy_pressure_plate"]
execute if entity @s[tag=buttonAnvil,scores={buttonState=1..}] run item replace entity @s container.0 with stone[item_model="jcm/object/heavy_pressure_plate_pressed"]
execute if entity @s[tag=buttonDum,scores={buttonState=..0}] run item replace entity @s container.0 with stone[item_model="jcm/object/dum_pressure_plate"]
execute if entity @s[tag=buttonDum,scores={buttonState=1..}] run item replace entity @s container.0 with stone[item_model="jcm/object/dum_pressure_plate_pressed"]

#play sound
execute if score @s buttonState matches 1.. run playsound minecraft:block.ancient_debris.place master @a ~ ~ ~ 1 .65
execute if score @s buttonState matches 1.. run playsound block.metal_pressure_plate.click_on master @a
execute if score @s buttonState matches ..0 run playsound minecraft:block.ancient_debris.place master @a ~ ~ ~ 1 .5
execute if score @s buttonState matches ..0 run playsound block.metal_pressure_plate.click_off master @a

#set block underneath us for ease of scripting
execute if score @s buttonState matches 1.. run setblock ~ ~-1 ~ redstone_block
execute if score @s buttonState matches ..0 run setblock ~ ~-1 ~ lapis_block