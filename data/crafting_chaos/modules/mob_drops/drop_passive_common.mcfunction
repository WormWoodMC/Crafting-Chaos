# Drop common passive mob loot
# Selects from common passive drops based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 86
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..15 run function crafting_chaos:modules/mob_drops/drop_item minecraft:feather 1 3
execute if score $result crafting_chaos.temp matches 16..27 run function crafting_chaos:modules/mob_drops/drop_item minecraft:leather 1 2
execute if score $result crafting_chaos.temp matches 28..37 run function crafting_chaos:modules/mob_drops/drop_item minecraft:wool 1 1
execute if score $result crafting_chaos.temp matches 38..45 run function crafting_chaos:modules/mob_drops/drop_item minecraft:porkchop 1 2
execute if score $result crafting_chaos.temp matches 46..53 run function crafting_chaos:modules/mob_drops/drop_item minecraft:beef 1 2
execute if score $result crafting_chaos.temp matches 54..61 run function crafting_chaos:modules/mob_drops/drop_item minecraft:chicken 1 2
execute if score $result crafting_chaos.temp matches 62..69 run function crafting_chaos:modules/mob_drops/drop_item minecraft:mutton 1 2
execute if score $result crafting_chaos.temp matches 70..74 run function crafting_chaos:modules/mob_drops/drop_item minecraft:rabbit 1 1
execute if score $result crafting_chaos.temp matches 75..84 run function crafting_chaos:modules/mob_drops/drop_item minecraft:egg 1 1
execute if score $result crafting_chaos.temp matches 85..86 run function crafting_chaos:modules/mob_drops/drop_item minecraft:milk_bucket 1 1
