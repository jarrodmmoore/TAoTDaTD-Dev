#count up talk time
scoreboard players add @s age 1

#run our dialog function
execute if score @s npcID matches 1 run function jcm:object/npc/talk_1
execute if score @s npcID matches 2 run function jcm:object/npc/talk_2
execute if score @s npcID matches 3 run function jcm:object/npc/talk_3
execute if score @s npcID matches 4 run function jcm:object/npc/talk_4
execute if score @s npcID matches 5 run function jcm:object/npc/talk_5
execute if score @s npcID matches 6 run function jcm:object/npc/talk_6
#...

#failsafe if no dialog happened
execute if score @s age matches 1000.. run scoreboard players set @s age 0