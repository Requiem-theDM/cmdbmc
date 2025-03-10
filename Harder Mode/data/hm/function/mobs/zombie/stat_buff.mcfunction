attribute @s minecraft:armor modifier add hm:zombie/armor 2 add_value
attribute @s minecraft:max_health modifier add hm:zombie/health 1 add_multiplied_base
execute if predicate hm:chance/10 run attribute @s minecraft:spawn_reinforcements modifier add hm:zombie/spawn_reinforcements 0.25 add_value
data merge entity @s {CanBreakDoors:1b}
execute if predicate hm:chance/1 if entity @s[type=minecraft:drowned] if block ~ ~ ~ minecraft:water at @s run function hm:mobs/zombie/drowned_dolphin_jockey
effect give @s minecraft:instant_damage 1 200 true