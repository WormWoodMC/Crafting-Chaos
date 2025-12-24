# Called when an item is enchanted via advancement trigger
# This function handles the enchantment randomization

# Get the player who enchanted
execute as @p run function crafting_chaos:modules/enchantment/enchanting_player

# Check if enchantment randomization is enabled
execute if score #enchantment_module crafting_chaos.config matches 0 run return

# Get the recently enchanted item from player's inventory
execute as @p run function crafting_chaos:modules/enchantment/get_enchanted_item

# Apply randomization if we found an enchanted item
execute if score #found_enchanted_item crafting_chaos.state matches 1 run function crafting_chaos:modules/enchantment/apply_randomization

# Clear the enchantment trigger
advancement revoke @s only crafting_chaos:enchant_trigger
