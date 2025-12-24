# Add specific enchantment with random level
# Parameter: %1 - Enchantment ID

# Generate random enchantment level based on chaos level
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp /= 3 crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Store the enchantment level
scoreboard players operation $enchant_level crafting_chaos.temp = $result crafting_chaos.temp

# Apply the enchantment to the item in the appropriate slot
execute store result score $slot crafting_chaos.temp run data get storage crafting_chaos:current_enchanting.item.slot

# Apply to mainhand
execute if score $slot crafting_chaos.temp matches -106 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches -106 run enchant @s minecraft:%1 %temp

# Apply to offhand
execute if score $slot crafting_chaos.temp matches -107 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches -107 run enchant @s minecraft:%1 %temp

# Apply to hotbar slots
execute if score $slot crafting_chaos.temp matches 0 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 0 run item modify entity @s hotbar.0 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 1 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 1 run item modify entity @s hotbar.1 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 2 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 2 run item modify entity @s hotbar.2 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 3 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 3 run item modify entity @s hotbar.3 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 4 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 4 run item modify entity @s hotbar.4 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 5 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 5 run item modify entity @s hotbar.5 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 6 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 6 run item modify entity @s hotbar.6 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 7 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 7 run item modify entity @s hotbar.7 minecraft:enchant_with_level{id:"%1",lvl:%temp}s

execute if score $slot crafting_chaos.temp matches 8 run execute store result score $temp crafting_chaos.temp run scoreboard players get $enchant_level crafting_chaos.temp
execute if score $slot crafting_chaos.temp matches 8 run item modify entity @s hotbar.8 minecraft:enchant_with_level{id:"%1",lvl:%temp}s
