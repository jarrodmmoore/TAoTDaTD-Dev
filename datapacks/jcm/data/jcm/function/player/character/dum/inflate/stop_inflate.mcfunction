#render body again
tag @s remove bodyHideChest
tag @s remove bodyHideLegs
tag @s remove bodyHideBoots

#attributes
attribute @s jump_strength base reset
attribute @s gravity base reset
attribute @s movement_speed base set 0.15
attribute @s[scores={playerSize=1..}] movement_speed base set 0.12

#no more slow fall
effect clear @s slow_falling

#state
scoreboard players set @s inflateState 0
scoreboard players set @s inputCooldownD 15

#feedback
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~ ~ 1.5 0.7