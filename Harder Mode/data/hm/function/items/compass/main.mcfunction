advancement revoke @s only hm:items/has_compass
execute as @s store result score @s x run data get entity @s Pos[0]
execute as @s store result score @s y run data get entity @s Pos[1]
execute as @s store result score @s z run data get entity @s Pos[2]
title @s actionbar ["",{"translate":"X","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"x"},"color":"gray"},{"translate":" ","color":"gold"},{"translate":"Y","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"y"},"color":"gray"},{"translate":" ","color":"gold"},{"translate":"Z","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"@s","objective":"z"},"color":"gray"}]