# Apply random weapon enchantment
# This function applies one random enchantment from the weapon pool

# Check if we should apply more enchantments
execute if score $current_enchant crafting_chaos.temp >= $enchant_count crafting_chaos.temp run return

# Generate random enchantment selection
scoreboard players set $min crafting_chaos.temp 0
scoreboard players set $max crafting_chaos.temp 5
function crafting_chaos:lib/rng/next_int

# Select enchantment based on random number
execute if score $result crafting_chaos.temp matches 0 run function crafting_chaos:modules/enchantment/add_sharpness
execute if score $result crafting_chaos.temp matches 1 run function crafting_chaos:modules/enchantment/add_smite
execute if score $result crafting_chaos.temp matches 2 run function crafting_chaos:modules/enchantment/add_bane_of_arthropods
execute if score $result crafting_chaos.temp matches 3 run function crafting_chaos:modules/enchantment/add_knockback
execute if score $result crafting_chaos.temp matches 4 run function crafting_chaos:modules/enchantment/add_fire_aspect
execute if score $result crafting_chaos.temp matches 5 run function crafting_chaos:modules/enchantment/add_looting

# Increment enchantment counter and potentially apply more
scoreboard players add $current_enchant crafting_chaos.temp 1
execute if score $current_enchant crafting_chaos.temp < $enchant_count crafting_chaos.temp run function crafting_chaos:modules/enchantment/apply_weapon_enchant
