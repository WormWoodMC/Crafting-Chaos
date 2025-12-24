# Drop uncommon passive mob loot
# Selects from uncommon passive drops based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 45
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..8 run function crafting_chaos:modules/mob_drops/drop_item minecraft:iron_nugget 2 4
execute if score $result crafting_chaos.temp matches 9..16 run function crafting_chaos:modules/mob_drops/drop_item minecraft:gold_nugget 2 4
execute if score $result crafting_chaos.temp matches 17..23 run function crafting_chaos:modules/mob_drops/drop_item minecraft:coal 1 3
execute if score $result crafting_chaos.temp matches 24..29 run function crafting_chaos:modules/mob_drops/drop_item minecraft:wheat_seeds 2 4
execute if score $result crafting_chaos.temp matches 30..35 run function crafting_chaos:modules/mob_drops/drop_item minecraft:carrot 1 2
execute if score $result crafting_chaos.temp matches 36..40 run function crafting_chaos:modules/mob_drops/drop_item minecraft:potato 1 2
execute if score $result crafting_chaos.temp matches 41..44 run function crafting_chaos:modules/mob_drops/drop_item minecraft:beetroot_seeds 1 2
execute if score $result crafting_chaos.temp matches 45 run function crafting_chaos:modules/mob_drops/drop_item minecraft:golden_carrot 1 1
