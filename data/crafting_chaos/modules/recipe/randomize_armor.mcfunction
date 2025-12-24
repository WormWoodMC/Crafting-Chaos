# Randomize crafted item into armor
# Selects from predefined armor list based on chaos level

# Generate random armor selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 8 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select armor based on random number
execute if score $result crafting_chaos.temp matches 1..8 run function crafting_chaos:modules/recipe/replace_with_leather_helmet
execute if score $result crafting_chaos.temp matches 9..16 run function crafting_chaos:modules/recipe/replace_with_iron_helmet
execute if score $result crafting_chaos.temp matches 17..24 run function crafting_chaos:modules/recipe/replace_with_golden_helmet
execute if score $result crafting_chaos.temp matches 25..32 run function crafting_chaos:modules/recipe/replace_with_diamond_helmet
execute if score $result crafting_chaos.temp matches 33..40 run function crafting_chaos:modules/recipe/replace_with_leather_chestplate
execute if score $result crafting_chaos.temp matches 41..48 run function crafting_chaos:modules/recipe/replace_with_iron_chestplate
execute if score $result crafting_chaos.temp matches 49..56 run function crafting_chaos:modules/recipe/replace_with_golden_chestplate
execute if score $result crafting_chaos.temp matches 57..64 run function crafting_chaos:modules/recipe/replace_with_diamond_chestplate
