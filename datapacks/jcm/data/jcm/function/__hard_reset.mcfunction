#remove cross-playthrough unlocks!
scoreboard players set #newGamePlusUnlocked value 0
scoreboard players set #newGamePlus value 0

#reset all
function jcm:__reset_progress
scoreboard players reset @a
gamemode adventure @a
tag @a remove forceGameplay
function jcm:game/0/_0_init