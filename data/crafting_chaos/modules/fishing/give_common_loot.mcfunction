# Give common loot to player
# Selects from common loot table based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 71
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..20 run function crafting_chaos:modules/fishing/spawn_item minecraft:cod
execute if score $result crafting_chaos.temp matches 21..35 run function crafting_chaos:modules/fishing/spawn_item minecraft:salmon
execute if score $result crafting_chaos.temp matches 36..45 run function crafting_chaos:modules/fishing/spawn_item minecraft:tropical_fish
execute if score $result crafting_chaos.temp matches 46..50 run function crafting_chaos:modules/fishing/spawn_item minecraft:pufferfish
execute if score $result crafting_chaos.temp matches 51..58 run function crafting_chaos:modules/fishing/spawn_item minecraft:bone
execute if score $result crafting_chaos.temp matches 59..68 run function crafting_chaos:modules/fishing/spawn_item minecraft:stick
execute if score $result crafting_chaos.temp matches 69..76 run function crafting_chaos:modules/fishing/spawn_item minecraft:string
execute if score $result crafting_chaos.temp matches 77..81 run function crafting_chaos:modules/fishing/spawn_item minecraft:leather
