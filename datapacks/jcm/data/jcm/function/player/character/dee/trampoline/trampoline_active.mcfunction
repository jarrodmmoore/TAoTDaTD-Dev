#must be still in a place we can actually stand, otherwise exit
execute if score @s airTime matches 7.. unless score @s playerSize matches 1 run return run function jcm:player/character/dee/trampoline/stop
execute if entity @s[tag=inWater] run return run function jcm:player/character/dee/trampoline/stop
#=====

#don't pitch up/down, please
execute if score #5Hz value matches 0 unless score @s coord_pitch matches -10..10 run rotate @s ~ 0

#be a mime and put an invisible ceiling above us
function jcm:player/character/dee/trampoline/trampoline_generate_hitboxes