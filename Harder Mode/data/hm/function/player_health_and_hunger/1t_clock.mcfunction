execute at @a[gamemode=!creative,gamemode=!spectator] as @e[type=minecraft:item,distance=..3] if predicate hm:dropped_items/is_firewood at @s if block ~ ~ ~ minecraft:campfire[lit=true] run function hm:player_health_and_hunger/1t_clock
execute as @a[gamemode=!creative,gamemode=!spectator] if score @s hm.regen_cooldown matches 1.. run scoreboard players remove @s hm.regen_cooldown 1
schedule function hm:player_health_and_hunger/1t_clock 1