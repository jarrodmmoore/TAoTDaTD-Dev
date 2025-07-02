#fans spin when buttons is held
#fan A
execute if block -83 11 -218 redstone_block as @e[type=item_display,tag=updraftFanA] at @s run function jcm:area/gusty_tower/fan_run
#fan B
execute if block -110 27 -194 redstone_block as @e[type=item_display,tag=updraftFanB] at @s run function jcm:area/gusty_tower/fan_run


#lift pistons when button is held
execute if score #5Hz value matches 1 if block -110 27 -194 redstone_block unless block -79 14 -186 redstone_block run fill -79 14 -186 -76 14 -183 redstone_block
execute if score #5Hz value matches 1 unless block -110 27 -194 redstone_block if block -79 14 -186 redstone_block run fill -79 14 -186 -76 14 -183 lapis_block


#summon fans with
#summon item_display ~ ~ ~ {Tags:["updraftFan","updraftFanA"],teleport_duration:1,item:{id:"stone",components:{item_model:"jcm/object/updraft_fan"}}}