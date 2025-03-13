scoreboard players add @s hm.clock 1
particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.5 0.5 0 50 force @a[distance=..16]
execute if predicate hm:time/20_tick if predicate hm:chance/20 run playsound minecraft:entity.bee.loop_aggressive hostile @a[distance=..16] ~ ~ ~ 1 2
effect give @a[distance=..2] minecraft:poison 5 2 false
effect give @e[distance=..2,tag=!hm.insect_swarm] minecraft:infested 5 0 true
execute if score @s hm.clock matches 200.. run kill @s