#completion

#completion % info
# 200 gold ingots (1 per)
# 2 apples (worth 40)
# 2 bottles (worth 40)
# 1 wart (worth 20)
# 1 powder (worth 20)
# 1 ghast tear (worth 20)
# 1 brewing stand (worth 20)
#total of 360

#gold
scoreboard players set #completionPercent value 0
scoreboard players operation #completionPercent value += #deeGold value
scoreboard players operation #completionPercent value += #dumGold value
execute if score #completionPercent value matches 201.. run scoreboard players set #completionPercent value 200

#misc collectables
execute if score #collectedApple1 value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedApple2 value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedBlazePowder value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedBottle1 value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedBottle2 value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedGhastTear value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #collectedNetherWart value matches 1.. run scoreboard players add #completionPercent value 20
execute if score #foundBrewingStand value matches 1.. run scoreboard players add #completionPercent value 20

#get %
scoreboard players operation #completionPercent value *= #100 value
scoreboard players operation #completionPercent value /= #360 value
execute if score #completionPercent value matches ..-1 run scoreboard players set #completionPercent value 0


#time played
#[(timeHour):(timeMin2)(timeMin):(timeSec2)(timeSec)]
scoreboard players operation #timeMin value = #playTime value
scoreboard players operation #timeMin value /= #1200 value

scoreboard players operation #timeHour value = #timeMin value
scoreboard players operation #timeHour value /= #60 value

scoreboard players operation #timeMin value %= #60 value
scoreboard players operation #timeMin2 value = #timeMin value
scoreboard players operation #timeMin2 value /= #10 value
scoreboard players operation #timeMin value %= #10 value

scoreboard players operation #timeSec value = #playTime value
scoreboard players operation #timeSec value /= #20 value
scoreboard players operation #timeSec value %= #60 value
scoreboard players operation #timeSec2 value = #timeSec value
scoreboard players operation #timeSec2 value /= #10 value
scoreboard players operation #timeSec value %= #10 value

#summon text displays
#new game plus (if active)
execute if score #newGamePlus value matches 1.. run summon text_display ~ ~.85 ~ {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.new_game_plus",color:yellow,bold:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.75f,1.75f,1.75f]}}
#completion
execute if score #gameProgress value matches ..99 run summon text_display ~ ~ ~ {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.completion_percent",with:[{score:{name:"#completionPercent",objective:"value"}}],bold:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
execute if score #gameProgress value matches 100.. run summon text_display ~ ~ ~ {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.completion_percent",with:[{score:{name:"#completionPercent",objective:"value"}}],bold:true},{text:" "},{text:"✓",color:green}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}
#time
summon text_display ~ ~-.75 ~ {Tags:["lobbyProp","tempText"],billboard:vertical,alignment:center,text:[{translate:"jcm.lobby.play_time",with:[{score:{name:"#timeHour",objective:"value"}},{score:{name:"#timeMin2",objective:"value"}},{score:{name:"#timeMin",objective:"value"}},{score:{name:"#timeSec2",objective:"value"}},{score:{name:"#timeSec",objective:"value"}}],bold:true}],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.5f,1.5f,1.5f]}}