playsound minecraft:entity.phantom.bite hostile @a[distance=..10] ~ ~ ~ 0.5 0.7
execute as @s at @s run function hm:mobs/all/dash
execute at @s run damage @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] 6 mob_attack by @s from @s
effect give @p[distance=..2.5,gamemode=!creative,gamemode=!spectator] minecraft:slowness 3 1 true
