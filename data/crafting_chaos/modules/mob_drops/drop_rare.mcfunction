# Drop rare loot from any mob
# Selects from rare drops based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 42
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..6 run function crafting_chaos:modules/mob_drops/drop_item minecraft:diamond 1 1
execute if score $result crafting_chaos.temp matches 7..12 run function crafting_chaos:modules/mob_drops/drop_item minecraft:emerald 1 1
execute if score $result crafting_chaos.temp matches 13..18 run function crafting_chaos:modules/mob_drops/drop_item minecraft:iron_ingot 1 2
execute if score $result crafting_chaos.temp matches 19..24 run function crafting_chaos:modules/mob_drops/drop_item minecraft:gold_ingot 1 2
execute if score $result crafting_chaos.temp matches 25..30 run function crafting_chaos:modules/mob_drops/drop_item minecraft:experience_bottle 2 4
execute if score $result crafting_chaos.temp matches 31..35 run function crafting_chaos:modules/mob_drops/drop_item minecraft:enchanted_book 1 1
execute if score $result crafting_chaos.temp matches 36..39 run function crafting_chaos:modules/mob_drops/drop_item minecraft:name_tag 1 1
execute if score $result crafting_chaos.temp matches 40..42 run function crafting_chaos:modules/mob_drops/drop_item minecraft:saddle 1 1
