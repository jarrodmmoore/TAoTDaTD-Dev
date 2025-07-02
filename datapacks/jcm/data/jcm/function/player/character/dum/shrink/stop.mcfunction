#can't do it in small spaces
scoreboard players set #test value 0
execute if block ~.25 ~.6 ~.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.25 ~.6 ~.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.25 ~.6 ~-.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.25 ~.6 ~-.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.25 ~1.2 ~.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.25 ~1.2 ~.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~.25 ~1.2 ~-.25 #jcm:not_solid run scoreboard players add #test value 1
execute if block ~-.25 ~1.2 ~-.25 #jcm:not_solid run scoreboard players add #test value 1
execute if score #test value matches ..7 run scoreboard players set @s inputCooldownB 10
execute if score #test value matches ..7 run return run playsound entity.evoker.ambient master @a ~ ~ ~ 1.5 1.5
#=====

#feedback
execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 1.4
execute at @s run playsound block.beacon.activate master @a ~ ~ ~ 1.5 1.5
particle cloud ~ ~1 ~ 0.25 0.5 0.25 0.1 10 force
particle minecraft:effect ~ ~.25 ~ 0.25 0.25 0.25 1 6 force

#un-shrink
scoreboard players set @s playerSize 0
attribute @s scale base set 0.85
attribute @s movement_speed base set 0.15

#can't do it again for 0.5 sec
scoreboard players set @s[scores={inputCooldownB=..9}] inputCooldownB 10