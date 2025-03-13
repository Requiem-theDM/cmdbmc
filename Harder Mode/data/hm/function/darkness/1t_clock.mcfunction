# Increase darkness counters while at light level 0
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches ..11999 run scoreboard players add @s hm.darkness_luck 1
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches ..11999 run scoreboard players add @s hm.darkness_debuff 1

# Decrease darkness counters while at light level 1 or above
execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate hm:light_level/light_level_0 if score @s hm.darkness_luck matches 50.. run scoreboard players remove @s hm.darkness_luck 50
execute as @a[gamemode=!creative,gamemode=!spectator] at @s unless predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 1.. run scoreboard players remove @s hm.darkness_debuff 2

# Sound Design and Titles for Darkness Debuffs
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 1200 run title @s actionbar {"text":"The darkness hampers your movement."}
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if predicate hm:chance/1 if score @s hm.darkness_debuff matches 1200 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 0
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 6000 run title @s actionbar {"text":"You feel your strength being drained."}
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if predicate hm:chance/1 if score @s hm.darkness_debuff matches 6000 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 0
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if score @s hm.darkness_debuff matches 11999 run title @s actionbar {"text":"Swarms of biting insects gather around you."}
execute as @a[gamemode=!creative,gamemode=!spectator] at @s if predicate hm:light_level/light_level_0 if predicate hm:chance/1 if score @s hm.darkness_debuff matches 11999 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 0

# Process Insect Swarms
execute as @e[type=minecraft:marker,tag=hm.insect_swarm] at @s run function hm:darkness/insect_swarm

schedule function hm:darkness/1t_clock 1