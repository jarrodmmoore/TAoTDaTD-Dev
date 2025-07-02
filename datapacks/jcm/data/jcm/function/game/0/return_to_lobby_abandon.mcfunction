#executed when players abandon and we need to send back to player select zone

#reset state
function jcm:game/0/_0_init

#shut up
title @a subtitle [""]
title @a title [""]

#join handler will pick this player up momentarily
scoreboard players reset @a[gamemode=!creative]
clear @a[gamemode=!creative]
effect clear @a[gamemode=!creative]