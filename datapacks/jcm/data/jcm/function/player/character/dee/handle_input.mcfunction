#consume input
scoreboard players reset @s carrotInput
scoreboard players add @s[scores={inputCooldown=..10}] inputCooldown 5

#do a thing
execute if items entity @s weapon.mainhand *[custom_data~{empty:1b}] run return run function jcm:player/character/cooldown_error
#extend
execute if items entity @s weapon.mainhand *[custom_data~{d_3a:1b}] run return run function jcm:player/character/dee/extend/start
execute if items entity @s weapon.mainhand *[custom_data~{d_3c:1b}] run return run function jcm:player/character/dee/extend/stop
#pick up/throw
execute if items entity @s weapon.mainhand *[custom_data~{d_4a:1b}] run return run function jcm:player/character/dee/pick_up/try_pick_up
execute if items entity @s weapon.mainhand *[custom_data~{d_4c:1b}] run return run function jcm:player/character/dee/pick_up/throw
#trampoline
execute if items entity @s weapon.mainhand *[custom_data~{d_5a:1b}] run return run function jcm:player/character/dee/trampoline/start
execute if items entity @s weapon.mainhand *[custom_data~{d_5c:1b}] run return run function jcm:player/character/dee/trampoline/stop
#clone self
execute if items entity @s weapon.mainhand *[custom_data~{d_6a:1b}] run return run function jcm:player/character/dee/clone/generate
execute if items entity @s weapon.mainhand *[custom_data~{d_5c:1b}] run return run function jcm:player/character/dee/clone/destroy_all

#interact with something
execute if items entity @s weapon.mainhand *[custom_data~{d_i:1b}] run return run function jcm:player/character/try_interact
