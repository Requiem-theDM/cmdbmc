playsound entity.silverfish.ambient hostile @a[distance=..12] ~ ~ ~ 100 0
summon minecraft:marker ~ ~ ~ {Tags:["hm.insect_swarm"]}
$execute as @n[type=minecraft:marker,distance=..1,tag=hm.insect_swarm] at @s run spreadplayers ~ ~ 0 16 under $(max_y) false @s