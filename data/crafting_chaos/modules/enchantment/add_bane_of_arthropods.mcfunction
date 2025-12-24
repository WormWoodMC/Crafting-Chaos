# Add bane_of_arthropods enchantment with random level
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp /= 3 crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Apply bane_of_arthropods based on random level
execute if score $result crafting_chaos.temp matches 1 run enchant @s minecraft:bane_of_arthropods 1
execute if score $result crafting_chaos.temp matches 2 run enchant @s minecraft:bane_of_arthropods 2
execute if score $result crafting_chaos.temp matches 3 run enchant @s minecraft:bane_of_arthropods 3
execute if score $result crafting_chaos.temp matches 4 run enchant @s minecraft:bane_of_arthropods 4
execute if score $result crafting_chaos.temp matches 5.. run enchant @s minecraft:bane_of_arthropods 5
