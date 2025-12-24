# Spawn enchanted book with random enchantments
# Based on chaos level for enchantment selection

# Remove the original caught fish
kill @s

# Generate random enchantment based on chaos level
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp *= 2 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select enchantment based on random number
execute if score $result crafting_chaos.temp matches 1..2 run function crafting_chaos:modules/fishing/spawn_book minecraft:sharpness
execute if score $result crafting_chaos.temp matches 3..4 run function crafting_chaos:modules/fishing/spawn_book minecraft:efficiency
execute if score $result crafting_chaos.temp matches 5..6 run function crafting_chaos:modules/fishing/spawn_book minecraft:protection
execute if score $result crafting_chaos.temp matches 7..8 run function crafting_chaos:modules/fishing/spawn_book minecraft:unbreaking
execute if score $result crafting_chaos.temp matches 9..10 run function crafting_chaos:modules/fishing/spawn_book minecraft:fortune
execute if score $result crafting_chaos.temp matches 11..12 run function crafting_chaos:modules/fishing/spawn_book minecraft:looting
execute if score $result crafting_chaos.temp matches 13..14 run function crafting_chaos:modules/fishing/spawn_book minecraft:respiration
execute if score $result crafting_chaos.temp matches 15..16 run function crafting_chaos:modules/fishing/spawn_book minecraft:depth_strider
execute if score $result crafting_chaos.temp matches 17..18 run function crafting_chaos:modules/fishing/spawn_book minecraft:lure
execute if score $result crafting_chaos.temp matches 19..20 run function crafting_chaos:modules/fishing/spawn_book minecraft:mending
