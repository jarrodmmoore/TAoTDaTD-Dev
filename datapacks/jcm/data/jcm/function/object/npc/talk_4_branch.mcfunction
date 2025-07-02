#found brewing stand if we ran this function
scoreboard players set #foundBrewingStand value 1

#can give multiple dialogs
#1 = don't have materials
#2 = don't have apples
#3 = need both players to come up
#4 = end the game

scoreboard players set #check1 value 0
execute if score #collectedBlazePowder value matches 1.. \
    if score #collectedBottle1 value matches 1.. if score #collectedBottle2 value matches 1.. \
    if score #collectedGhastTear value matches 1.. \
    if score #collectedNetherWart value matches 1.. run scoreboard players set #check1 value 1
scoreboard players set #check2 value 0
execute if score #totalGold value matches 144.. \
    if score #collectedApple1 value matches 1.. if score #collectedApple2 value matches 1.. run scoreboard players set #check2 value 1
scoreboard players set #check3 value 0
execute if entity @a[gamemode=adventure,scores={playerCharacter=1},x=-70,y=16,z=-32,dx=6,dy=30,dz=20] \
    if entity @a[gamemode=adventure,scores={playerCharacter=2},x=-70,y=16,z=-32,dx=6,dy=30,dz=20] run scoreboard players set #check3 value 1

#using airTime to track branch
scoreboard players set @s airTime 0
execute if score #check1 value matches 1.. run scoreboard players set @s airTime 1
execute if score #check1 value matches 1.. if score #check2 value matches 1.. run scoreboard players set @s airTime 2
execute if score #check1 value matches 1.. if score #check2 value matches 1.. if score #check3 value matches 1.. run scoreboard players set @s airTime 3