# Randomize mob drops based on chaos level
# Executed as the dying mob

# Determine if mob is hostile or passive
scoreboard players set $is_hostile crafting_chaos.temp 0
scoreboard players set $is_passive crafting_chaos.temp 0

# Check for hostile mobs
execute if entity @s[type=minecraft:zombie] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:skeleton] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:creeper] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:spider] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:enderman] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:witch] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:blaze] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:ghast] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:magma_cube] run scoreboard players set $is_hostile crafting_chaos.temp 1
execute if entity @s[type=minecraft:slime] run scoreboard players set $is_hostile crafting_chaos.temp 1

# Check for passive mobs
execute if entity @s[type=minecraft:cow] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:pig] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:sheep] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:chicken] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:rabbit] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:horse] run scoreboard players set $is_passive crafting_chaos.temp 1
execute if entity @s[type=minecraft:villager] run scoreboard players set $is_passive crafting_chaos.temp 1

# Get chaos level modifier
scoreboard players operation $chaos_mod crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $chaos_mod crafting_chaos.temp *= 10 crafting_chaos.temp

# Generate random number for drop selection
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = $chaos_mod crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 50 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Select drop table based on mob type and random number
execute if score $is_hostile crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 1..70 run function crafting_chaos:modules/mob_drops/drop_hostile_common
execute if score $is_hostile crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 71..90 run function crafting_chaos:modules/mob_drops/drop_hostile_uncommon
execute if score $is_hostile crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 91..100 run function crafting_chaos:modules/mob_drops/drop_rare

execute if score $is_passive crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 1..70 run function crafting_chaos:modules/mob_drops/drop_passive_common
execute if score $is_passive crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 71..90 run function crafting_chaos:modules/mob_drops/drop_passive_uncommon
execute if score $is_passive crafting_chaos.temp matches 1 if score $result crafting_chaos.temp matches 91..100 run function crafting_chaos:modules/mob_drops/drop_rare

# Update statistics
scoreboard players add #mobs_processed crafting_chaos.state 1
data modify storage crafting_chaos:main statistics.loot_modified merge value {mob_drops: 1}
