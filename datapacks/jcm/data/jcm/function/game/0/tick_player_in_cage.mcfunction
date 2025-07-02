#tell players they can dismount
scoreboard players set @s actionbarCooldown 80
title @s actionbar [{translate:"jcm.lobby.press_key_to_cancel",with:[{keybind:key.sneak,color:yellow}]}]

#sneak input lets the player out
execute as @a[gamemode=adventure,scores={playerCharacter=1..,inputCooldown=..0}] if predicate jcm:sneak run function jcm:game/0/cancel_player_choice
