# Apply randomization to the detected enchanted item
# This function replaces the enchantments with random ones

# Get the enchanted item information from storage
execute store result score $item_count crafting_chaos.temp run data get storage crafting_chaos:current_enchanting.item.count 1
execute store result string #item_id storage crafting_chaos:temp run data get storage crafting_chaos:current_enchanting.item.id

# Determine item type based on item ID
execute if string #item_id storage crafting_chaos:temp "minecraft:sword" run function crafting_chaos:modules/enchantment/randomize_weapon
execute if string #item_id storage crafting_chaos:temp "minecraft:pickaxe" run function crafting_chaos:modules/enchantment/randomize_tool
execute if string #item_id storage crafting_chaos:temp "minecraft:axe" run function crafting_chaos:modules/enchantment/randomize_tool
execute if string #item_id storage crafting_chaos:temp "minecraft:shovel" run function crafting_chaos:modules/enchantment/randomize_tool
execute if string #item_id storage crafting_chaos:temp "minecraft:bow" run function crafting_chaos:modules/enchantment/randomize_bow
execute if string #item_id storage crafting_chaos:temp "minecraft:crossbow" run function crafting_chaos:modules/enchantment/randomize_bow
execute if string #item_id storage crafting_chaos:temp "minecraft:trident" run function crafting_chaos:modules/enchantment/randomize_special
execute if string #item_id storage crafting_chaos:temp "minecraft:helmet" run function crafting_chaos:modules/enchantment/randomize_armor
execute if string #item_id storage crafting_chaos:temp "minecraft:chestplate" run function crafting_chaos:modules/enchantment/randomize_armor
execute if string #item_id storage crafting_chaos:temp "minecraft:leggings" run function crafting_chaos:modules/enchantment/randomize_armor
execute if string #item_id storage crafting_chaos:temp "minecraft:boots" run function crafting_chaos:modules/enchantment/randomize_armor

# Update statistics
scoreboard players add #enchantments_applied crafting_chaos.state 1
data modify storage crafting_chaos:main statistics.enchantments_applied merge value {total: 1}

# Remove temporary tag
tag @s remove crafting_chaos.enchanting_temp
