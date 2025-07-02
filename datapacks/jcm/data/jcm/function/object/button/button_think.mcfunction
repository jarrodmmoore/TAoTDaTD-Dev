scoreboard players set #press value 0

#evaluate our condition
execute if entity @s[tag=!buttonDum,tag=!buttonCrate,tag=!buttonAnvil] positioned ~-2.5 ~-0.25 ~-2.5 if entity @e[tag=canHoldButtons,dx=4,dy=0,dz=4] run scoreboard players set #press value 1
execute if entity @s[tag=!buttonDum,tag=!buttonAnvil] positioned ~-2.5 ~-0.25 ~-2.5 if entity @e[type=tnt,tag=box,dx=4,dy=0,dz=4] run scoreboard players set #press value 1
execute if entity @s[tag=!buttonDum,tag=buttonAnvil] positioned ~-2.5 ~-0.25 ~-2.5 if entity @e[type=tnt,tag=anvil,dx=4,dy=0,dz=4] run scoreboard players set #press value 1
#dum button
execute if entity @s[tag=buttonDum] positioned ~-2.5 ~-0.25 ~-2.5 if entity @a[tag=canHoldButtons,dx=4,dy=0,dz=4,scores={playerCharacter=2},tag=ateAnvil] run scoreboard players set #press value 1

#update state
execute unless score @s buttonState = #press value run function jcm:object/button/update_state