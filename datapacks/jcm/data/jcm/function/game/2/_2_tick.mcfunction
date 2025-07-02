#count up time
scoreboard players add #introCutscene value 1

#do cutscene sequence
execute if score #introCutscene value matches 1..99999 run function jcm:game/2/cutscene_loop

#end of cutscene, drop players down
execute if score #introCutscene value matches 100000.. run return run function jcm:game/1/_1_init