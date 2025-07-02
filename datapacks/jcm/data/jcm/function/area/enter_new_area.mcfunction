#executed when a player enters a new area

execute if score @s currentArea matches 1 run function jcm:area/area_title_macro {title:"jcm.area.bonepit",color:"white"}
execute if score @s currentArea matches 1 run function jcm:area/play_song_macro {song:"music_disc.13"}
execute if score @s currentArea matches 1 run playsound minecraft:ambient.cave master @s ~ 100000 ~ 100000 0.8

execute if score @s currentArea matches 2 run function jcm:area/area_title_macro {title:"jcm.area.central_cavern",color:"#A0A0A0"}
execute if score @s currentArea matches 2 run function jcm:area/play_song_macro {song:"music.nether.soul_sand_valley"}
execute if score @s currentArea matches 2 run playsound minecraft:ambient.cave master @s ~ 100000 ~ 100000 0.9

execute if score @s currentArea matches 3 run function jcm:area/area_title_macro {title:"jcm.area.ancient_city",color:"#C0C0C0"}
execute if score @s currentArea matches 3 run function jcm:area/play_song_macro {song:"music.end"}
execute if score @s currentArea matches 3 run playsound minecraft:ambient.cave master @s ~ 100000 ~ 100000 1.0

execute if score @s currentArea matches 4 run function jcm:area/area_title_macro {title:"jcm.area.lush_caves",color:"dark_green"}
execute if score @s currentArea matches 4 run function jcm:area/play_song_macro {song:"music.overworld.lush_caves"}

execute if score @s currentArea matches 5 run function jcm:area/area_title_macro {title:"jcm.area.waterworks",color:"#9090FF"}
execute if score @s currentArea matches 5 run function jcm:area/play_song_macro {song:"music.under_water"}

execute if score @s currentArea matches 6 run function jcm:area/area_title_macro {title:"jcm.area.arid_cliffs",color:"#FFFFA0"}
execute if score @s currentArea matches 6 run function jcm:area/play_song_macro {song:"music_disc.creator_music_box"}

execute if score @s currentArea matches 7 run function jcm:area/area_title_macro {title:"jcm.area.golden_garden",color:"#FFC070"}
execute if score @s currentArea matches 7 run function jcm:area/play_song_macro {song:"music_disc.precipice"}

execute if score @s currentArea matches 8 run function jcm:area/area_title_macro {title:"jcm.area.gusty_tower",color:"#B0E0B0"}
execute if score @s currentArea matches 8 run function jcm:area/play_song_macro {song:"music_disc.mellohi"}

execute if score @s currentArea matches 9 run function jcm:area/area_title_macro {title:"jcm.area.pale_maze",color:"#FFB0B0"}
execute if score @s currentArea matches 9 run function jcm:area/play_song_macro {song:"music.creative"}
execute if score @s currentArea matches 9 run playsound minecraft:ambient.cave master @s ~ 100000 ~ 100000 1.0

#start showing game progress when we leave tutorial area
execute if score @s currentArea matches 2.. if score #gameProgress value matches 1 run scoreboard players set #gameProgress value 2