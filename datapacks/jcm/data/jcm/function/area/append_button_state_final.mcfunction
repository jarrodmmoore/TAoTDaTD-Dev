execute if block ~ ~ ~ redstone_block run scoreboard players add #count value 1
execute if block ~ ~ ~ redstone_block run data modify storage jcm:data button_display append value [{text:"■",color:"#B0A090"}]
execute unless block ~ ~ ~ redstone_block run data modify storage jcm:data button_display append value [{text:"□",color:"#B0A090"}]