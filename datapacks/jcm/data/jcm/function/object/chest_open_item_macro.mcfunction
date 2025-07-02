#summon the item for a moment
$summon item_display ~ ~1.25 ~ {Tags:["setlife"],billboard:"center",brightness:{block:15,sky:15},item:{id:"$(item)"}}
scoreboard players set @e[type=item_display,tag=setlife,distance=..2] lifespan 25
tag @e[type=item_display,tag=setlife,distance=..2] remove setlife

#say what happen
$tellraw @a [{translate:"$(message)",with:[{selector:"@a[limit=1,tag=reciever]",color:white}],color:yellow}]

#set collection flag
$scoreboard players set $(flag) value 1