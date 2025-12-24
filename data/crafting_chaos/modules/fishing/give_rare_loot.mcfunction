# Give rare loot to player
# Selects from rare loot table based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 11
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..3 run function crafting_chaos:modules/fishing/spawn_enchanted_book
execute if score $result crafting_chaos.temp matches 4..5 run function crafting_chaos:modules/fishing/spawn_item minecraft:clock
execute if score $result crafting_chaos.temp matches 6..7 run function crafting_chaos:modules/fishing/spawn_item minecraft:compass
execute if score $result crafting_chaos.temp matches 8 run function crafting_chaos:modules/fishing/spawn_item minecraft:golden_apple
execute if score $result crafting_chaos.temp matches 9..10 run function crafting_chaos:modules/fishing/spawn_item minecraft:heart_of_the_sea
execute if score $result crafting_chaos.temp matches 11 run function crafting_chaos:modules/fishing/spawn_item minecraft:trident
