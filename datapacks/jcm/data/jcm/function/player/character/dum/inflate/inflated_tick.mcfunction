#slow falling
effect give @s slow_falling 1 0 true

#force attribute
attribute @s movement_speed base set 0.025

#no sucking in this state
scoreboard players set @s suckTime 0

#can't be in a weird state
scoreboard players set #success value 1
execute if score @s ballState matches 1.. run scoreboard players set #success value 0
execute if score @s suckState matches 1.. run scoreboard players set #success value 0
execute if score #success value matches 0 run return run function jcm:player/character/dum/inflate/stop_inflate
#=====

#bounce on the ground
execute if entity @s[tag=onGround,scores={launchCooldown=..0,inputCooldownD=..0}] run function jcm:player/character/dum/inflate/bounce_on_ground