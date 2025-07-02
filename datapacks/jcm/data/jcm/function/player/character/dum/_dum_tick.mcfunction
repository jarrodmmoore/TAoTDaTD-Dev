#take stock of what abilities we have
execute store result score #ability1 value run data get storage jcm:data dum_abilities[0] 1
execute store result score #ability2 value run data get storage jcm:data dum_abilities[1] 1
execute store result score #ability3 value run data get storage jcm:data dum_abilities[2] 1
execute store result score #ability4 value run data get storage jcm:data dum_abilities[3] 1
execute store result score #ability5 value run data get storage jcm:data dum_abilities[4] 1

#restrictions:
#can't use rollout while mid-air
execute unless entity @s[tag=onGround] unless entity @s[tag=inWater] run scoreboard players set @s[scores={inputCooldownA=..4,ballState=..0}] inputCooldownA 5
#can't use rollout while shrunk
execute if score @s playerSize matches 1 run scoreboard players set @s[scores={inputCooldownA=..4}] inputCooldownA 5
#can't suck or spit while rolling
execute if score @s ballState matches 1.. run scoreboard players set @s[scores={inputCooldownC=..9}] inputCooldownC 10
#can't suck while inflated
execute if score @s inflateState matches 1.. run scoreboard players set @s[scores={inputCooldownC=..9}] inputCooldownC 10
#can't inflate or roll while sucked
execute if score @s suckState matches 1.. run scoreboard players set @s[scores={inputCooldownD=..9}] inputCooldownD 10
execute if entity @s[scores={suckState=1..},tag=ateAnvil] run scoreboard players set @s[scores={inputCooldownA=..4}] inputCooldownA 5

#always invisible
effect give @s[gamemode=adventure] invisibility infinite 1 true
effect clear @s[gamemode=!adventure] invisibility

#inventory
execute if entity @s[gamemode=adventure] run function jcm:player/character/dum/dum_inventory
execute if entity @s[gamemode=adventure] run function jcm:player/character/dum/equipment



#input handling
execute if entity @s[gamemode=adventure,scores={carrotInput=1..,inputCooldown=..0}] if items entity @s weapon.mainhand *[custom_data~{hotbar_item:1b}] run function jcm:player/character/dum/handle_input


#abilities
#--------------------
#rollout active
execute if score @s ballState matches 1 run function jcm:player/character/dum/rollout/rollout_active

#inflate active
execute if score @s inflateState matches 1 run function jcm:player/character/dum/inflate/inflated_tick

#suck active
scoreboard players remove @s[scores={suckTime=1..}] suckTime 1
execute if score @s suckState matches 0 if score @s suckTime matches 1.. run function jcm:player/character/dum/suck/suck_loop
execute if score @s suckState matches 1 run function jcm:player/character/dum/suck/holding_entity_active
#--------------------