# Apply randomization to the detected crafted item
# This function replaces the crafted item with a random one from the same category

# Get the crafted item information from storage
execute store result score $item_count crafting_chaos.temp run data get storage crafting_chaos:current_crafting.item.count 1

# Determine item type based on item ID using NBT checks
execute if data entity @s SelectedItem{id:"minecraft:wooden_sword"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:stone_sword"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:iron_sword"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:golden_sword"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:diamond_sword"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:wooden_pickaxe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:stone_pickaxe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:iron_pickaxe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:golden_pickaxe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:diamond_pickaxe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:wooden_axe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:stone_axe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:iron_axe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:golden_axe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:diamond_axe"} run function crafting_chaos:modules/recipe/randomize_tools
execute if data entity @s SelectedItem{id:"minecraft:bow"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:crossbow"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:trident"} run function crafting_chaos:modules/recipe/randomize_weapons
execute if data entity @s SelectedItem{id:"minecraft:leather_helmet"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:iron_helmet"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:golden_helmet"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:diamond_helmet"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:leather_chestplate"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:iron_chestplate"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:golden_chestplate"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:diamond_chestplate"} run function crafting_chaos:modules/recipe/randomize_armor
execute if data entity @s SelectedItem{id:"minecraft:oak_planks"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:stone"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:brick"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:glass"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:crafting_table"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:furnace"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:chest"} run function crafting_chaos:modules/recipe/randomize_blocks
execute if data entity @s SelectedItem{id:"minecraft:bread"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:apple"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:carrot"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:potato"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:beef"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:porkchop"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:chicken"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:cod"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:salmon"} run function crafting_chaos:modules/recipe/randomize_food
execute if data entity @s SelectedItem{id:"minecraft:redstone"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:repeater"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:comparator"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:piston"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:observer"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:hopper"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:dropper"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:dispenser"} run function crafting_chaos:modules/recipe/randomize_redstone
execute if data entity @s SelectedItem{id:"minecraft:note_block"} run function crafting_chaos:modules/recipe/randomize_redstone

# Update statistics
scoreboard players add #items_randomized crafting_chaos.state 1
data modify storage crafting_chaos:main statistics.items_randomized merge value {total: 1}
