#very important npc

#found brewing stand if we ran this function
scoreboard players set #foundBrewingStand value 1

#decide what to say
execute if score @s age matches 2 run function jcm:object/npc/talk_4_branch

#say based on branch
execute if entity @s[scores={age=4..,airTime=..0}] run function jcm:object/npc/talk_4_no_materials
execute if entity @s[scores={age=4..,airTime=1}] run function jcm:object/npc/talk_4_no_apples
execute if entity @s[scores={age=4..,airTime=2}] run function jcm:object/npc/talk_4_no_both_players
execute if entity @s[scores={age=4..,airTime=3..}] run function jcm:object/npc/talk_4_brew_potion