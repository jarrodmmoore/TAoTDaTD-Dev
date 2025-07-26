#player messages in order
execute unless score #newGamePlus value matches 1 if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.1"}
execute unless score #newGamePlus value matches 1 if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.2"}
execute unless score #newGamePlus value matches 1 if score @s age matches 130 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.3"}
#different messages in newgame+
execute if score #newGamePlus value matches 1 if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1b.1"}
execute if score #newGamePlus value matches 1 if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1b.2"}
execute if score #newGamePlus value matches 1 if score @s age matches 130 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1b.3"}

#done talking
execute if score @s age matches 180.. run scoreboard players set @s age 0