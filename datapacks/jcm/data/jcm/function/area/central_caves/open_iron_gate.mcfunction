#not iron anymore, lmao

scoreboard players add #area2IronGate value 1
execute if score #area2IronGate value matches 10 run fill -36 11 -162 -28 11 -162 air
execute if score #area2IronGate value matches 25 run fill -36 12 -162 -28 12 -162 air
execute if score #area2IronGate value matches 40 run fill -36 13 -162 -28 13 -162 air
execute if score #area2IronGate value matches 55 run fill -36 14 -162 -28 14 -162 air

execute if score #area2IronGate value matches 10 positioned -32 12 -162 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area2IronGate value matches 25 positioned -32 12 -162 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area2IronGate value matches 40 positioned -32 12 -162 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area2IronGate value matches 55 positioned -32 12 -162 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
