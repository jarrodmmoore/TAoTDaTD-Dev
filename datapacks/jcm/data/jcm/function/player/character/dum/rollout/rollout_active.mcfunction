#must be mounted on slime hull, otherwise kick out (return to normal state)
scoreboard players set #test value 0
execute on vehicle if entity @s[type=slime,tag=dumBall] run scoreboard players set #test value 1
execute unless score #test value matches 1 run return run function jcm:player/character/dum/rollout/stop
#=====

#no sucking in this state
scoreboard players set @s suckTime 0

#get input vector
function jcm:common/get_input_vector

#run code on the slime hull
scoreboard players set #success value 0
scoreboard players operation #checkID value = @s playerID
execute on vehicle if entity @s[tag=dumBall] positioned as @s run function jcm:player/character/dum/rollout/hull_logic

#kick off mount if we're in a weird state
execute if entity @s[scores={suckState=1..},tag=ateAnvil] run scoreboard players set #success value 0
execute if score @s inflateState matches 1.. run scoreboard players set #success value 0

#kick off mount if failed
execute if score #success value matches 0 run function jcm:player/character/dum/rollout/stop