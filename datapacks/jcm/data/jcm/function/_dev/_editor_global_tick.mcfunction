#all creative players can trigger editor
scoreboard players enable @a[gamemode=creative] editor
execute as @a[scores={editor=1..}] run function jcm:_dev/trigger_editor

#all vex spawners should do a thing
execute as @e[type=vex,tag=nodeSpawn] at @s run function jcm:_dev/spawn_node/_node_spawn_index

#all nodes visualize themselves
execute if score #5Hz value matches 0 as @e[type=marker,tag=spawnObject] at @s if entity @a[gamemode=creative,distance=..25] run function jcm:_dev/node_visualize/_visualize_index