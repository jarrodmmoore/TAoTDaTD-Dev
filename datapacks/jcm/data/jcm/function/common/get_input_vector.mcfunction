#get input vector relative to player face direction
scoreboard players set #yAxis value 0
execute if predicate jcm:w run scoreboard players add #yAxis value 1
execute if predicate jcm:s run scoreboard players remove #yAxis value 1

scoreboard players set #xAxis value 0
execute if predicate jcm:d run scoreboard players add #xAxis value 1
execute if predicate jcm:a run scoreboard players remove #xAxis value 1

scoreboard players set #inDirection value 0
execute if score #yAxis value matches 1 if score #xAxis value matches 0 run scoreboard players set #inDirection value 1
execute if score #yAxis value matches 1 if score #xAxis value matches 1 run scoreboard players set #inDirection value 2
execute if score #yAxis value matches 0 if score #xAxis value matches 1 run scoreboard players set #inDirection value 3
execute if score #yAxis value matches -1 if score #xAxis value matches 1 run scoreboard players set #inDirection value 4
execute if score #yAxis value matches -1 if score #xAxis value matches 0 run scoreboard players set #inDirection value 5
execute if score #yAxis value matches -1 if score #xAxis value matches -1 run scoreboard players set #inDirection value 6
execute if score #yAxis value matches 0 if score #xAxis value matches -1 run scoreboard players set #inDirection value 7
execute if score #yAxis value matches 1 if score #xAxis value matches -1 run scoreboard players set #inDirection value 8