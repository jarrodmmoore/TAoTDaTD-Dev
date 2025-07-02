#detect when we hit the ground
scoreboard players operation #prevFallState value = @s prevFallState
execute if entity @s[tag=onGround,tag=!inWater] if score #prevFallState value matches 0 run function jcm:player/character/dum/suck/holding_anvil_impact
execute store result score @s prevFallState run execute if entity @s[tag=onGround]