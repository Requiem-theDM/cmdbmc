playsound minecraft:entity.spider.ambient hostile @a[distance=..10] ~ ~ ~ 0.5 0.7
execute as @s at @s run function hm:mobs/all/dash
execute at @s run damage @p[distance=..1.5,gamemode=!creative,gamemode=!spectator] 6 mob_attack by @s from @s
execute as @s at @p[distance=..3.5,gamemode=!creative,gamemode=!spectator] run setblock ~ ~ ~ minecraft:cobweb keep
playsound minecraft:block.cobweb.place hostile @a[distance=..10] ~ ~ ~ 0.5 1