#executed by the entity we want to check LOS to
#executed at the position of the looker

#return 1 if valid LOS
#return 0 if no LOS

scoreboard players set #recursions value 50
return run function jcm:common/check_los_recursion