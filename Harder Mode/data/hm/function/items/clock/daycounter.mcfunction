# Get Day and Current Time
execute store result score day daycount run time query day
execute store result score daytime daycount run time query daytime

# Calculate Hour
execute store result score hour daycount run scoreboard players get daytime daycount
scoreboard players operation hour daycount /= 1000 hm.constants
scoreboard players operation hour daycount += 7 hm.constants
execute if score hour daycount matches 25.. run scoreboard players operation hour daycount -= 24 hm.constants

# Calculate Minutes
execute store result score min daycount run scoreboard players get daytime daycount
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
execute if score min daycount matches 1000.. run scoreboard players operation min daycount -= 1000 hm.constants
scoreboard players operation min daycount *= 1000 hm.constants
scoreboard players operation min daycount /= 16666 hm.constants


execute if score min daycount matches 0..9 run title @s actionbar ["",{"translate":"Day","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"day","objective":"daycount"},"color":"gray"},{"translate":" ","color":"gold"},{"translate":"Time","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"hour","objective":"daycount"},"color":"gray"},{"translate": ":","color":"dark_gray"},{"translate": "0","color":"gray"},{"score":{"name":"min","objective":"daycount"},"color":"gray"}]
execute unless score min daycount matches 0..9 run title @s actionbar ["",{"translate":"Day","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"day","objective":"daycount"},"color":"gray"},{"translate":" ","color":"gold"},{"translate":"Time","color":"gold"},{"translate":": ","color":"dark_gray"},{"score":{"name":"hour","objective":"daycount"},"color":"gray"},{"translate": ":","color":"dark_gray"},{"score":{"name":"min","objective":"daycount"},"color":"gray"}]