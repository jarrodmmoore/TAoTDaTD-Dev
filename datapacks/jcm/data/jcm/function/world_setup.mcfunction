#run this manually!

#world spawn
setworldspawn 0 -60 0
scoreboard players set #newGamePlus value 0

#say it
tellraw @a [{translate:"jcm.editor.world_setup_success",fallback:"World setup function was run successfully.",color:"aqua"}]