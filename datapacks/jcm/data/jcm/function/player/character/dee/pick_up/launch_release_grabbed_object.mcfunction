#executed by the item we're throwing

tag @s remove grabbedObject
scoreboard players reset @s holderID
execute if entity @s[type=tnt] run data merge entity @s {NoGravity:0b}

#reset box fall time
scoreboard players set @s[tag=box] airTime 1

#jcm launch if not a player
execute unless entity @s[tag=playerPickUpMount] if entity @s[type=tnt] run function jcm:common/add_velocity_in_direction_3d {force:"0.0125"}
execute unless entity @s[tag=playerPickUpMount] unless entity @s[type=tnt] run function jcm:common/add_velocity_in_direction_3d {force:"0.02"}

#api launch if we're a player
scoreboard players set $strength player_motion.api.launch 7500
execute if entity @s[tag=playerPickUpMount] on passengers if entity @s[type=player] positioned as @s run function jcm:player/character/dee/pick_up/launch_player_go