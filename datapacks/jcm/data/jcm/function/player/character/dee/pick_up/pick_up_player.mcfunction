#executed by a player upon getting picked up by dee

#ride a block_display
summon block_display ~ ~ ~ {Tags:["playerPickUpMount","setme"],teleport_duration:1}
ride @s mount @e[type=block_display,tag=setme,distance=..1,limit=1]
scoreboard players set @e[type=block_display,tag=setme,distance=..1] lifespan 3

#transfer our tag to the block_display
tag @s remove grabTarget
tag @e[type=block_display,tag=setme,distance=..1] add grabTarget

#cleanup
tag @e[type=block_display,tag=setme,distance=..1] remove setme