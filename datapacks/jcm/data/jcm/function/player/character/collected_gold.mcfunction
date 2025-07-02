execute unless score @s playerCharacter matches 2 run scoreboard players operation #deeGold value += #itemCheck value
execute if score @s playerCharacter matches 2 run scoreboard players operation #dumGold value += #itemCheck value

#feedback
particle dust{color:[1,1,0],scale:1.0f} ~ ~.5 ~ 0.25 0.25 0.25 1 10
playsound minecraft:block.amethyst_block.hit master @a ~ ~ ~ 1 1.6