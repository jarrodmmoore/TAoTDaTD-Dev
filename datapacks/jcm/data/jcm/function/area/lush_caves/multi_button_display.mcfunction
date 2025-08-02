scoreboard players set #count value 0

#start with blank string
data modify storage jcm:data button_display set value []

#check all buttons
execute positioned 124 6 -92 run function jcm:area/append_button_state_not_final
execute positioned 111 8 -102 run function jcm:area/append_button_state_not_final
execute positioned 112 12 -109 run function jcm:area/append_button_state_final

#display if 1+ button is pressed
execute if score #count value matches 1.. run scoreboard players set @a[gamemode=adventure,scores={currentArea=4,actionbarCooldown=..10}] actionbarCooldown 10
execute if score #count value matches 1.. run title @a[gamemode=adventure,scores={currentArea=4,actionbarCooldown=..10}] actionbar [{nbt:"button_display[0]",storage:"jcm:data",interpret:true},{nbt:"button_display[1]",storage:"jcm:data",interpret:true},{nbt:"button_display[2]",storage:"jcm:data",interpret:true}]
