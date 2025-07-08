scoreboard players add #area5TunnelGate value 1

#little gate
execute if score #area5TunnelGate value matches 15 run fill 70 11 -28 73 11 -28 air
execute if score #area5TunnelGate value matches 30 run fill 70 12 -28 73 12 -28 air
execute if score #area5TunnelGate value matches 45 run fill 70 13 -28 73 13 -28 air
execute if score #area5TunnelGate value matches 60 run fill 70 14 -28 73 14 -28 air

execute if score #area5TunnelGate value matches 15 positioned 71 11 -28 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TunnelGate value matches 30 positioned 71 11 -28 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TunnelGate value matches 45 positioned 71 11 -28 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area5TunnelGate value matches 60 positioned 71 11 -28 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
