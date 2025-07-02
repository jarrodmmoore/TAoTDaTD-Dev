#executed by interaction

#mount player to armor stand
execute on vehicle on passengers if entity @s[type=armor_stand,tag=secondRideSlot] run tag @s add rideme
execute on target run ride @s mount @e[type=armor_stand,distance=..10,tag=rideme,limit=1]
tag @e[type=armor_stand,distance=..10,tag=rideme] remove rideme

#forget who clicked us
data remove entity @s interaction