#executed by person who wants to ride the meatball

#cancel any weird states or mounts
ride @s dismount
execute if score @s trampolineState matches 1.. at @s run function jcm:player/character/dee/trampoline/stop

#cheat and get motion upon exit
tag @s add getMotionOnDismount

#wait before making any silly decisions
scoreboard players set @s inputCooldown 0

#success
scoreboard players operation #findTarget value = @s playerID