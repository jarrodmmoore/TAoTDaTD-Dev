effect clear @s
effect give @s blindness 2 1 true
scoreboard players reset @s death

#feedback
title @s subtitle [""]
title @s title [{translate:"jcm.game.you_died",color:red,bold:true}]

#go back to checkpoint (after a few ticks)
scoreboard players set @s deathTime 1

#release any held objects
execute if score @s suckState matches 1.. run function jcm:player/character/dum/suck/spit
execute if score @s pickUpState matches 1.. run function jcm:player/character/dee/pick_up/cancel

#setup again
execute if score @s playerCharacter matches 1 run function jcm:player/character/dee/_dee_setup
execute if score @s playerCharacter matches 2 run function jcm:player/character/dum/_dum_setup