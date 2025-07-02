#looky here!
playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 100000 1.25 1
particle instant_effect ~ ~.25 ~ 0.5 0.5 0.5 0.1 30 force

#summon the thing
summon block_display ~ ~ ~ {Tags:["checkValid","setme","chestVisual"],billboard:"vertical",brightness:{block:15,sky:15},block_state:{Name:"chest"}, \
    transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},Passengers:[ \
    {id:"interaction",Tags:["setme2","checkValid","chestInteraction","tickObject"],width:1.2,height:2} \
]}

#validate new items
scoreboard players set @e[distance=..1,type=block_display,tag=setme] valid 1
tag @e[distance=..1,type=block_display,tag=setme] remove setme

#pass along info on what item we're supposed to be
scoreboard players set @e[distance=..2,type=interaction,tag=setme2] chestID 3
scoreboard players set @e[distance=..2,type=interaction,tag=setme2] valid 1
tag @e[distance=..2,type=interaction,tag=setme2] remove setme2