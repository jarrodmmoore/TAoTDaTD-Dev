#run join function if out of sync with global join var
scoreboard players add @s joinTick 1
execute unless score @s joinTick = #globalTime value run function jcm:player/join/_player_join


#get coordinates
function jcm:player/coordinates

#get saturation
effect give @s saturation infinite 1 true

#input cooldowns
scoreboard players remove @s[scores={inputCooldown=1..}] inputCooldown 1
scoreboard players remove @s[scores={inputCooldownA=1..}] inputCooldownA 1
scoreboard players remove @s[scores={inputCooldownB=1..}] inputCooldownB 1
scoreboard players remove @s[scores={inputCooldownC=1..}] inputCooldownC 1
scoreboard players remove @s[scores={inputCooldownD=1..}] inputCooldownD 1
scoreboard players remove @s[scores={inputCooldownE=1..}] inputCooldownE 1

#limit on how often we can launch players with motion library (otherwise we could get nasty desync bugs)
scoreboard players remove @s[scores={launchCooldown=1..}] launchCooldown 1

#we're smokin hot
execute if score @s smokeTime matches 1.. run function jcm:player/smoking

#handle deathCount
execute if score @s death matches 1.. run function jcm:player/handle_death
execute if score @s deathTime matches 1.. run function jcm:player/handle_death_part_2

#--------------
#triggers
scoreboard players enable @s musicToggle
execute if score @s musicToggle matches 1.. run function jcm:player/toggle_music
#--------------

#--------------
#do extra stuff depending on gameState
execute if score #gameState value matches 0 run function jcm:player/lobby_tick
execute if score #gameState value matches 1 run function jcm:player/active_gameplay_tick
execute if score #gameState value matches 2 run function jcm:player/lobby_tick
#--------------


#warn if resource pack missing!
scoreboard players remove @s[scores={actionbarCooldown=1..}] actionbarCooldown 1
execute if score @s actionbarCooldown matches ..0 run title @s actionbar [{translate:"warning.resource_pack_is_missing",fallback:"Map resource pack is missing!",color:red}]