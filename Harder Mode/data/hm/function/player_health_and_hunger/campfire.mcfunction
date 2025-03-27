effect give @a[gamemode=!creative,gamemode=!spectator,distance=..3,scores={hm.regen_cooldown=0,hunger=3..}] regeneration 10 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,distance=..3,scores={hm.regen_cooldown=0,hunger=3..}] hunger 1 128 true
playsound minecraft:entity.blaze.burn player @a[gamemode=!creative,gamemode=!spectator,distance=..6]
title @a[gamemode=!creative,gamemode=!spectator,distance=..3,scores={hm.regen_cooldown=0}] actionbar {"text":"You feel the warmth of the campfire."}
scoreboard players add @a[gamemode=!creative,gamemode=!spectator,distance=..3,scores={hm.regen_cooldown=0}] hm.regen_cooldown 1200
kill @s