#player messages in order
execute unless score #newGamePlus value matches 1 if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.7.1"}
execute unless score #newGamePlus value matches 1 if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.7.2"}
#different messages in newgame+
execute if score #newGamePlus value matches 1 if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.7b.1"}
execute if score #newGamePlus value matches 1 if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.7b.2"}

#done talking
execute if score @s age matches 150.. run scoreboard players set @s age 0