playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 100 0.5
particle minecraft:reverse_portal ~ ~1 ~ 0 0 0 1 100 normal
spreadplayers ~ ~ 0 16 false @s
effect give @s minecraft:nausea 5 0 true
execute as @s at @s run particle minecraft:portal ~ ~1 ~ 1 1 1 1 100 normal