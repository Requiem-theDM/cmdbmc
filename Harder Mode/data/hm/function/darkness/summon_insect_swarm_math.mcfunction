execute store result score @s y run data get entity @s Pos[1]
scoreboard players operation @s y += 5 hm.constants
execute store result storage hm:data y int 1 run scoreboard players get @s y
function hm:darkness/summon_insect_swarm with storage hm:data