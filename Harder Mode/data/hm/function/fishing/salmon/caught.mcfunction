tag @s add hm.fishing
execute as @e[type=minecraft:fishing_bobber] if function hm:fishing/fishing_origin at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["fish_replace"],Duration:2}
tag @s remove hm.fishing
schedule function hm:fishing/salmon/start_live_catch_salmon 1t append
advancement revoke @s only hm:fishing/live_catch_salmon
