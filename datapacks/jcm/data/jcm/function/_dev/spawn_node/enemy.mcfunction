#crate spawner
$summon marker ~ ~ ~ {Tags:["spawnObject","enemySpawner","$(type)","tickObject","setme"],CustomName:[{translate:"jcm.editor.$(type)",color:gold}]}

#assign unique id
execute as @e[tag=setme,type=marker,distance=..1] run function jcm:object/enemy/enemy_get_id
tag @e[tag=setme,type=marker,distance=..1] remove setme