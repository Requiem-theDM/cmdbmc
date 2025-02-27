advancement revoke @s only hm:items/scroll_of_fire

# Summon the projectile entity
execute as @s at @s anchored eyes run summon minecraft:fireball ^ ^ ^1 {Tags:["projectile"],ExplosionPower:1}

# Use player rotation to create an area_effect_cloud of about 0 0 and immediately copy the position of this entity into the projectile motion tag.
execute rotated as @s positioned 0.0 0.0 0.0 positioned ^ ^ ^1 summon area_effect_cloud run data modify entity @e[tag=projectile,limit=1] Motion set from entity @s Pos

# Remove projectile tag
tag @e[tag=projectile] remove projectile