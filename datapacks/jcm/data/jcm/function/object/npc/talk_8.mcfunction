#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:"#FF9090",line:"jcm.dialog.npc.8.1"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:"#FF9090",line:"jcm.dialog.npc.8.2"}

#done talking
execute if score @s age matches 150.. run scoreboard players set @s age 0