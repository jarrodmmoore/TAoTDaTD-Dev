#must be mounted on husk hull, otherwise kick out (return to normal state)
scoreboard players set #test value 0
execute on vehicle on vehicle if entity @s[type=husk,tag=deeLegs] run scoreboard players set #test value 1
execute unless score #test value matches 1 run return run function jcm:player/character/dee/extend/stop
#=====

#get input vector
function jcm:common/get_input_vector
scoreboard players set #jumpInput value 0
execute if predicate jcm:jump run scoreboard players add #jumpInput value 1

#run code on the husk hull
scoreboard players set #success value 0
scoreboard players operation #checkID value = @s playerID
execute on vehicle on vehicle if entity @s[tag=deeLegs] positioned as @s run function jcm:player/character/dee/extend/hull_logic


#kick off mount if failed
execute if score #success value matches 0 run function jcm:player/character/dee/extend/stop
execute if score #success value matches -1 run function jcm:player/character/dee/extend/stop_low