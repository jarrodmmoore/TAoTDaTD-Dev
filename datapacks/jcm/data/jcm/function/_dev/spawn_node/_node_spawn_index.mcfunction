execute if entity @s[tag=goldNugget] run function jcm:_dev/spawn_node/gold_nugget
execute if entity @s[tag=check] run function jcm:_dev/spawn_node/checkpoint
execute if entity @s[tag=eraser] run function jcm:_dev/spawn_node/eraser

execute if entity @s[tag=blueCauldron] run function jcm:_dev/spawn_node/blue_cauldron
execute if entity @s[tag=orangeCauldron] run function jcm:_dev/spawn_node/orange_cauldron

execute if entity @s[tag=eggCrate] run function jcm:_dev/spawn_node/crate
execute if entity @s[tag=eggAnvil] run function jcm:_dev/spawn_node/anvil

execute if entity @s[tag=eggSpider] run function jcm:_dev/spawn_node/enemy {type:"spider"}
execute if entity @s[tag=eggSkeleton] run function jcm:_dev/spawn_node/enemy {type:"skeleton"}
execute if entity @s[tag=eggWitherSkeleton] run function jcm:_dev/spawn_node/enemy {type:"wither_skeleton"}
execute if entity @s[tag=eggEvoker] run function jcm:_dev/spawn_node/enemy {type:"evoker"}
execute if entity @s[tag=eggVindicator] run function jcm:_dev/spawn_node/enemy {type:"vindicator"}
execute if entity @s[tag=eggIronGolem] run function jcm:_dev/spawn_node/enemy {type:"iron_golem"}

execute if entity @s[tag=eggButtonAny] run function jcm:_dev/spawn_node/button {tag:"buttonAny",model:"jcm/object/pressure_plate"}
execute if entity @s[tag=eggButtonCrate] run function jcm:_dev/spawn_node/button {tag:"buttonCrate",model:"jcm/object/box_pressure_plate"}
execute if entity @s[tag=eggButtonAnvil] run function jcm:_dev/spawn_node/button {tag:"buttonAnvil",model:"jcm/object/heavy_pressure_plate"}
execute if entity @s[tag=eggButtonDum] run function jcm:_dev/spawn_node/button {tag:"buttonDum",model:"jcm/object/dum_pressure_plate"}

execute if entity @s[tag=eggNpc] run function jcm:_dev/spawn_node/npc
execute if entity @s[tag=eggChest] run function jcm:_dev/spawn_node/chest

#now die
tag @s remove nodeSpawn
scoreboard players set @s lifespan 0