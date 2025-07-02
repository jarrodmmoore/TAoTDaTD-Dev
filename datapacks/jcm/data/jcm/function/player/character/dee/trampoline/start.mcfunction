#reduced movement
attribute @s jump_strength base set 0
attribute @s movement_speed base set 0.08

#don't look up or down
rotate @s ~ 0

#feedback
playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 1.5 1.25
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 1.75
particle small_gust ~ ~2 ~ 1.5 0 1.5 0.1 5 force
particle minecraft:effect ~ ~2 ~ 1.5 0.5 1.5 1 10 force

#we're in the trampoline state
scoreboard players set @s trampolineState 1

#cooldown
scoreboard players set @s inputCooldownD 15