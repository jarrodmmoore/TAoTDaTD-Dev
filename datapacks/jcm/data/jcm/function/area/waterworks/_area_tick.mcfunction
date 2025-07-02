#kill areas
#--------------------
#fall down
execute as @a[gamemode=adventure,scores={currentArea=5,coord_x=214..,coord_y=..-1}] unless entity @s[tag=!onGround,tag=!inWater] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------


#gates

#anvil gate
execute if score #area5AnvilGate value matches ..29 if block 196 0 -23 redstone_block run scoreboard players add #area5AnvilGate value 1
execute if score #area5AnvilGate value matches 1.. unless block 196 0 -23 redstone_block run scoreboard players remove #area5AnvilGate value 1
execute if score #area5AnvilGate value matches 1..29 run function jcm:area/waterworks/anvil_gate

#lock gate
execute if score #area5LockerGate value matches ..29 if block 214 3 -41 redstone_block run scoreboard players add #area5LockerGate value 1
execute if score #area5LockerGate value matches 1.. unless block 214 3 -41 redstone_block run scoreboard players remove #area5LockerGate value 1
execute if score #area5LockerGate value matches 1..29 run function jcm:area/waterworks/locker_gate

#ghast tear and exit gates
execute if score #area5TearGate value matches 0 unless block 204 6 8 spruce_fence run fill 204 6 8 209 9 8 spruce_fence
execute if score #area5TearGate value matches 0 unless block 185 4 -7 oak_fence run fill 185 4 -7 185 11 -2 oak_fence
execute if score #area5TearGate value matches 0 \
    if block 196 3 -12 redstone_block \
    if block 205 3 -35 redstone_block \
    if block 187 8 -35 redstone_block run scoreboard players set #area5TearGate value 1
execute if score #area5TearGate value matches 1..99 run function jcm:area/waterworks/open_tear_gate



#breakable wall
execute if score #area5BreakWall value matches 0 unless block 69 11 -29 polished_tuff run clone 69 -9 -29 74 -4 -29 69 11 -29
execute if score #area5BreakWall value matches 0 if entity @e[type=slime,tag=dumBall,scores={ballSpin=15..},x=69,y=10,z=-32,dx=6,dy=5,dz=3] run function jcm:area/waterworks/break_wall

#door connecting boneyard and waterworks
execute if score #area1AnvilDoor value matches 0 unless block 60 11 -41 polished_diorite_stairs run clone 60 32 -41 62 38 -36 60 11 -41 strict
execute if score #area1AnvilDoor value matches 0 if block 68 10 -31 redstone_block if block 65 10 -42 redstone_block run scoreboard players set #area1AnvilDoor value 1
execute if score #area1AnvilDoor value matches 1..99 unless score #area1Tutorial value matches 1.. run function jcm:area/tutorial/raise_gate_2

#update lights on the double switches
#1
execute if score #5Hz value matches 0 if block 68 10 -31 redstone_block unless block 61 13 -34 redstone_block run fill 61 13 -34 61 14 -34 redstone_block
execute if score #5Hz value matches 0 unless block 68 10 -31 redstone_block if block 61 13 -34 redstone_block run fill 61 13 -34 61 14 -34 stone
#2
execute if score #5Hz value matches 0 if block 65 10 -42 redstone_block unless block 61 13 -43 redstone_block run fill 61 13 -43 61 14 -43 redstone_block
execute if score #5Hz value matches 0 unless block 65 10 -42 redstone_block if block 61 13 -43 redstone_block run fill 61 13 -43 61 14 -43 stone