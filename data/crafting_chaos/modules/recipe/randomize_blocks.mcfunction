# Randomize crafted item into a block
# Selects from predefined block list based on chaos level

# Generate random block selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 5 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select block based on random number
execute if score $result crafting_chaos.temp matches 1..5 run function crafting_chaos:modules/recipe/replace_with_oak_planks
execute if score $result crafting_chaos.temp matches 6..10 run function crafting_chaos:modules/recipe/replace_with_stone
execute if score $result crafting_chaos.temp matches 11..15 run function crafting_chaos:modules/recipe/replace_with_brick
execute if score $result crafting_chaos.temp matches 16..20 run function crafting_chaos:modules/recipe/replace_with_glass
execute if score $result crafting_chaos.temp matches 21..25 run function crafting_chaos:modules/recipe/replace_with_glowstone
execute if score $result crafting_chaos.temp matches 26..30 run function crafting_chaos:modules/recipe/replace_with_crafting_table
execute if score $result crafting_chaos.temp matches 31..35 run function crafting_chaos:modules/recipe/replace_with_furnace
execute if score $result crafting_chaos.temp matches 36..40 run function crafting_chaos:modules/recipe/replace_with_chest
execute if score $result crafting_chaos.temp matches 41..45 run function crafting_chaos:modules/recipe/replace_with_bookshelf
