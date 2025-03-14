execute store result score @s hm.math run data get entity @s Pos[1]
scoreboard players operation @s hm.math += 5 hm.constants
execute store result storage hm:data max_y int 1 run scoreboard players get @s hm.math
execute as @p[distance=..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/enderman/player_warp with storage hm:data