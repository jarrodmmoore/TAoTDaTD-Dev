#no inputs while i'm talking
scoreboard players set @a[gamemode=adventure] inputCooldown 10

#player messages in order
execute if score @s age matches 10 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.8"}
execute if score @s age matches 70 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.9"}
execute if score @s age matches 70 positioned -67 18 -29 run particle minecraft:effect ~ ~1 ~ 0.5 0.5 0.5 1 10 force
execute if score @s age matches 70 positioned -67 18 -29 run playsound block.brewing_stand.brew master @a ~ ~ ~ 1 1 1
execute if score @s age matches 130 run function jcm:game/2/say_line {sound:"entity.strider.ambient",name:"entity.minecraft.strider",color:red,line:"jcm.dialog.npc.4.10"}

#eat the apple
execute if score @s age matches 180 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 184 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 188 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 192 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 196 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 200 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 204 as @a[gamemode=adventure] at @s run function jcm:object/npc/talk_4_eating_apple
execute if score @s age matches 208 as @a[gamemode=adventure] at @s run playsound minecraft:entity.player.burp master @a ~ ~ ~
execute if score @s age matches 208 as @a[gamemode=adventure] at @s run playsound minecraft:entity.player.burp master @a ~ ~ ~
execute if score @s age matches 208 as @a[gamemode=adventure] at @s run playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~

#players pretend to drink the potions
execute if score @s age matches 230 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 234 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 238 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 242 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 246 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 250 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 254 as @a[gamemode=adventure] at @s run playsound entity.generic.drink
execute if score @s age matches 258 as @a[gamemode=adventure] at @s run playsound minecraft:entity.zombie_villager.converted master @a ~ ~ ~

#end the game (also sets age back to 0)
execute if score @s age matches 260.. run function jcm:game/3/_3_init
