#lines 2 and 6 are short
#line 5 is long

#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.1"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.2"}
execute if score @s age matches 90 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.3"}
execute if score @s age matches 150 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.4"}
execute if score @s age matches 210 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.5"}
execute if score @s age matches 290 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.6"}
execute if score @s age matches 330 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.7"}
execute if score @s age matches 390 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.2.8"}

#advance to gameProgress 2 so players can see stuff in their inventories
execute if score #gameProgress value matches 1 run scoreboard players set #gameProgress value 2

#done talking
execute if score @s age matches 500.. run scoreboard players set @s age 0