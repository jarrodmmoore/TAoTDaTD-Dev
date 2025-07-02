tp @s ~ ~ ~
scoreboard players set @s lifespan 3
execute on passengers if entity @s[tag=boxCollision] run scoreboard players set @s lifespan 3