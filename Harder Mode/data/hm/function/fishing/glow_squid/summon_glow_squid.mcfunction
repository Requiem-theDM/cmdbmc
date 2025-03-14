summon minecraft:glow_squid ~ ~ ~
execute store result entity @n[type=minecraft:glow_squid,distance=..1] Motion[0] double 0.0001 run data get entity @s Motion[0] 12000
execute store result entity @n[type=minecraft:glow_squid,distance=..1] Motion[1] double 0.0001 run data get entity @s Motion[1] 12000
execute store result entity @n[type=minecraft:glow_squid,distance=..1] Motion[2] double 0.0001 run data get entity @s Motion[2] 12000
kill @s