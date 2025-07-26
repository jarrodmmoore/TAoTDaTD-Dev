scoreboard players set @s lifespan 2
scoreboard players add @s age 1

#make noise when damaged
execute store result score #heath value run data get entity @s Health
execute if score @s entityHealth matches -2147483648..2147483647 if score #health value < @s entityHealth run playsound entity.player.hurt master @a
scoreboard players operation @s entityHealth = #heath value

#stay alive as long as player is nearby
scoreboard players set #test value 0
scoreboard players operation #checkID value = @s playerID
execute if score @s playerID matches -2147483648..2147483647 as @a[scores={playerCharacter=1},distance=..60] if score @s playerID = #checkID value run scoreboard players set #test value 1
execute if score #test value matches 1.. run scoreboard players set @s[scores={age=41..}] age 40

#trampoline active
execute if score @s trampolineState matches 1.. run function jcm:object/dee_clone_trampoline_active

#bounce on trampoline
execute if block ~ ~-.25 ~ barrier if entity @e[type=marker,tag=temporaryBarrier,distance=..3] run function jcm:common/add_raw_force_3d {x:"0",y:"2500",z:"0"}

#vanish if left alone
execute if entity @s[scores={age=60..}] run function jcm:object/dee_clone_vanish