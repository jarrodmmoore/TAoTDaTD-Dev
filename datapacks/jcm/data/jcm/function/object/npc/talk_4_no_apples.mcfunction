#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.3"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.4"}
execute if score @s age matches 130 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.5"}

#done talking
execute if score @s age matches 200.. run scoreboard players set @s age 0