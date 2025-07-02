#bigger fall = bigger sound
playsound minecraft:entity.iron_golem.step master @a
execute if score @s recentFallVelocity matches ..-5000 run playsound minecraft:entity.ravager.step master @a ~ ~ ~ 1 0.7
execute if score @s recentFallVelocity matches ..-10000 run playsound minecraft:entity.iron_golem.hurt master @a ~ ~ ~ 1 0.7
#bigger fall = bigger particle
particle item_slime ~ ~.25 ~ 0.25 0.05 0.25 1 10 force
execute if score @s recentFallVelocity matches ..-5000 run particle item_slime ~ ~.25 ~ 0.5 0.05 0.5 1 10 force
execute if score @s recentFallVelocity matches ..-10000 run particle item_slime ~ ~.25 ~ 0.75 0.05 0.75 1 10 force

#send signals to the map from here...
#...