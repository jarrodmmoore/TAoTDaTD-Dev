#cauldron
execute if entity @e[type=marker,tag=cauldron,distance=..2] run function jcm:player/character/inside_cauldron

#trampoline
execute if entity @s[tag=onGround] if entity @e[type=marker,tag=temporaryBarrier,distance=..2] run function jcm:common/bounce_player
