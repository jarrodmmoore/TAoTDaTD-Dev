#do something based on what we are

#-------------------
#spawners
execute if entity @s[tag=enemySpawner] run return run execute if score #5Hz value matches 1 run function jcm:object/enemy/_enemy_spawner
execute if entity @s[tag=boxSpawner] run return run execute if score #5Hz value matches 2 run function jcm:object/box/_box_spawner
#-------------------

#buttons
execute if entity @s[tag=button] run return run execute if score #5Hz value matches 1 run function jcm:object/button/button_think

#box
execute if entity @s[tag=box] run return run function jcm:object/box/box_tick

#npc
execute if entity @s[tag=npc] run return run function jcm:object/npc/_npc_general

#chest interaction
execute if entity @s[tag=chestInteraction] run return run execute if score #5Hz value matches 0 run function jcm:object/chest_interaction

#cauldron (ambient sounds and particles)
execute if entity @s[tag=cauldron] run return run execute if score #5Hz value matches 1 run function jcm:object/cauldron_ambient

#item entity holder (for underwater or other chaotic situations)
execute if entity @s[tag=itemHolder] run return run function jcm:object/item_holder

#enemies
execute if entity @s[tag=enemyEntity] run return run function jcm:object/enemy/generic

#dee clones
execute if entity @s[tag=deeClone] run return run function jcm:object/dee_clone

#explosion
execute if entity @s[tag=explosion] run return run function jcm:object/explosion
