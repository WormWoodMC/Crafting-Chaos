# Drop item with random count
# Parameters: %1 - Item ID, %2 - Min count, %3 - Max count

# Generate random count
scoreboard players set $min crafting_chaos.temp %2
scoreboard players set $max crafting_chaos.temp %3
function crafting_chaos:lib/rng/next_int

# Store the count
scoreboard players operation $drop_count crafting_chaos.temp = $result crafting_chaos.temp

# Drop the item(s) at mob location
execute at @s run function crafting_chaos:modules/mob_drops/spawn_dropped_item %1

# Reset temporary values
scoreboard players reset $drop_count crafting_chaos.temp
