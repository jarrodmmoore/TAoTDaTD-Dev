scoreboard players add #area3Gate value 1

execute if score #area3Gate value matches 10 run fill -96 9 -57 -96 9 -52 air
execute if score #area3Gate value matches 20 run fill -96 10 -57 -96 10 -52 air
execute if score #area3Gate value matches 30 run fill -96 11 -57 -96 11 -52 air
execute if score #area3Gate value matches 40 run fill -96 12 -57 -96 12 -52 air
execute if score #area3Gate value matches 50 run fill -96 13 -57 -96 13 -52 air

execute if score #area3Gate value matches 10 positioned -96 11 -55 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area3Gate value matches 20 positioned -96 11 -55 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area3Gate value matches 30 positioned -96 11 -55 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area3Gate value matches 40 positioned -96 11 -55 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
execute if score #area3Gate value matches 50 positioned -96 11 -55 run playsound minecraft:item.armor.equip_chain master @a ~ ~ ~ 3 .5 .1
