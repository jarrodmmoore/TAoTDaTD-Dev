#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.9.1"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.9.2"}
execute if score @s age matches 150 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.9.3"}
execute if score @s age matches 190 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.9.4"}
execute if score @s age matches 250 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.9.5"}

#done talking
execute if score @s age matches 320.. run scoreboard players set @s age 0