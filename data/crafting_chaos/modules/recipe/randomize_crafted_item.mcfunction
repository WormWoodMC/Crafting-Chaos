# Randomize crafted item based on chaos level
# Executed as the crafted item entity

# Get the original item ID
execute store result score $item_id_hash crafting_chaos.temp run data get entity @s Item.id

# Check if this is a special item that shouldn't be randomized
execute if score $item_id_hash crafting_chaos.temp matches 1000000.. run function crafting_chaos:modules/recipe/check_special_item

# Get chaos level modifier
scoreboard players operation $chaos_mod crafting_chaos.temp = #chaos_level crafting_chaos.config

# Generate random number for category selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 100
function crafting_chaos:lib/rng/next_int

# Determine item category and randomize within it
execute if score $result crafting_chaos.temp matches 1..30 run function crafting_chaos:modules/recipe/randomize_in_category tools
execute if score $result crafting_chaos.temp matches 31..50 run function crafting_chaos:modules/recipe/randomize_in_category weapons
execute if score $result crafting_chaos.temp matches 51..65 run function crafting_chaos:modules/recipe/randomize_in_category armor
execute if score $result crafting_chaos.temp matches 66..80 run function crafting_chaos:modules/recipe/randomize_in_category blocks
execute if score $result crafting_chaos.temp matches 81..90 run function crafting_chaos:modules/recipe/randomize_in_category food
execute if score $result crafting_chaos.temp matches 91..100 run function crafting_chaos:modules/recipe/randomize_in_category redstone

# Update statistics
scoreboard players add #items_randomized crafting_chaos.state 1
data modify storage crafting_chaos:main statistics.items_randomized merge value {total: 1}
