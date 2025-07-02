tag @s add itemAssignSession
tag @s add stay
scoreboard players set @s itemValidSpawn 1

#while we're here: grab the playerID of our owner
scoreboard players set #getID value 0
execute on origin run scoreboard players operation #getID value = @s playerCharacter
scoreboard players operation @s playerCharacter = #getID value

#tag ourselves if we have groundDeploy behavior (we'll do this here instead of checking repeatedly...)
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{groundDeploy:1b}}}}] run tag @s add groundDeploy

#regular items should fizzle out on the floor
execute if entity @s[tag=!groundDeploy,tag=!neverFizzle,nbt={Item:{components:{"minecraft:custom_data":{item:1b}}}}] run tag @s add fizzleOnGround
tag @s[tag=fizzleOnGround] add groundDeploy