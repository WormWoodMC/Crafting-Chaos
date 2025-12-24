# Give uncommon loot to player
# Selects from uncommon loot table based on weights

# Get random number for selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 47
function crafting_chaos:lib/rng/next_int

# Select item based on random number
execute if score $result crafting_chaos.temp matches 1..10 run function crafting_chaos:modules/fishing/spawn_item minecraft:ink_sac
execute if score $result crafting_chaos.temp matches 11..18 run function crafting_chaos:modules/fishing/spawn_item minecraft:nautilus_shell
execute if score $result crafting_chaos.temp matches 19..23 run function crafting_chaos:modules/fishing/spawn_item minecraft:name_tag
execute if score $result crafting_chaos.temp matches 24..28 run function crafting_chaos:modules/fishing/spawn_item minecraft:saddle
execute if score $result crafting_chaos.temp matches 29..31 run function crafting_chaos:modules/fishing/spawn_item minecraft:bow
execute if score $result crafting_chaos.temp matches 32..34 run function crafting_chaos:modules/fishing/spawn_item minecraft:fishing_rod
execute if score $result crafting_chaos.temp matches 35..38 run function crafting_chaos:modules/fishing/spawn_item minecraft:book
execute if score $result crafting_chaos.temp matches 39..47 run function crafting_chaos:modules/fishing/spawn_item minecraft:experience_bottle
