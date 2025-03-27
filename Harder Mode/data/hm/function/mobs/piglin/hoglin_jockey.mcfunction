particle minecraft:crimson_spore ~ ~1 ~ 1 1 1 0 500 normal
playsound entity.blaze.ambient hostile @a[distance=..16] ~ ~ ~ 100 0
attribute @s minecraft:max_health modifier add hm:hoglin_jockey/health 2.75 add_multiplied_base
effect give @s instant_health 1 200 true
summon hoglin ~ ~ ~ {CannotBeHunted:true}
ride @s mount @n[type=hoglin]
execute if predicate hm:chance/50 run tag @s add hm.archer
execute if entity @s[tag=hm.archer] run item replace entity @s weapon.mainhand with minecraft:crossbow[enchantments={levels:{"minecraft:power":3,"minecraft:piercing":2,"minecraft:quick_charge":2,"hm:fragility_curse":1,"minecraft:flame":1}}] 1
execute unless entity @s[tag=hm.archer] run item replace entity @s weapon.mainhand with minecraft:golden_sword[enchantments={levels:{"hm:lancer":5,"minecraft:knockback":4,"minecraft:fire_aspect":4,"hm:fragility_curse":1,"hm:alchemize":5}}] 1
item replace entity @s armor.head with minecraft:golden_helmet[trim={pattern:"minecraft:snout",material:"minecraft:quartz"},enchantments={levels:{"minecraft:fire_protection":5,"hm:frenzy_curse":4,"minecraft:unbreaking":3,"minecraft:binding_curse":1}}] 1