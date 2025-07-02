#lmao
function jcm:common/explode

#restart stuff
function jcm:__reset_progress
function jcm:game/0/_0_init

#tell us what happened
tellraw @a [{text:"(",italic:true,color:gray},{selector:"@a[limit=1,sort=nearest]",italic:true,color:gray},{text:") ",italic:true,color:gray},{translate:"jcm.lobby.erased_game_progress",color:red}]