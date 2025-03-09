tag @s add hm.dashing
execute facing entity @p[distance=2..5,gamemode=!creative,gamemode=!spectator] feet positioned 0.0 0.0 0.0 positioned ^ ^0.05 ^1 summon area_effect_cloud run data modify entity @e[tag=hm.dashing,limit=1] Motion set from entity @s Pos
tag @s remove hm.dashing
data modify entity @s FallDistance set value -12