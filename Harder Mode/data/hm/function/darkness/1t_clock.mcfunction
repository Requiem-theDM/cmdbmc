# Run Ticking Scoreboards and Sound Design
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 run function hm:darkness/1t_in_darkness_functions
execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate hm:light_level/light_level_0 run function hm:darkness/1t_in_light_functions

# Process Insect Swarms
execute as @e[type=minecraft:marker,tag=hm.insect_swarm] at @s run function hm:darkness/insect_swarm

schedule function hm:darkness/1t_clock 1