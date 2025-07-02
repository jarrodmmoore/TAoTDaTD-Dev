#don't summon a duplicate
execute unless loaded 0 200 0 run return 0
execute if entity @e[type=skeleton,tag=fakeTweedleDee,x=-9,y=202,z=0,distance=..5] run return 0
#=====

kill @e[type=skeleton,tag=fakeTweedleDee]
summon skeleton -9 202 0 {Tags:["lobbyProp","fakeTweedleDee"],Silent:1b,PersistenceRequired:1b,attributes:[{id:"minecraft:follow_range",base:0}],equipment:{ \
    head:{id:blue_dye,components:{item_model:"jcm/object/tweedledee_head"}}, \
    chest:{id:blue_dye,components:{equippable:{slot:chest,asset_id:"dee"}}}, \
    legs:{id:blue_dye,components:{equippable:{slot:legs,asset_id:"dee"}}}, \
    } \
}

#lights out
setblock -9 202 0 air