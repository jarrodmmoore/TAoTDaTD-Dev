#kill any old enemy with this same id
scoreboard players operation #checkID value = @s enemyID
execute as @e[tag=enemyEntity] if score @s enemyID = #checkID value run scoreboard players set @s lifespan 0

#spawn enemy
execute if entity @s[tag=spider] run summon spider ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","canPickUp","canSuck","canHoldButtons"],attributes:[{id:"attack_damage",base:4}]}
execute if entity @s[tag=skeleton] run summon skeleton ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","ballCanLaunch","canPickUp","canSuck","canHoldButtons"],attributes:[{id:"attack_damage",base:4}],equipment:{head:{id:"red_dye",components:{item_model:"jcm/object/blank"}}}}
execute if entity @s[tag=wither_skeleton] run summon wither_skeleton ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","canKillMount","cannotPickUp","canSuck","canHoldButtons"],attributes:[{id:"attack_damage",base:4}],equipment:{mainhand:{id:"stone_sword"}}}
execute if entity @s[tag=vindicator] run summon vindicator ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","ballCanLaunch","canKillMount","canPickUp","canSuck","canHoldButtons"],equipment:{mainhand:{id:"stone_axe"}}}
execute if entity @s[tag=evoker] run summon evoker ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","ballCanLaunch","canPickUp","canSuck","canHoldButtons"]}
execute if entity @s[tag=iron_golem] run summon iron_golem ~ ~ ~ {Tags:["enemyEntity","tickObject","setme","canKillMount","cannotPickUp","canHoldButtons"],attributes:[{id:"movement_speed",base:0.25},{id:"step_height",base:1.2},{id:"knockback_resistance",base:1.0}]}

#valid... in this session only
scoreboard players set @e[tag=setme,distance=..5] enemySpawn 1

#give uid to enemy
scoreboard players operation @e[tag=setme,distance=..5] enemyID = @s enemyID

#ominous sound and particles
particle large_smoke ~ ~1 ~ 0.25 0.5 0.25 0.1 20 force @a
playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 2.5 1.1

#done!
tag @e[tag=setme,distance=..5] remove setme
scoreboard players set @s enemySpawn 1