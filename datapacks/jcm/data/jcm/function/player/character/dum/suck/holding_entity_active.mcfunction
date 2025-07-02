#executed by dum when he's got something in his mouth
scoreboard players set #success value 0

#hold object above us
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=suckedObject] if score @s holderID = #checkID value run function jcm:player/character/dum/suck/hold_sucked_object

#ate anvil? special logic
execute if entity @s[tag=ateAnvil] run function jcm:player/character/dum/suck/holding_anvil_loop

#spit out if we get small
execute if score @s playerSize matches 1 run scoreboard players set #success value 0

#object went away? cancel
execute if score #success value matches 0 run function jcm:player/character/dum/suck/cancel