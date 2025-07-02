scoreboard players set @s inputCooldown 20

#yell about it
execute if score @s playerCharacter matches 1 at @s run playsound minecraft:entity.villager.no master @a ~ ~ ~ 1.5 0.85
execute if score @s playerCharacter matches 2 at @s run playsound entity.evoker.ambient master @a ~ ~ ~ 1.5 1
