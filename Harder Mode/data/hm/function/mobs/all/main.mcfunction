# Advance the mob ability clock
scoreboard players add @s hm.clock 1

execute if predicate hm:chance/10 as @s[type=minecraft:enderman] if score @s hm.clock matches 50 at @s if entity @p[distance=..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/enderman/start_player_warp
execute if predicate hm:chance/25 as @s[type=#hm:spiders] if score @s hm.clock matches 50 at @s if entity @p[distance=2..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/spider/dash
execute if predicate hm:chance/25 as @s[type=#hm:zombies] if score @s hm.clock matches 50 at @s if entity @p[distance=2..5,gamemode=!creative,gamemode=!spectator] run function hm:mobs/zombie/dash

# Loop the mob ability clock
scoreboard players set @s[scores={hm.clock=100..}] hm.clock 0