#summon the explosion and have it do a reasonable amount of damage
execute if loaded ~ ~ ~ run summon creeper ~ ~ ~ {Invulnerable:1b,NoGravity:1b,Silent:1b,Health:1.0f,Fuse:0,attributes:[{id:"knockback_resistance",base:1}]}


#make better particles
particle flash ~ ~.5 ~ 0 0 0 1 1
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 10 force
particle flame ~ ~.5 ~ 0.5 0.5 0.5 0.01 20
particle poof ~ ~.5 ~ 1.4 1.4 1.4 0 10 force
particle poof ~ ~.5 ~ 1.4 1.4 1.4 0 40

#delete self
scoreboard players set @s lifespan 1
tag @s remove explosion