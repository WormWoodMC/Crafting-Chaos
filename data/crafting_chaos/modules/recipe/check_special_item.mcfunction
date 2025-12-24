# Check if item is special and shouldn't be randomized
# Special items include netherite, elytra, dragon egg, etc.

# Get item ID hash and check against special items
execute if score $item_id_hash crafting_chaos.temp matches 1000000.. run function crafting_chaos:modules/recipe/preserve_special_item

# List of special items that should never be randomized
# This is handled by checking the item ID hash against known values
# If it's special, we skip randomization and keep the original item
