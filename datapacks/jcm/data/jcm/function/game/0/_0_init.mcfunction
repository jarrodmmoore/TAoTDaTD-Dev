scoreboard players set #gameState value 0
function jcm:game/0/summon_props
scoreboard players set #countdown value 121

#send adventure and spectator players to lobby
gamemode adventure @a[gamemode=spectator]
execute as @a[gamemode=adventure] run tp @s 0 202 -21 0 0
effect clear @a[gamemode=adventure] invisibility

#nobody is tweedle dee or dum
scoreboard players reset * playerCharacter
team empty player

#stop sounds
stopsound @a

#quitters don't do bugs
scoreboard players reset * quit

#difficulty is normal unless ng+
difficulty normal

#bossbar setup
bossbar set jcm:wait_to_play color white
bossbar set jcm:wait_to_play style notched_6
bossbar set jcm:wait_to_play max 6
bossbar set jcm:wait_to_play value 6
bossbar set jcm:wait_to_play players
bossbar set jcm:wait_to_play name [{translate:"jcm.lobby.waiting_for_both_players",bold:true,color:white}]