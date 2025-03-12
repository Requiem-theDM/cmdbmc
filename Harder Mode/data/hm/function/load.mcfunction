# Add Scoreboard Objectives and Set Displays
scoreboard objectives add health health {"text":"\u2764","color":"dark_red"}
scoreboard objectives setdisplay below_name health
scoreboard objectives add deaths deathCount "Deaths"
scoreboard objectives setdisplay list deaths
scoreboard objectives add daycount dummy "Current Day"
scoreboard objectives add x dummy "X Position"
scoreboard objectives add y dummy "Y Position"
scoreboard objectives add z dummy "Z position"
scoreboard objectives add hm.clock dummy "Mob Ability Clock"
scoreboard objectives add hm.darkness_luck dummy "Darkness Luck"
scoreboard objectives add hm.darkness_debuff dummy "Darkness Debuff"
scoreboard objectives add hm.constants dummy
scoreboard objectives add hm.display.reload dummy

# Set Up Dummy Players for Math
scoreboard players set 7 hm.constants 7
scoreboard players set 24 hm.constants 24
scoreboard players set 1000 hm.constants 1000
scoreboard players set 16666 hm.constants 16666

# Set Gamerules
gamerule doLimitedCrafting true
gamerule forgiveDeadPlayers false
gamerule universalAnger true
gamerule naturalRegeneration false
gamerule doDaylightCycle false
gamerule playersSleepingPercentage 0

# Schedule Time Advancement for Double-Length Night
function hm:sleep_and_time_cycle/advance_time

# Schedule Mob Ticking Functions
function hm:mobs/1s_clock
function hm:mobs/1t_clock

# Schedule Darkness Ticking Functions
function hm:darkness/1s_clock
function hm:darkness/1t_clock

# Display Reload Message
execute as @a unless score @s hm.display.reload matches 0 run tellraw @s [{"text":""},{"text":"Harder Mode Enabled","color":"dark_red"},{"text":" [Click Here To Disable This Reload Message]","color":"dark_gray","clickEvent":{"action":"run_command","value":"/execute as @s run scoreboard players set @s hm.display.reload 0"}}]