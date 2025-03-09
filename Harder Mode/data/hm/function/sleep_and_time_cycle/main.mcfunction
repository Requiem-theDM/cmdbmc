advancement revoke @s only hm:sleep_and_time_cycle/sleeping
playsound minecraft:entity.fox.sleep player @s ~ ~ ~ 100 0
execute unless entity @s[tag=hm.usedSleepScroll] run tag @s add hm.noSleep
execute if entity @s[tag=hm.usedSleepScroll] run tag @s add hm.sleep
execute if entity @s[tag=hm.noSleep] run schedule function hm:sleep_and_time_cycle/no_night_skipping 100
execute if entity @s[tag=hm.sleep] run schedule function hm:sleep_and_time_cycle/begin_night_skipping 100
