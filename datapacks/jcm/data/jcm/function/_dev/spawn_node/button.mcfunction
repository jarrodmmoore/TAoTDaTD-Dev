#spawn item display
$summon item_display ~ ~ ~ {Tags:["button","$(tag)","tickObject","eraseable"],item_display:"head",item:{id:"stone",components:{item_model:"$(model)"}}}
scoreboard players add @e[type=item_display,tag=button] buttonState 0