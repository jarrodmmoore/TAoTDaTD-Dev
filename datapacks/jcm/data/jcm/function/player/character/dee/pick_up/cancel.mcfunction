#state
scoreboard players set @s pickUpState 0
scoreboard players set @s inputCooldownC 10

#release any grabbed objects
scoreboard players operation #checkID value = @s playerID
execute as @e[tag=grabbedObject] if score @s holderID = #checkID value run function jcm:player/character/dee/pick_up/release_grabbed_object