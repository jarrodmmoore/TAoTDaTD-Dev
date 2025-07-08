#kill areas
#--------------------
#fall down
execute as @a[gamemode=adventure,scores={currentArea=5,coord_x=214..,coord_y=..-1}] unless entity @s[tag=!onGround,tag=!inWater] unless score @s death matches 1 unless score @s deathTime matches 1.. run kill @s
#--------------------

#block the shrink tunnel in NG+
execute if score #newGamePlus value matches 0 unless block 120 3 -52 air run fill 120 3 -52 122 3 -52 air
execute if score #newGamePlus value matches 1 if block 120 3 -52 air run fill 120 3 -52 122 3 -52 tuff

#pathway blocker to one of the crate buttons in NG+
execute if score #newGamePlus value matches 0 unless block 184 9 -43 air run fill 184 9 -43 186 9 -43 air
execute if score #newGamePlus value matches 1 if block 184 9 -43 air run fill 184 9 -43 186 9 -43 tuff_brick_slab[type=top]


#gates

#anvil gate
execute if score #area5AnvilGate value matches ..29 if block 196 0 -23 redstone_block run scoreboard players add #area5AnvilGate value 1
execute if score #area5AnvilGate value matches 1.. unless block 196 0 -23 redstone_block run scoreboard players remove #area5AnvilGate value 1
execute if score #area5AnvilGate value matches 1..29 run function jcm:area/waterworks/anvil_gate

#lock gate
execute if score #area5LockerGate value matches ..29 if block 214 3 -41 redstone_block run scoreboard players add #area5LockerGate value 1
execute if score #area5LockerGate value matches 1.. unless block 214 3 -41 redstone_block run scoreboard players remove #area5LockerGate value 1
execute if score #area5LockerGate value matches 1..29 run function jcm:area/waterworks/locker_gate

#actionbar multi-button display
execute if score #area5TearGate value matches 0 run function jcm:area/waterworks/multi_button_display

#ghast tear and exit gates
execute if score #area5TearGate value matches 0 unless block 204 6 8 spruce_fence run fill 204 6 8 209 9 8 spruce_fence
execute if score #area5TearGate value matches 0 unless block 185 4 -7 oak_fence run fill 185 4 -7 185 11 -2 oak_fence
execute if score #area5TearGate value matches 0 \
    if block 196 3 -12 redstone_block \
    if block 205 3 -35 redstone_block \
    if block 187 8 -35 redstone_block run scoreboard players set #area5TearGate value 1
execute if score #area5TearGate value matches 1..99 run function jcm:area/waterworks/open_tear_gate



#breakable wall
execute if score #area5BreakWall value matches 0 unless block 70 11 -34 polished_tuff run clone 69 -9 -29 73 -4 -28 70 11 -34 strict
execute if score #area5BreakWall value matches 0 if entity @e[type=slime,tag=dumBall,scores={ballSpin=15..},x=70,y=11,z=-36,dx=5,dy=5,dz=2] run function jcm:area/waterworks/break_wall

#gate blocking door to boneyard
execute if score #area5TunnelGate value matches 0 unless block 70 11 -28 oak_fence run fill 70 11 -28 73 14 -28 oak_fence
execute if score #area5TunnelGate value matches 0 if block 65 10 -32 redstone_block run scoreboard players set #area5TunnelGate value 1
execute if score #area5TunnelGate value matches 1..99 run function jcm:area/waterworks/open_tunnel_gate

#door connecting boneyard and waterworks
execute if score #area1AnvilDoor value matches 0 unless block 60 11 -41 polished_diorite_stairs run clone 60 32 -41 62 38 -36 60 11 -41 strict
execute if score #area1AnvilDoor value matches 0 \
    if block 65 10 -32 redstone_block \
    if block 65 10 -45 redstone_block \
    run scoreboard players set #area1AnvilDoor value 1
execute if score #area1AnvilDoor value matches 1..99 unless score #area1Tutorial value matches 1.. run function jcm:area/tutorial/raise_gate_2

#update lights on the double switches
#1
execute if score #5Hz value matches 0 if block 65 10 -32 redstone_block unless block 61 13 -34 redstone_block run fill 61 13 -34 61 14 -34 redstone_block
execute if score #5Hz value matches 0 unless block 65 10 -32 redstone_block if block 61 13 -34 redstone_block run fill 61 13 -34 61 14 -34 stone
#2
execute if score #5Hz value matches 0 if block 65 10 -45 redstone_block unless block 61 13 -43 redstone_block run fill 61 13 -43 61 14 -43 redstone_block
execute if score #5Hz value matches 0 unless block 65 10 -45 redstone_block if block 61 13 -43 redstone_block run fill 61 13 -43 61 14 -43 stone