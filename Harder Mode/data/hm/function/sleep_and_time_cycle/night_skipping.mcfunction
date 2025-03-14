# temp variable will be removed at end of function
scoreboard objectives add sleep_time dummy

# ===================================================================


# CREDIT FOR THE CODE BELOW TO PLAGIATUS - Multiplayer Sleep v1.0.1


# https://vanillatweaks.net/picker/datapacks/


# ===================================================================

execute store result score @s sleep_time run time query daytime
scoreboard players remove @s sleep_time 24000

execute if entity @s[scores={sleep_time=..-16384}] run time add 16384
execute if entity @s[scores={sleep_time=..-16384}] run scoreboard players add @s sleep_time 16384
execute if entity @s[scores={sleep_time=..-8192}] run time add 8192
execute if entity @s[scores={sleep_time=..-8192}] run scoreboard players add @s sleep_time 8192
execute if entity @s[scores={sleep_time=..-4096}] run time add 4096
execute if entity @s[scores={sleep_time=..-4096}] run scoreboard players add @s sleep_time 4096
execute if entity @s[scores={sleep_time=..-2048}] run time add 2048
execute if entity @s[scores={sleep_time=..-2048}] run scoreboard players add @s sleep_time 2048
execute if entity @s[scores={sleep_time=..-1024}] run time add 1024
execute if entity @s[scores={sleep_time=..-1024}] run scoreboard players add @s sleep_time 1024
execute if entity @s[scores={sleep_time=..-512}] run time add 512
execute if entity @s[scores={sleep_time=..-512}] run scoreboard players add @s sleep_time 512
execute if entity @s[scores={sleep_time=..-256}] run time add 256
execute if entity @s[scores={sleep_time=..-256}] run scoreboard players add @s sleep_time 256
execute if entity @s[scores={sleep_time=..-128}] run time add 128
execute if entity @s[scores={sleep_time=..-128}] run scoreboard players add @s sleep_time 128
execute if entity @s[scores={sleep_time=..-64}] run time add 64
execute if entity @s[scores={sleep_time=..-64}] run scoreboard players add @s sleep_time 64
execute if entity @s[scores={sleep_time=..-32}] run time add 32
execute if entity @s[scores={sleep_time=..-32}] run scoreboard players add @s sleep_time 32
execute if entity @s[scores={sleep_time=..-16}] run time add 16
execute if entity @s[scores={sleep_time=..-16}] run scoreboard players add @s sleep_time 16
execute if entity @s[scores={sleep_time=..-8}] run time add 8
execute if entity @s[scores={sleep_time=..-8}] run scoreboard players add @s sleep_time 8
execute if entity @s[scores={sleep_time=..-4}] run time add 4
execute if entity @s[scores={sleep_time=..-4}] run scoreboard players add @s sleep_time 4
execute if entity @s[scores={sleep_time=..-2}] run time add 2
execute if entity @s[scores={sleep_time=..-2}] run scoreboard players add @s sleep_time 2
execute if entity @s[scores={sleep_time=..-1}] run time add 1
execute if entity @s[scores={sleep_time=..-1}] run scoreboard players add @s sleep_time 1
# clean up

scoreboard objectives remove sleep_time

title @a[tag=hm.sleep] actionbar {"text":"You awaken feeling rested."}
effect give @a[tag=hm.sleep] minecraft:instant_health 1 200 true
execute as @a[tag=hm.sleep] run tag @s remove hm.sleep