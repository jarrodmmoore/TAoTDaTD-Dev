# 0 = pre-game
# 1 = in-game
# 2 = opening cutscene
# 3 = end cutscene

execute if score #gameState value matches 0 run function jcm:game/0/_0_tick
execute if score #gameState value matches 1 run function jcm:game/1/_1_tick
execute if score #gameState value matches 2 run function jcm:game/2/_2_tick
execute if score #gameState value matches 3 run function jcm:game/3/_3_tick