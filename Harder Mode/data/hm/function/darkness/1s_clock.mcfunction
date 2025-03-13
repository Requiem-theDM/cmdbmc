# Luck effects for staying in darkness for extended periods of time
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches 6000..11999 run effect give @s minecraft:luck 2 0 true
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches 12000 run effect give @s minecraft:luck 2 1 true

# Debuff effects for staying in darkness for extended periods of time
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 1200.. run effect give @s minecraft:slowness 2 0 true
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 6000.. run effect give @s minecraft:weakness 2 0 true
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if predicate hm:chance/5 if score @s hm.darkness_debuff matches 12000 run function hm:darkness/summon_insect_swarm_math

schedule function hm:darkness/1s_clock 20