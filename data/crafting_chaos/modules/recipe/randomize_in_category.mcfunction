# Randomize item within specified category
# Parameter: %1 - Category name (tools, weapons, armor, blocks, food, redstone)

# Get the category size from storage
execute store result score $category_size crafting_chaos.temp run data get storage crafting_chaos:recipe.categories.%1[].size

# Generate random index
scoreboard players set $min crafting_chaos.temp 0
scoreboard players operation $max crafting_chaos.temp = $category_size crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp -= 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Get the random item from the category
execute store result score $selected_index crafting_chaos.temp run scoreboard players get $result crafting_chaos.temp
execute store result score $selected_index crafting_chaos.temp run scoreboard players get $selected_index crafting_chaos.temp

# Get the item ID from storage
execute store result score $new_item_hash crafting_chaos.temp run data get storage crafting_chaos:recipe.categories.%1[%selected_index]

# Replace the item with the new random item
execute at @s run function crafting_chaos:modules/recipe/replace_item

# Add visual effect for feedback
execute at @s run particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 1 20
execute at @s run playsound minecraft:block.enchantment_table.use master @a ~ ~ ~ 1 1
