#consume input
scoreboard players reset @s carrotInput
scoreboard players add @s[scores={inputCooldown=..10}] inputCooldown 5

#do a thing
execute if items entity @s weapon.mainhand *[custom_data~{empty:1b}] run return run function jcm:player/character/cooldown_error
#roll
execute if items entity @s weapon.mainhand *[custom_data~{d_2a:1b}] run return run function jcm:player/character/dum/rollout/start
execute if items entity @s weapon.mainhand *[custom_data~{d_2c:1b}] run return run function jcm:player/character/dum/rollout/stop
#shrink
execute if items entity @s weapon.mainhand *[custom_data~{d_3a:1b}] run return run function jcm:player/character/dum/shrink/start
execute if items entity @s weapon.mainhand *[custom_data~{d_3c:1b}] run return run function jcm:player/character/dum/shrink/stop
#suck
execute if items entity @s weapon.mainhand *[custom_data~{d_4a:1b}] run return run function jcm:player/character/dum/suck/try_suck
execute if items entity @s weapon.mainhand *[custom_data~{d_4c:1b}] run return run function jcm:player/character/dum/suck/spit
#inflate
execute if items entity @s weapon.mainhand *[custom_data~{d_5a:1b}] run return run function jcm:player/character/dum/inflate/start_inflate
execute if items entity @s weapon.mainhand *[custom_data~{d_5c:1b}] run return run function jcm:player/character/dum/inflate/stop_inflate

#interact with something
execute if items entity @s weapon.mainhand *[custom_data~{d_i:1b}] run return run function jcm:player/character/try_interact
