scoreboard players set #count value 0

#start with blank string
data modify storage jcm:data button_display set value []

#check all buttons
execute positioned -106 7 -46 run function jcm:area/append_button_state_not_final
execute positioned -113 7 -49 run function jcm:area/append_button_state_not_final
execute positioned -127 8 -46 run function jcm:area/append_button_state_not_final
execute positioned -107 7 -60 run function jcm:area/append_button_state_not_final
execute positioned -124 8 -59 run function jcm:area/append_button_state_final

#display if 1+ button is pressed
execute if score #count value matches 1.. run scoreboard players set @a[gamemode=adventure,scores={currentArea=3}] actionbarCooldown 10
execute if score #count value matches 1.. run title @a[gamemode=adventure,scores={currentArea=3}] actionbar [{nbt:"button_display[0]",storage:"jcm:data",interpret:true},{nbt:"button_display[1]",storage:"jcm:data",interpret:true},{nbt:"button_display[2]",storage:"jcm:data",interpret:true},{nbt:"button_display[3]",storage:"jcm:data",interpret:true},{nbt:"button_display[4]",storage:"jcm:data",interpret:true}]
