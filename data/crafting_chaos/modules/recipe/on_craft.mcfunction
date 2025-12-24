# Called when a recipe is crafted via advancement trigger
# This function handles the actual randomization

# Get the player who crafted
execute as @p run function crafting_chaos:modules/recipe/crafting_player

# Check if recipe randomization is enabled
execute if score #recipe_module crafting_chaos.config matches 0 run return

# Get the last crafted item from player's inventory
execute as @p run function crafting_chaos:modules/recipe/get_last_crafted_item

# Apply randomization if we found a crafted item
execute if score #found_crafted_item crafting_chaos.state matches 1 run function crafting_chaos:modules/recipe/apply_randomization

# Clear the crafting trigger
advancement revoke @s only crafting_chaos:crafting_trigger
