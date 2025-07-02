#done
scoreboard players set @s trampolineState 0

#can move again
attribute @s jump_strength base reset
attribute @s movement_speed base set 0.15

#feedback
playsound minecraft:entity.phantom.flap master @a ~ ~ ~ 1.5 1.25
playsound minecraft:item.book.page_turn master @a ~ ~ ~ 1 1.8
particle poof ~ ~2 ~ 1.5 0 1.5 0.01 10 force
particle small_gust ~ ~2 ~ 1.5 0 1.5 0.1 10 force

#can't do it again for 0.5 sec
scoreboard players set @s[scores={inputCooldownD=..9}] inputCooldownD 10