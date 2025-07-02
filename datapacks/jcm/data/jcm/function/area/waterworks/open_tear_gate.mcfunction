scoreboard players add #area5TearGate value 1

#spawn the chest with the ghast tear
execute if score #area5TearGate value matches 2 positioned 196 7 12 run function jcm:area/waterworks/solved_box_puzzle

#taller gate
execute if score #area5TearGate value matches 10 run fill 185 4 -7 185 4 -2 air
execute if score #area5TearGate value matches 20 run fill 185 5 -7 185 5 -2 air
execute if score #area5TearGate value matches 30 run fill 185 6 -7 185 6 -2 air
execute if score #area5TearGate value matches 40 run fill 185 7 -7 185 7 -2 air
execute if score #area5TearGate value matches 50 run fill 185 8 -7 185 8 -2 air
execute if score #area5TearGate value matches 60 run fill 185 9 -7 185 9 -2 air
execute if score #area5TearGate value matches 70 run fill 185 10 -7 185 10 -2 air

execute if score #area5TearGate value matches 10 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 20 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 30 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 40 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 50 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 60 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1
execute if score #area5TearGate value matches 70 positioned 185 7 -5 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .65 .1

#little gate
execute if score #area5TearGate value matches 15 run fill 204 6 8 209 6 8 air
execute if score #area5TearGate value matches 30 run fill 204 7 8 209 7 8 air
execute if score #area5TearGate value matches 45 run fill 204 8 8 209 8 8 air
execute if score #area5TearGate value matches 60 run fill 204 9 8 209 9 8 air

execute if score #area5TearGate value matches 15 positioned 207 8 8 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TearGate value matches 30 positioned 207 8 8 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TearGate value matches 45 positioned 207 8 8 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TearGate value matches 60 positioned 207 8 8 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
