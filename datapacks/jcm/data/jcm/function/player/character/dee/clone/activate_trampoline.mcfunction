#state
scoreboard players set @s trampolineState 1

#model
item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledee_trampoline"]

#feedback
playsound minecraft:entity.wind_charge.wind_burst master @a ~ ~ ~ 1.5 1.25
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 1.75
particle small_gust ~ ~2 ~ 1.5 0 1.5 0.1 5 force
particle minecraft:effect ~ ~2 ~ 1.5 0.5 1.5 1 10 force