execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 run function hm:darkness/1s_in_darkness_functions
schedule function hm:darkness/1s_clock 20