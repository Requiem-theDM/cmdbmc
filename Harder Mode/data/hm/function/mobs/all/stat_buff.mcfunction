attribute @s minecraft:follow_range modifier add hm:all/follow_range 2 add_multiplied_base
attribute @s minecraft:knockback_resistance modifier add hm:all/knockback_resistance 0.25 add_value
attribute @s minecraft:explosion_knockback_resistance modifier add hm:all/explosion_knockback_resistance 0.25 add_value
attribute @s minecraft:movement_speed modifier add hm:all/movement_speed 0.25 add_multiplied_base
execute as @s[type=#hm:zombies] run function hm:mobs/zombie/stat_buff
execute as @s[type=#hm:spiders] run function hm:mobs/spider/stat_buff
execute as @s[type=minecraft:evoker] run function hm:mobs/evoker/stat_buff
execute as @s[type=minecraft:witch] run function hm:mobs/witch/stat_buff
tag @s add hm.upgraded