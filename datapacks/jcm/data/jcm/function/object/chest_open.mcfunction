execute on target run tag @s add reciever

#chest dies
scoreboard players set @s lifespan 0
execute on vehicle run scoreboard players set @s lifespan 0

#everyone will know about this
execute as @a at @s run playsound block.chest.open master @s ~ 100000 ~ 1000000
execute as @a at @s run playsound entity.player.levelup master @s ~ 100000 ~ 1000000

#fancy effect
particle instant_effect ~ ~1 ~ 0.25 0.25 0.25 0.1 20 force @a
playsound block.wood.break master @a
particle block{block_state:{Name:"oak_planks"}} ~ ~.5 ~ 0.33 0.33 0.33 1 20 force

#index based on what we represent
execute if entity @s[scores={chestID=1}] run function jcm:object/chest_open_item_macro {item:"blaze_powder",flag:"#collectedBlazePowder",message:"jcm.collected.blaze_powder"}
execute if entity @s[scores={chestID=2}] run function jcm:object/chest_open_item_macro {item:"nether_wart",flag:"#collectedNetherWart",message:"jcm.collected.nether_wart"}
execute if entity @s[scores={chestID=3}] run function jcm:object/chest_open_item_macro {item:"ghast_tear",flag:"#collectedGhastTear",message:"jcm.collected.ghast_tear"}
execute if entity @s[scores={chestID=4}] run function jcm:object/chest_open_item_macro {item:"glass_bottle",flag:"#collectedBottle1",message:"jcm.collected.water_bottle"}
execute if entity @s[scores={chestID=5}] run function jcm:object/chest_open_item_macro {item:"glass_bottle",flag:"#collectedBottle2",message:"jcm.collected.water_bottle"}
execute if entity @s[scores={chestID=6}] run function jcm:object/chest_open_item_macro {item:"apple",flag:"#collectedApple1",message:"jcm.collected.apple"}
execute if entity @s[scores={chestID=7}] run function jcm:object/chest_open_item_macro {item:"apple",flag:"#collectedApple2",message:"jcm.collected.apple"}
#gold is special
execute if entity @s[scores={chestID=8}] run function jcm:object/chest_open_item_macro {item:"gold_ingot",flag:"#test",message:"jcm.collected.gold_ingot"}
execute if entity @s[scores={chestID=8}] as @a[limit=1,tag=reciever] unless score @s playerCharacter matches 2 run scoreboard players add #deeGold value 9
execute if entity @s[scores={chestID=8}] as @a[limit=1,tag=reciever] if score @s playerCharacter matches 2 run scoreboard players add #dumGold value 9

#cleanup
tag @a[tag=reciever] remove reciever