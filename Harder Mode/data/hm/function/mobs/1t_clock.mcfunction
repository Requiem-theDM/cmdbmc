execute at @a[gamemode=!spectator] as @e[distance=..5,type=#hm:whitelisted_mobs, tag=!hm.blacklist] unless data entity @s NoAI run function hm:mobs/all/main
schedule function hm:mobs/1t_clock 1