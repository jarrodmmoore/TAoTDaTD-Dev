#state
scoreboard players reset @s trampolineState

#model
item replace entity @s armor.head with blue_dye[item_model="jcm/object/tweedledee_head"]

#feedback
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 1.25
playsound minecraft:item.book.page_turn master @a ~ ~ ~ 1 1.8
particle poof ~ ~2 ~ 1.5 0 1.5 0.01 10 force
particle small_gust ~ ~2 ~ 1.5 0 1.5 0.1 10 force