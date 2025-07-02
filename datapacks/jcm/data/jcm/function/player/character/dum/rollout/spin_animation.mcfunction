#executed by the item display representing the rollout ball at 20Hz

#stay alive as long as this runs
scoreboard players set @s lifespan 2

#new rotation is old + spin speed
scoreboard players add @s ballSpin 0
execute if score #spinSpeed value matches 6.. run scoreboard players operation @s ballSpin += #spinSpeed value
scoreboard players operation @s ballSpin %= #360 value

#rotate to face the direction we're moving in
execute facing entity @e[limit=1,sort=nearest,distance=0.025..5,tag=dumBallPrevPosition,type=area_effect_cloud] feet rotated ~180 0 run rotate @s ~ 0
kill @e[limit=1,sort=nearest,distance=..5,tag=dumBallPrevPosition,type=area_effect_cloud]
summon area_effect_cloud ~ ~ ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:2,Tags:["dumBallPrevPosition"]}

#always update position
tp @s ~ ~1 ~

#spin (450000 = 45 degrees)

#note:
#left_rotation is applied BEFORE scaling
#right_rotation is applied AFTER scaling

#using Eroxen's quaternion library
data modify storage quack:api euler set value [0f, 0f, 0f]
execute store result storage quack:api euler[1] float 1 run scoreboard players get @s ballSpin
function quack:api/storage/euler_to_quaternion
data modify entity @s transformation.left_rotation set from storage quack:api quaternion