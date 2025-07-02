#skip 1st line in newgame+
execute if score @s age matches 10 if score #newGamePlus value matches 1 run scoreboard players set @s age 40

#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.1"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.2"}
execute if score @s age matches 130 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.1.3"}

#done talking
execute if score @s age matches 180.. run scoreboard players set @s age 0