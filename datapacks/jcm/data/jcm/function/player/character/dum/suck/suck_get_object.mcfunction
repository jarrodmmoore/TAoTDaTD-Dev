tag @e[distance=..1,tag=canSuck,tag=!grabbedObject,limit=1,sort=nearest] add suckThisObject
#tnt gets NoGravity while eaten
execute as @e[distance=..3,tag=suckThisObject,type=tnt] run data merge entity @s {NoGravity:1b}
#set id
tag @e[distance=..3,tag=suckThisObject] add suckedObject
scoreboard players operation @e[distance=..3,tag=suckThisObject] holderID = @s playerID

#feedback
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 1.25 0.75

#state
scoreboard players set @s suckState 1
scoreboard players set @s suckTime 0
scoreboard players set @s inputCooldownC 20

#slower speed
attribute @s movement_speed base set 0.13

#did we eat an anvil? change stuff
execute if entity @e[distance=..3,tag=suckThisObject,type=tnt,tag=anvil] run function jcm:player/character/dum/suck/eat_anvil

#cleanup
tag @e[distance=..3,tag=suckThisObject] remove suckThisObject