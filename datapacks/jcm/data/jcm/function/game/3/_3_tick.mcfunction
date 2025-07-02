#count up time
scoreboard players add #endCutscene value 1

execute if score #endCutscene value matches 5 as @a at @s run playsound ui.toast.challenge_complete master @s ~ 100000 ~ 1000000
execute if score #endCutscene value matches 5 run title @a subtitle [""]
execute if score #endCutscene value matches 5 run title @a title [{translate:"jcm.game.you_won",color:white,bold:true}]
execute if score #endCutscene value matches 105 run title @a title [""]
execute if score #endCutscene value matches 105 run title @a subtitle [{translate:"jcm.game.thanks_for_playing",color:white,bold:true}]

execute if score #endCutscene value matches 220 run tellraw @a [{translate:"jcm.game.try_new_game_plus",italic:true}]
execute if score #endCutscene value matches 220 run function jcm:game/0/_0_init