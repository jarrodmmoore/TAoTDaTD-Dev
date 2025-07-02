#feedback
#execute at @s run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 1.5 0.6
#particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force

#state
scoreboard players set @s cloneState 0

#kill all minions
scoreboard players operation #checkID value = @s playerID
execute as @e[type=skeleton,tag=deeClone] if score @s playerID = #checkID value at @s run function jcm:object/dee_clone_vanish

#cooldown
scoreboard players set @s inputCooldownE 15