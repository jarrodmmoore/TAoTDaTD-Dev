#get the thing
tag @e[distance=..3,tag=canPickUp,tag=!self,sort=nearest,limit=1] add grabTarget
#nogravity on tnt
execute as @e[distance=..3,tag=grabTarget,type=tnt] run data merge entity @s {NoGravity:1b}
#player got picked up? use a mount
execute as @a[tag=grabTarget,distance=..3] run function jcm:player/character/dee/pick_up/pick_up_player
#set id
tag @e[distance=..3,tag=grabTarget] add grabbedObject
scoreboard players operation @e[distance=..3,tag=grabTarget] holderID = @s playerID

#feedback
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1.7
playsound minecraft:entity.evoker.prepare_attack master @a ~ ~ ~ 1 1.9
execute as @e[distance=..3,tag=grabTarget] at @s run particle end_rod ^ ^1.8 ^2 0.5 0.5 0.5 0.05 15 force

#state
scoreboard players set @s pickUpState 1
scoreboard players set @s inputCooldownC 10

#cleanup
tag @e[distance=..3,tag=grabTarget] remove grabTarget