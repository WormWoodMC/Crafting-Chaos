# Randomize caught fish based on chaos level
# Input: Item entity with caught_fish tag

# Get chaos level modifier
scoreboard players operation $chaos_mod crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $chaos_mod crafting_chaos.temp *= #chaos_multiplier crafting_chaos.temp
scoreboard players operation $chaos_mod crafting_chaos.temp /= 10 crafting_chaos.temp

# Generate random number for loot selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players set $max crafting_chaos.temp 100
function crafting_chaos:lib/rng/next_int

# Determine loot rarity based on random number and chaos
execute if score $result crafting_chaos.temp matches 1..70 run function crafting_chaos:modules/fishing/give_common_loot
execute if score $result crafting_chaos.temp matches 71..90 run function crafting_chaos:modules/fishing/give_uncommon_loot
execute if score $result crafting_chaos.temp matches 91..100 run function crafting_chaos:modules/fishing/give_rare_loot

# Update statistics
scoreboard players add #fish_caught crafting_chaos.state 1
data modify storage crafting_chaos:main statistics.loot_modified merge value {fishing: 1}

# Remove the caught_fish tag to prevent re-processing
tag @s remove minecraft:caught_fish
