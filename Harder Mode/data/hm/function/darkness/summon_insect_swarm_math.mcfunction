execute store result score @s hm.math run data get entity @s Pos[1]
scoreboard players operation @s hm.math += 5 hm.constants
execute store result storage hm:data max_y int 1 run scoreboard players get @s hm.math
function hm:darkness/summon_insect_swarm with storage hm:data