execute if block ~1 ~-.1 ~ #jcm:not_solid unless block ~-1 ~-.1 ~ #jcm:not_solid run function jcm:common/add_raw_force_3d {x:"300",y:"100",z:"0"}
execute unless block ~1 ~-.1 ~ #jcm:not_solid if block ~-1 ~-.1 ~ #jcm:not_solid run function jcm:common/add_raw_force_3d {x:"-300",y:"100",z:"0"}
execute if block ~ ~-.1 ~1 #jcm:not_solid unless block ~ ~-.1 ~-1 #jcm:not_solid run function jcm:common/add_raw_force_3d {x:"0",y:"100",z:"300"}
execute unless block ~ ~-.1 ~1 #jcm:not_solid if block ~ ~-.1 ~-1 #jcm:not_solid run function jcm:common/add_raw_force_3d {x:"0",y:"100",z:"-300"}
scoreboard players add @s ballSpin 1