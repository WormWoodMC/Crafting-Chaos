# Randomize crafted item into redstone item
# Selects from predefined redstone list based on chaos level

# Generate random redstone selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 5 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select redstone item based on random number
execute if score $result crafting_chaos.temp matches 1..5 run function crafting_chaos:modules/recipe/replace_with_redstone
execute if score $result crafting_chaos.temp matches 6..10 run function crafting_chaos:modules/recipe/replace_with_repeater
execute if score $result crafting_chaos.temp matches 11..15 run function crafting_chaos:modules/recipe/replace_with_comparator
execute if score $result crafting_chaos.temp matches 16..20 run function crafting_chaos:modules/recipe/replace_with_piston
execute if score $result crafting_chaos.temp matches 21..25 run function crafting_chaos:modules/recipe/replace_with_observer
execute if score $result crafting_chaos.temp matches 26..30 run function crafting_chaos:modules/recipe/replace_with_hopper
execute if score $result crafting_chaos.temp matches 31..35 run function crafting_chaos:modules/recipe/replace_with_dropper
execute if score $result crafting_chaos.temp matches 36..40 run function crafting_chaos:modules/recipe/replace_with_dispenser
execute if score $result crafting_chaos.temp matches 41..45 run function crafting_chaos:modules/recipe/replace_with_note_block
