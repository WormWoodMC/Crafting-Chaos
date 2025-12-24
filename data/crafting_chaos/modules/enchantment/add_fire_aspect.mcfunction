# Add fire_aspect enchantment with random level
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp /= 3 crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Apply fire_aspect based on random level
execute if score $result crafting_chaos.temp matches 1 run enchant @s minecraft:fire_aspect 1
execute if score $result crafting_chaos.temp matches 2.. run enchant @s minecraft:fire_aspect 2
