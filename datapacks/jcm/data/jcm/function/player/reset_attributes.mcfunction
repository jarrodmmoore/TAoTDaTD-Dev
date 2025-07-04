attribute @s movement_speed base reset
attribute @s scale base reset
attribute @s entity_interaction_range base reset
attribute @s attack_knockback base reset
attribute @s jump_strength base reset
attribute @s gravity base reset

#no waypoint transmit. we will instead be using artificial waypoints
#reason: player fails to act as a waypoint if they have the invisibility effect
attribute @s waypoint_transmit_range base set 0