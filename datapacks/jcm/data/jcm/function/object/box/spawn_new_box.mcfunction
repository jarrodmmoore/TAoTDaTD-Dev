#tnt for block physics
#block_display to look nice
#-----------------------------------
#crate
execute if entity @s[tag=crate] run summon tnt ~ ~ ~ {Tags:["setme","box","crate","tickObject","canPickUp","canSuck"],fuse:100,block_state:{Name:"minecraft:air"},Silent:1b,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setme3","boxVisual"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"bamboo_mosaic"}}} \
    ],block_state:{Name:"minecraft:air"}}
#anvil
execute if entity @s[tag=anvil] run summon tnt ~ ~ ~ {Tags:["setme","box","anvil","heavy","tickObject","cannotPickUp","canSuck"],fuse:100,block_state:{Name:"minecraft:air"},Silent:1b,Passengers:[ \
    {id:"minecraft:item_display",Tags:["setme3","boxVisual"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:stone",count:1,components:{"minecraft:item_model":"anvil"}}} \
    ],block_state:{Name:"minecraft:air"}}

#shulker for entity physics
summon block_display ~ ~ ~ {Tags:["setme4","boxCollisionPos"],Passengers:[ \
    {id:"minecraft:shulker",Tags:["setme2","boxCollision"],NoAI:1b,Color:6b,Invulnerable:1b,Silent:1b,AttachFace:0b,attributes:[{id:"minecraft:scale",base:1.0}],active_effects:[{id:"minecraft:invisibility",amplifier:0,duration:-1,show_particles:0b}]} \
    ]}
#-----------------------------------

#setup for each entity
scoreboard players add @s boxInstance 1
scoreboard players operation @e[tag=setme,distance=..1,type=tnt] boxInstance = @s boxInstance
scoreboard players operation @e[tag=setme,distance=..1,type=tnt] boxSpawnerUID = @s boxSpawnerUID
scoreboard players set @e[tag=setme,distance=..1,type=tnt] lifespan 7
tag @e[tag=setme,distance=..1,type=tnt] remove setme

scoreboard players set @e[tag=setme2,distance=..1,type=shulker] lifespan 7
tag @e[tag=setme2,distance=..1,type=shulker] remove setme2

scoreboard players set @e[tag=setme3,distance=..1,type=item_display] lifespan 7
tag @e[tag=setme3,distance=..1,type=item_display] remove setme3

scoreboard players set @e[tag=setme4,distance=..1,type=block_display] lifespan 7
scoreboard players operation @e[tag=setme4,distance=..1,type=block_display] boxInstance = @s boxInstance
scoreboard players operation @e[tag=setme4,distance=..1,type=block_display] boxSpawnerUID = @s boxSpawnerUID
tag @e[tag=setme4,distance=..1,type=block_display] remove setme4