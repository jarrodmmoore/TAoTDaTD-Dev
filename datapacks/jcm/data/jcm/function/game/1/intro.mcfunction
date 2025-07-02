#count time
scoreboard players add #introCutscene value 1

#send players to their last checkpoint if they've got one
execute if score #introCutscene value matches 45 as @a[gamemode=adventure] run function jcm:player/checkpoint/try_warp_to_checkpoint
