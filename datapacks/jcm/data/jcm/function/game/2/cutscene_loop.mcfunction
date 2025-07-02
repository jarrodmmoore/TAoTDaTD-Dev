execute if score #introCutscene value matches 10 run summon evoker -1 202 -19 {Tags:["lobbyProp","npcPuppet1","walk1"],NoAI:1b,Silent:1b}
execute if score #introCutscene value matches 10 run summon illusioner 1 202 -19 {Tags:["lobbyProp","npcPuppet2","walk1"],NoAI:1b,Silent:1b}
execute if score #introCutscene value matches 10..70 as @e[tag=walk1] at @s run tp @s ~ ~ ~.15 0 0
execute if score #introCutscene value matches 10..70 as @e[tag=walk1] at @s if block ~ ~-1 ~ #jcm:not_solid run tp @s ~ ~-1 ~

execute if score #introCutscene value matches 12 as @a[gamemode=adventure] at @s facing 0 201 -12 run rotate @s ~ ~

execute if score #introCutscene value matches 90 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.evoker.ambient",name:"entity.minecraft.evoker",color:gray,line:"jcm.dialog.intro.1"}
execute if score #introCutscene value matches 150 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.illusioner.ambient",name:"entity.minecraft.illusioner",color:blue,line:"jcm.dialog.intro.2"}
execute if score #introCutscene value matches 195 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.illusioner.ambient",name:"entity.minecraft.illusioner",color:blue,line:"jcm.dialog.intro.3"}
execute if score #introCutscene value matches 255 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.evoker.ambient",name:"entity.minecraft.evoker",color:gray,line:"jcm.dialog.intro.4"}
execute if score #introCutscene value matches 305 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.illusioner.ambient",name:"entity.minecraft.illusioner",color:blue,line:"jcm.dialog.intro.5"}
execute if score #introCutscene value matches 375 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.evoker.ambient",name:"entity.minecraft.evoker",color:gray,line:"jcm.dialog.intro.6"}
execute if score #introCutscene value matches 435 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.illusioner.ambient",name:"entity.minecraft.illusioner",color:blue,line:"jcm.dialog.intro.7"}
execute if score #introCutscene value matches 500 positioned 0 201 -12 run function jcm:game/2/say_line {sound:"entity.evoker.ambient",name:"entity.minecraft.evoker",color:gray,line:"jcm.dialog.intro.8"}

execute if score #introCutscene value matches 550 as @a at @s run playsound minecraft:ambient.nether_wastes.mood master @s ~ 100000 ~ 100000 2

#end cutscene
execute if score #introCutscene value matches 600 run scoreboard players set #introCutscene value 100000
