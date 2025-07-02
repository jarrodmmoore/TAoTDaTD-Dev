#yap if we've engage yapping with someone
execute if score @s age matches 1.. run function jcm:object/npc/talk_index

#look for player to talk to
execute if entity @a[gamemode=adventure,distance=..10] run return run function jcm:object/npc/npc_player_nearby
#=====

#otherwise just face wherever
execute if score #2Sec value matches 1 run function jcm:object/npc/face_random_direction