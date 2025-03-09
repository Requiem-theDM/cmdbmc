execute at @a[gamemode=!spectator] as @e[distance=..32,tag = !hm.upgraded, tag = !hm.blacklisted_mobs, type = #hm:whitelisted_mobs] run function hm:mobs/all/stat_buff
schedule function hm:mobs/1s_clock 20
