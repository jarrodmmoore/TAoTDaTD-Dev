#take stock of what abilities we have
execute store result score #ability1 value run data get storage jcm:data dee_abilities[0] 1
execute store result score #ability2 value run data get storage jcm:data dee_abilities[1] 1
execute store result score #ability3 value run data get storage jcm:data dee_abilities[2] 1
execute store result score #ability4 value run data get storage jcm:data dee_abilities[3] 1
execute store result score #ability5 value run data get storage jcm:data dee_abilities[4] 1

#restrictions:
#no clones while up high
execute if score @s playerSize matches 1 run scoreboard players set @s[scores={inputCooldownE=..9}] inputCooldownE 10
#no trampoline while airborne or in water
execute if entity @s[tag=!onGround] run scoreboard players set @s[scores={playerSize=..0,inputCooldownD=..4}] inputCooldownD 5
execute if entity @s[tag=inWater] run scoreboard players set @s[scores={playerSize=..0,inputCooldownD=..4}] inputCooldownD 5
#can only use pick up when object nearby
tag @s add self
execute store result score #pickableObjectNearby value run execute if entity @e[distance=..5,tag=canPickUp,tag=!self]
execute if entity @e[distance=..5,tag=cannotPickUp,tag=!self] run scoreboard players add #pickableObjectNearby value 1
tag @s remove self
execute if score #pickableObjectNearby value matches ..0 run scoreboard players set @s[scores={pickUpState=..0,inputCooldownC=..4}] inputCooldownC 5
#no extend if not on ground
execute unless entity @s[tag=onGround] unless entity @s[tag=inWater] run scoreboard players set @s[scores={inputCooldownB=..4,playerSize=..0}] inputCooldownB 5

#always invisible
effect give @s[gamemode=adventure] invisibility infinite 1 true
effect clear @s[gamemode=!adventure] invisibility

#inventory
execute if entity @s[gamemode=adventure] run function jcm:player/character/dee/dee_inventory
execute if entity @s[gamemode=adventure] run function jcm:player/character/dee/equipment


#input handling
execute if entity @s[gamemode=adventure,scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{hotbar_item:1b}] run function jcm:player/character/dee/handle_input

#abilities
#--------------------
#extend active
execute if score @s playerSize matches 1 run function jcm:player/character/dee/extend/extend_active

#pick up active
execute if score @s pickUpState matches 1.. run function jcm:player/character/dee/pick_up/pick_up_active

#trampoline active
execute if score @s trampolineState matches 1.. run function jcm:player/character/dee/trampoline/trampoline_active

#manage clones
execute if score @s cloneState matches 1.. run function jcm:player/character/dee/clone/manage_clones
#--------------------