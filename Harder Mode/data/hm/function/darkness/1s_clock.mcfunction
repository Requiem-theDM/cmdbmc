# Luck effects for staying in darkness for extended periods of time
execute as @a if score @s hm.darkness_luck matches 6000..11999 run effect give @s minecraft:luck 1 0 true
execute as @a if score @s hm.darkness_luck matches 12000 run effect give @s minecraft:luck 1 1 true

# Debuff effects for staying in darkness for extended periods of time
execute as @a if score @s hm.darkness_debuff matches 1200.. run effect give @s minecraft:slowness 1 0 true
execute as @a if score @s hm.darkness_debuff matches 6000.. run effect give @s minecraft:weakness 1 0 true
execute as @a at @s if predicate hm:chance/10 if score @s hm.darkness_debuff matches 12000 run function hm:darkness/summon_insect_swarm

schedule function hm:darkness/1s_clock 20