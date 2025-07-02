scoreboard players set #success value 0

#remember if we trampoline or not
scoreboard players operation #trampolineState value = @s trampolineState

#hold object above us
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=grabbedObject] if score @s holderID = #checkID value run function jcm:player/character/dee/pick_up/hold_grabbed_object

#object went away? cancel
execute if score #success value matches 0 run function jcm:player/character/dee/pick_up/cancel