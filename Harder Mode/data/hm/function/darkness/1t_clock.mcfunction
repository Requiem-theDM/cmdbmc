# Increase darkness counters while at light level 0
execute as @a if predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches ..11999 run scoreboard players add @s hm.darkness_luck 1
execute as @a if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches ..11999 run scoreboard players add @s hm.darkness_debuff 1

# Decrease darkness counters while at light level 1 or above
execute as @a unless predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches 1.. run scoreboard players set @s hm.darkness_luck 0
execute as @a unless predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 1.. run scoreboard players remove @s hm.darkness_debuff 2

schedule function hm:darkness/1t_clock 1