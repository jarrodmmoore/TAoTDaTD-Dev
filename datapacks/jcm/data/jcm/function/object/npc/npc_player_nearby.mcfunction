#face the nearest player... assuming they have a head
execute facing entity @a[gamemode=adventure,distance=..10,tag=!bodyHideHead,limit=1,sort=nearest] feet run rotate @s ~ ~

#exit out if already in dialog
execute if score @s age matches 1.. run return 0
#=====

#interact with me!
scoreboard players set @a[gamemode=adventure,distance=..8] interactNearby 5
execute if score #5Hz value matches 1 run summon item_display ~ ~2 ~ {Tags:["setme"],item_display:"head",billboard:"vertical",brightness:{block:15,sky:15},item:{id:"stone",components:{item_model:"jcm/gui/interact"}}}
execute if score #5Hz value matches 1 run scoreboard players set @e[type=item_display,distance=..3,tag=setme] lifespan 7
execute if score #5Hz value matches 1 run tag @e[type=item_display,distance=..3,tag=setme] remove setme