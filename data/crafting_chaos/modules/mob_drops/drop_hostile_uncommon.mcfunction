# Drop uncommon hostile mob loot
# Selects from uncommon hostile drops based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 50
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..10 run function crafting_chaos:modules/mob_drops/drop_item minecraft:iron_ingot 1 1
execute if score $result crafting_chaos.temp matches 11..18 run function crafting_chaos:modules/mob_drops/drop_item minecraft:gold_nugget 2 4
execute if score $result crafting_chaos.temp matches 19..25 run function crafting_chaos:modules/mob_drops/drop_item minecraft:coal 1 3
execute if score $result crafting_chaos.temp matches 26..31 run function crafting_chaos:modules/mob_drops/drop_item minecraft:redstone 2 5
execute if score $result crafting_chaos.temp matches 32..37 run function crafting_chaos:modules/mob_drops/drop_item minecraft:experience_bottle 1 2
execute if score $result crafting_chaos.temp matches 38..43 run function crafting_chaos:modules/mob_drops/drop_item minecraft:fermented_spider_eye 1 1
execute if score $result crafting_chaos.temp matches 44..47 run function crafting_chaos:modules/mob_drops/drop_item minecraft:fire_charge 1 2
execute if score $result crafting_chaos.temp matches 48..50 run function crafting_chaos:modules/mob_drops/drop_item minecraft:chainmail_boots 1 1
