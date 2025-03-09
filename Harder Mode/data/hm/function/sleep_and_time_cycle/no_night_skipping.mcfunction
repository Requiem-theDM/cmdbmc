execute as @a[tag=hm.noSleep] at @s run tp @s ~ ~ ~
execute as @a[tag=hm.noSleep] at @s run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 0
effect give @a[tag=hm.noSleep] minecraft:darkness 5 0 true
title @a[tag=hm.noSleep] actionbar {"text":"Nightmares wake you from your sleep."}
tag @a[tag=hm.noSleep] remove hm.noSleep