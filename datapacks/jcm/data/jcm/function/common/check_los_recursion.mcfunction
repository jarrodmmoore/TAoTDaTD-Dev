scoreboard players remove #recursions value 1

#found it!
execute if entity @s[distance=..1] run return 1
#=====

#didn't find it yet, keep looking forward if able
execute if score #recursions value matches 1.. positioned ^ ^ ^.5 if block ~ ~1 ~ #jcm:not_solid run return run function jcm:common/check_los_recursion
#=====

#failed if we made it down here
return 0