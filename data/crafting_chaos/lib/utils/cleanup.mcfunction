# Utility Functions
# Common helper functions for the datapack

# Swap min and max values if needed
execute store result score $temp crafting_chaos.temp run scoreboard players get $min crafting_chaos.temp
scoreboard players operation $min crafting_chaos.temp = $max crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp = $temp crafting_chaos.temp

# Cleanup temporary data
scoreboard players reset $min crafting_chaos.temp
scoreboard players reset $max crafting_chaos.temp
scoreboard players reset $range crafting_chaos.temp
scoreboard players reset $result crafting_chaos.temp
scoreboard players reset $temp crafting_chaos.temp

# Clear all temporary values
scoreboard players reset #temp crafting_chaos.state
scoreboard players reset #temp2 crafting_chaos.state
scoreboard players reset #temp3 crafting_chaos.state

# Reset module statistics
data modify storage crafting_chaos:main statistics set value {}

# Clean up old marker entities
execute as @e[type=marker,tag=crafting_chaos.temp] run kill @s

# Remove temporary tags from players
execute as @a run tag @s remove crafting_chaos.temp
execute as @a run tag @s remove crafting_chaos.processing
