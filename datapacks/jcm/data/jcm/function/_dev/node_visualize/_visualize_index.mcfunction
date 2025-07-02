#executed by a node spawnpoint marker

#show whatever our name is
summon area_effect_cloud ~ ~.1 ~ {custom_particle:{type:"block",block_state:{Name:"air"}},WaitTime:0,Duration:5,Tags:["setname"],CustomNameVisible:true}
data modify entity @e[limit=1,tag=setname,distance=..2,type=area_effect_cloud] CustomName set from entity @s CustomName


#node specific stuff
execute if entity @s[tag=spawnGoldNugget] run particle dust{color:[1,1,0],scale:1.5f} ~ ~.25 ~ 0 0 0 0 1 force
#...
#spawners
execute if entity @s[tag=boxSpawner] run particle dust{color:[0,0,0],scale:1.5f} ~ ~.25 ~ 0 0 0 0 1 force
execute if entity @s[tag=enemySpawner] run particle dust{color:[1,0,0],scale:1.5f} ~ ~.25 ~ 0 0 0 0 1 force


#cleanup
tag @e[limit=1,tag=setname,distance=..2,type=area_effect_cloud] remove setname