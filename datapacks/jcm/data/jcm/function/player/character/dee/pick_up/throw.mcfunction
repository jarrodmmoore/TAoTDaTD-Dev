#state
scoreboard players set @s pickUpState 0
scoreboard players set @s inputCooldownC 10

#feedback
playsound minecraft:item.trident.riptide_1 master @a ~ ~ ~ 1.25 0.95

#throw it (use our rotation with entity's position)
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=grabbedObject] if score @s holderID = #checkID value positioned as @s run function jcm:player/character/dee/pick_up/launch_release_grabbed_object