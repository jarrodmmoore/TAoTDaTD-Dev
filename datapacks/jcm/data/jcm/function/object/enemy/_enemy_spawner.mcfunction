#spawn if we haven't yet
execute unless score @s enemySpawn matches 1.. if entity @a[gamemode=adventure,scores={playerCharacter=1..},distance=..30] run function jcm:object/enemy/_enemy_spawner_go

#cooldown on when we can spawn again
execute if score @s enemySpawn matches 1.. run scoreboard players add @s enemySpawn 1
execute if score @s enemySpawn matches 1200.. unless entity @a[gamemode=adventure,scores={playerCharacter=1..},distance=..50] run scoreboard players reset @s enemySpawn