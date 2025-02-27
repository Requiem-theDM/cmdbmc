data modify storage hm:data Inv append from entity @s Inventory[{id:"minecraft:potion"}]
data remove storage example:data Inv[{"max_stack_size":8}]
function hm:items/stackable_potions/modify with storage hm:data Inv[-1]
advancement revoke @s only hm:items/stackable_potions