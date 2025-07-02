#feedback
execute if entity @s[tag=crate] run particle block{block_state:"spruce_planks"} ~ ~.1 ~ 0.5 0.25 0.5 1 5
execute if entity @s[tag=crate,scores={airTime=10..}] run particle block{block_state:"spruce_planks"} ~ ~.1 ~ 0.75 0.25 0.75 1 10
execute if entity @s[tag=crate] run playsound block.wood.fall master @a ~ ~ ~
execute if entity @s[tag=crate,scores={airTime=10..}] run playsound block.wood.fall master @a ~ ~ ~ 1.2 0.8

execute if entity @s[tag=anvil] run particle block{block_state:"anvil"} ~ ~.1 ~ 0.5 0.25 0.5 1 5
execute if entity @s[tag=anvil,scores={airTime=15..}] run particle block{block_state:"anvil"} ~ ~.1 ~ 0.75 0.25 0.75 1 5
execute if entity @s[tag=anvil,scores={airTime=30..}] run particle block{block_state:"anvil"} ~ ~.1 ~ 1.0 0.25 1.0 1 5
execute if entity @s[tag=anvil] run playsound block.anvil.hit master @a ~ ~ ~
execute if entity @s[tag=anvil,scores={airTime=15..29}] run playsound block.anvil.land master @a ~ ~ ~ 0.5 1.1
execute if entity @s[tag=anvil,scores={airTime=30..}] run playsound block.anvil.land master @a ~ ~ ~ 1.5

#anvil do damage
execute if entity @s[tag=anvil,scores={airTime=15..}] run function jcm:object/box/anvil_cause_damage

#bounce on trampoline
execute store result score #barrierTest value run execute if block ~-.3 ~-.75 ~-.3 barrier
execute if block ~.3 ~-.75 ~-.3 barrier run scoreboard players add #barrierTest value 1
execute if block ~-.3 ~-.75 ~.3 barrier run scoreboard players add #barrierTest value 1
execute if block ~.3 ~-.75 ~.3 barrier run scoreboard players add #barrierTest value 1
execute if score #barrierTest value matches 1.. if entity @e[type=marker,tag=temporaryBarrier,distance=..2] run function jcm:common/bounce_entity_static