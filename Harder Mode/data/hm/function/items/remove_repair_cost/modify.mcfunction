$item modify entity @s container.$(Slot) hm:remove_repair_cost
data remove storage hm:data_repair_cost Inv[-1]
function hm:items/remove_repair_cost/modify with storage hm:data_repair_cost Inv[-1]