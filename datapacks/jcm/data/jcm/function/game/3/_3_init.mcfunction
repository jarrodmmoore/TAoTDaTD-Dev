#did an npc call this? tell it to shut up
scoreboard players set @s[tag=npc] age 0


#set state
scoreboard players set #gameState value 3

#clear everyone
clear @a
effect clear @a
execute as @a run ride @s dismount
title @a subtitle [""]
title @a title [""]
title @a actionbar [""]
stopsound @a
execute as @a run attribute @s scale base reset

#game progress value now indicates that we beat the game
execute if score #gameProgress value matches ..99 run scoreboard players set #gameProgress value 100

#unlock ng+ for beating the game
scoreboard players set #newGamePlusUnlocked value 1

#get ready for a super lazy cutscene
scoreboard players set #endCutscene value 0