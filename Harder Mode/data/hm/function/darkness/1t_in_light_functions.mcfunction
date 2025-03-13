# Decrease darkness counters while at light level 1 or above
execute if score @s hm.darkness_luck matches 50.. run scoreboard players remove @s hm.darkness_luck 50
execute if score @s hm.darkness_debuff matches 2.. run scoreboard players remove @s hm.darkness_debuff 2