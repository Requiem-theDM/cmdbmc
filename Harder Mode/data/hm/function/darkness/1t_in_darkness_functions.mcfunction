# Increase darkness counters while at light level 0
execute if score @s hm.darkness_luck matches ..11999 run scoreboard players add @s hm.darkness_luck 1
execute if score @s hm.darkness_debuff matches ..11999 run scoreboard players add @s hm.darkness_debuff 1

# Sound Design and Titles for Darkness Debuffs
execute if score @s hm.darkness_debuff matches 1200 run title @s actionbar {"text":"The darkness hampers your movement."}
execute if predicate hm:chance/1 if score @s hm.darkness_debuff matches 1200 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 1
execute if score @s hm.darkness_debuff matches 6000 run title @s actionbar {"text":"You feel your strength being drained."}
execute if predicate hm:chance/1 if score @s hm.darkness_debuff matches 6000 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 1
execute if score @s hm.darkness_debuff matches 11999 run title @s actionbar {"text":"Swarms of biting insects gather around you."}
execute if predicate hm:chance/1 if score @s hm.darkness_debuff matches 11999 run playsound minecraft:ambient.cave ambient @s ~ ~ ~ 100 1