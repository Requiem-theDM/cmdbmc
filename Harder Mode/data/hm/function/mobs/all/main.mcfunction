# Advance the mob ability clock
scoreboard players add @s hm.clock 1

execute as @s[type=#hm:spiders] if score @s hm.clock matches 50 at @s if entity @p[distance=2..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/spider/dash
execute as @s[type=#hm:zombies] if score @s hm.clock matches 50 at @s if entity @p[distance=2..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/zombie/dash

# Loop the mob ability clock
scoreboard players set @s[scores={hm.clock=100..}] hm.clock 0