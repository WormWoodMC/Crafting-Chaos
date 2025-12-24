# Randomize crafted item into food
# Selects from predefined food list based on chaos level

# Generate random food selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 5 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select food based on random number
execute if score $result crafting_chaos.temp matches 1..5 run function crafting_chaos:modules/recipe/replace_with_bread
execute if score $result crafting_chaos.temp matches 6..10 run function crafting_chaos:modules/recipe/replace_with_apple
execute if score $result crafting_chaos.temp matches 11..15 run function crafting_chaos:modules/recipe/replace_with_carrot
execute if score $result crafting_chaos.temp matches 16..20 run function crafting_chaos:modules/recipe/replace_with_potato
execute if score $result crafting_chaos.temp matches 21..25 run function crafting_chaos:modules/recipe/replace_with_beef
execute if score $result crafting_chaos.temp matches 26..30 run function crafting_chaos:modules/recipe/replace_with_porkchop
execute if score $result crafting_chaos.temp matches 31..35 run function crafting_chaos:modules/recipe/replace_with_chicken
execute if score $result crafting_chaos.temp matches 36..40 run function crafting_chaos:modules/recipe/replace_with_cod
execute if score $result crafting_chaos.temp matches 41..45 run function crafting_chaos:modules/recipe/replace_with_salmon
