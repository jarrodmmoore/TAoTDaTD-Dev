scoreboard players set @s lifespan 2

#find person who clicked us
#can't re-ride ourself
scoreboard players set #findTarget value 0
execute on target unless score @s playerID = #checkID value run function jcm:player/character/dum/rollout/interaction_found_target
execute if score #findTarget value matches 1.. run function jcm:player/character/dum/rollout/interaction_grab_player