#yo
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.6.1"}

#done talking
execute if score @s age matches 100.. run scoreboard players set @s age 0