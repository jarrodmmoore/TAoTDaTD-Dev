$execute store result score #test2 value run data get storage jcm:data $(character)_abilities[$(slot)] 1

#don't have the ability? make a ruckus
execute if score #test2 value matches 0 run playsound minecraft:item.totem.use master @a ~ ~ ~ 2 1 0.8
execute if score #test2 value matches 0 run particle effect ~ ~2 ~ 1.5 1.5 1.5 1 30 force
execute if score #test2 value matches 0 run particle instant_effect ~ ~2 ~ 0.5 0.5 0.5 1 15 force

#we have it
$data modify storage jcm:data $(character)_abilities[$(slot)] set value 1