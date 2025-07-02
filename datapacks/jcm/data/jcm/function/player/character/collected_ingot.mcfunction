execute unless score @s playerCharacter matches 2 run scoreboard players operation #deeGold value += #itemCheck value
execute if score @s playerCharacter matches 2 run scoreboard players operation #dumGold value += #itemCheck value

#feedback
particle dust{color:[1,1,0],scale:1.0f} ~ ~.5 ~ 0.5 0.5 0.5 1 15 force
particle happy_villager ~ ~.5 ~ 0.25 0.25 0.25 0 5 force
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1.5 1