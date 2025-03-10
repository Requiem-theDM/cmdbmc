particle minecraft:bubble ~ ~1 ~ 1 1 1 0 500 normal
playsound ambient.underwater.loop.additions.ultra_rare hostile @a[distance=..16] ~ ~ ~ 100 1
summon minecraft:dolphin ~ ~ ~
execute as @n[type=dolphin] run function hm:mobs/all/stat_buff
ride @s mount @n[type=dolphin]
item replace entity @s weapon.mainhand with minecraft:trident 1
item replace entity @s weapon.offhand with minecraft:nautilus_shell 1
item replace entity @s armor.head with minecraft:turtle_helmet 1