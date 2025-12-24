# Drop common hostile mob loot
# Selects from common hostile drops based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 93
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..20 run function crafting_chaos:modules/mob_drops/drop_item minecraft:arrow 1 3
execute if score $result crafting_chaos.temp matches 21..35 run function crafting_chaos:modules/mob_drops/drop_item minecraft:bone 1 2
execute if score $result crafting_chaos.temp matches 36..45 run function crafting_chaos:modules/mob_drops/drop_item minecraft:gunpowder 1 2
execute if score $result crafting_chaos.temp matches 46..57 run function crafting_chaos:modules/mob_drops/drop_item minecraft:string 1 3
execute if score $result crafting_chaos.temp matches 58..65 run function crafting_chaos:modules/mob_drops/drop_item minecraft:spider_eye 1 1
execute if score $result crafting_chaos.temp matches 66..75 run function crafting_chaos:modules/mob_drops/drop_item minecraft:slime_ball 1 2
execute if score $result crafting_chaos.temp matches 76..80 run function crafting_chaos:modules/mob_drops/drop_item minecraft:ender_pearl 1 1
execute if score $result crafting_chaos.temp matches 81..85 run function crafting_chaos:modules/mob_drops/drop_item minecraft:blaze_rod 1 1
execute if score $result crafting_chaos.temp matches 86..88 run function crafting_chaos:modules/mob_drops/drop_item minecraft:ghast_tear 1 1
execute if score $result crafting_chaos.temp matches 89..96 run function crafting_chaos:modules/mob_drops/drop_item minecraft:magma_cream 1 1
