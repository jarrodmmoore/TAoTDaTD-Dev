#spin
rotate @s ~-8 0

#do nothing further if dee player already exists
execute if entity @a[scores={playerCharacter=2}] run return 0
#=====

#spit particles
execute if score #10Hz value matches 1 run particle firework ^ ^.1 ^.6 0 0 0 0 1 force @a[distance=..80]

#pull player in if they step on
execute as @a[distance=..1,gamemode=adventure] run function jcm:game/0/become_player_macro {player:2,coordinates:"9 202 0"}