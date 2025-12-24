# Randomize crafted item into a tool
# Selects from predefined tool list based on chaos level

# Generate random tool selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 6 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select tool based on random number
execute if score $result crafting_chaos.temp matches 1..6 run function crafting_chaos:modules/recipe/replace_with_wooden_pickaxe
execute if score $result crafting_chaos.temp matches 7..12 run function crafting_chaos:modules/recipe/replace_with_stone_pickaxe
execute if score $result crafting_chaos.temp matches 13..18 run function crafting_chaos:modules/recipe/replace_with_iron_pickaxe
execute if score $result crafting_chaos.temp matches 19..24 run function crafting_chaos:modules/recipe/replace_with_golden_pickaxe
execute if score $result crafting_chaos.temp matches 25..30 run function crafting_chaos:modules/recipe/replace_with_diamond_pickaxe
execute if score $result crafting_chaos.temp matches 31..36 run function crafting_chaos:modules/recipe/replace_with_wooden_axe
execute if score $result crafting_chaos.temp matches 37..42 run function crafting_chaos:modules/recipe/replace_with_stone_axe
execute if score $result crafting_chaos.temp matches 43..48 run function crafting_chaos:modules/recipe/replace_with_iron_axe
execute if score $result crafting_chaos.temp matches 49..54 run function crafting_chaos:modules/recipe/replace_with_golden_axe
execute if score $result crafting_chaos.temp matches 55..60 run function crafting_chaos:modules/recipe/replace_with_diamond_axe
