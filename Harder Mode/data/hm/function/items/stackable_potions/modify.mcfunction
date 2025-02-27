$item modify entity @s container.$(Slot) hm:stackable_potions
data remove storage hm:data Inv[-1]
function hm:items/stackable_potions/modify with storage hm:data Inv[-1]