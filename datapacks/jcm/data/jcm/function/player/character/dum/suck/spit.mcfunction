#state
scoreboard players set @s suckState 0
scoreboard players set @s suckTime 0
scoreboard players set @s inputCooldownC 10

#feedback
playsound minecraft:entity.shulker.death master @a ~ ~ ~ 1.25 1.15

#clear tags
tag @s remove ateAnvil
attribute @s movement_speed base set 0.15
scoreboard players set @s prevFallState 1

#throw it (use our rotation with entity's position)
execute rotated ~ 0 store result score #check value run execute if block ^ ^1 ^1 #jcm:not_solid
execute rotated ~ 0 if block ^ ^1 ^1 #jcm:not_solid if block ^ ^1 ^1.75 #jcm:not_solid run scoreboard players set #check value 2
execute rotated ~ 0 if block ^ ^1 ^1 #jcm:not_solid if block ^ ^1 ^1.75 #jcm:not_solid if block ^ ^1 ^2.5 #jcm:not_solid run scoreboard players set #check value 3
scoreboard players operation #checkID value = @s playerID
execute if score #check value matches ..0 as @e[tag=suckedObject] if score @s holderID = #checkID value rotated ~ 0 positioned ^ ^1 ^ run function jcm:player/character/dum/suck/release_sucked_object
execute if score #check value matches 1 as @e[tag=suckedObject] if score @s holderID = #checkID value rotated ~ 0 positioned ^ ^1 ^.75 run function jcm:player/character/dum/suck/release_sucked_object
execute if score #check value matches 2 as @e[tag=suckedObject] if score @s holderID = #checkID value rotated ~ 0 positioned ^ ^1 ^1.5 run function jcm:player/character/dum/suck/release_sucked_object
execute if score #check value matches 3.. as @e[tag=suckedObject] if score @s holderID = #checkID value rotated ~ 0 positioned ^ ^1 ^2.25 run function jcm:player/character/dum/suck/release_sucked_object
