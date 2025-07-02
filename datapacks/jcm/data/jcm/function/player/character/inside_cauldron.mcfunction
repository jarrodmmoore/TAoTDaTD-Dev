#figure out what cauldron we're in
scoreboard players set #test value -1
execute as @e[type=marker,tag=cauldron,distance=..3,sort=nearest,limit=1] run function jcm:player/character/inside_cauldron_find

#eject if we're the wrong character!
execute if score #test value matches 0..9 unless score @s playerCharacter matches 1 run return run function jcm:player/character/inside_cauldron_eject
execute if score #test value matches 10..14 unless score @s playerCharacter matches 2 run return run function jcm:player/character/inside_cauldron_eject
#=====

#grant abilities
execute if score #test value matches 0 run function jcm:player/character/inside_cauldron_check_ability {character:"dee",slot:0}
execute if score #test value matches 1 run function jcm:player/character/inside_cauldron_check_ability {character:"dee",slot:1}
execute if score #test value matches 2 run function jcm:player/character/inside_cauldron_check_ability {character:"dee",slot:2}
execute if score #test value matches 3 run function jcm:player/character/inside_cauldron_check_ability {character:"dee",slot:3}
execute if score #test value matches 4 run function jcm:player/character/inside_cauldron_check_ability {character:"dee",slot:4}

execute if score #test value matches 10 run function jcm:player/character/inside_cauldron_check_ability {character:"dum",slot:0}
execute if score #test value matches 11 run function jcm:player/character/inside_cauldron_check_ability {character:"dum",slot:1}
execute if score #test value matches 12 run function jcm:player/character/inside_cauldron_check_ability {character:"dum",slot:2}
execute if score #test value matches 13 run function jcm:player/character/inside_cauldron_check_ability {character:"dum",slot:3}
execute if score #test value matches 14 run function jcm:player/character/inside_cauldron_check_ability {character:"dum",slot:4}