#kill any previous props
kill @e[tag=lobbyProp]

#dum cage
summon marker 5 201 0 {Tags:["lobbyProp","tweedleDumStart"]}
summon text_display 5 203 0 {Tags:["lobbyProp","tweedleDumText","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.choose_player_2",fallback:"Play as Tweedle Dum",italic:true}]}
clone 5 201 22 7 205 24 8 201 -1

#dee cage
summon marker -5 201 0 {Tags:["lobbyProp","tweedleDeeStart"]}
summon text_display -5 203 0 {Tags:["lobbyProp","tweedleDeeText","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.choose_player_1",fallback:"Play as Tweedle Dee",italic:true}]}
clone 5 201 22 7 205 24 -10 201 -1

#lights off
setblock 9 202 0 air
setblock -9 202 0 air

#other stuff in the cages
summon strider 6 202 23 {Tags:["lobbyProp"],PersistenceRequired:1b,Silent:1b}
summon zombie_villager -12 199 19 {Tags:["lobbyProp"],PersistenceRequired:1b,Silent:1b}
summon zombified_piglin 12 196 18 {Tags:["lobbyProp"],PersistenceRequired:1b,Silent:1b}
summon wither_skeleton 12 198 33 {Tags:["lobbyProp"],PersistenceRequired:1b,Silent:1b}
summon skeleton_horse -6 203 33 {Tags:["lobbyProp"],PersistenceRequired:1b,Silent:1b}

#special options may or may not be offered
#erase data
execute if score #gameProgress value matches 1.. run setblock 6 201 8 tnt
execute if score #gameProgress value matches 1.. run setblock 6 202 8 lever[face=floor,facing=south,powered=false]
execute if score #gameProgress value matches 1.. run summon text_display 6 203 8 {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.erase_progress",fallback:"Erase Progress",color:red,bold:true}]}
execute unless score #gameProgress value matches 1.. run fill 6 201 8 6 202 8 air
#new game+
fill -6 201 8 -6 202 8 air
execute unless score #gameProgress value matches 1.. if score #newGamePlusUnlocked value matches 1 run setblock -6 201 8 redstone_lamp[lit=false]
execute unless score #gameProgress value matches 1.. if score #newGamePlusUnlocked value matches 1 run setblock -6 202 8 lever[face=floor,facing=south,powered=false]
execute unless score #gameProgress value matches 1.. if score #newGamePlusUnlocked value matches 1 run summon text_display -6 203 8 {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.new_game_plus",fallback:"New Game +",bold:true}]}

#show play info if game was already started
execute if score #gameProgress value matches 1.. positioned 0 203 10 run function jcm:game/0/summon_playthrough_info