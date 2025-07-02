tag @s add self
scoreboard players set #success value 0

#priority 1: grab a pickable object
execute positioned ^ ^1 ^2 if entity @e[distance=..3,tag=canPickUp,tag=!self] run scoreboard players set #success value 1

#priority 2: tell us about something that's too heavy
execute positioned ^ ^1 ^2 if score #success value matches 0 if entity @e[distance=..3,tag=cannotPickUp,tag=!self] run scoreboard players set #success value -1

#successfully picked a thing up
execute if score #success value matches 1 positioned ^ ^1 ^2 run function jcm:player/character/dee/pick_up/pick_up_go
#nothing happened
execute if score #success value matches 0 positioned ^ ^1 ^2 run function jcm:player/character/dee/pick_up/pick_up_failed
#object too heavy
execute if score #success value matches -1 positioned ^ ^1 ^2 run function jcm:player/character/dee/pick_up/pick_up_failed_too_heavy


#cleanup
tag @s remove self