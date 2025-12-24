# Randomize crafted item into a weapon
# Selects from predefined weapon list based on chaos level

# Generate random weapon selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 4 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select weapon based on random number
execute if score $result crafting_chaos.temp matches 1..4 run function crafting_chaos:modules/recipe/replace_with_wooden_sword
execute if score $result crafting_chaos.temp matches 5..8 run function crafting_chaos:modules/recipe/replace_with_stone_sword
execute if score $result crafting_chaos.temp matches 9..12 run function crafting_chaos:modules/recipe/replace_with_iron_sword
execute if score $result crafting_chaos.temp matches 13..16 run function crafting_chaos:modules/recipe/replace_with_golden_sword
execute if score $result crafting_chaos.temp matches 17..20 run function crafting_chaos:modules/recipe/replace_with_diamond_sword
execute if score $result crafting_chaos.temp matches 21..24 run function crafting_chaos:modules/recipe/replace_with_bow
execute if score $result crafting_chaos.temp matches 25..28 run function crafting_chaos:modules/recipe/replace_with_crossbow
execute if score $result crafting_chaos.temp matches 29..32 run function crafting_chaos:modules/recipe/replace_with_trident
