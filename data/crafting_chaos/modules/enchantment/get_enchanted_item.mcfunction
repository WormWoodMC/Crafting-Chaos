# Get the recently enchanted item from player's inventory
# This checks the player's mainhand and offhand for recently enchanted items

# Reset detection flag
scoreboard players set #found_enchanted_item crafting_chaos.state 0

# Check mainhand for enchanted item
execute if data entity @s SelectedItem[tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_mainhand

# Check offhand for enchanted item
execute if data entity @s Inventory[{Slot:-107b,tag:{Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_offhand

# Check hotbar slots for enchanted items (0-8)
execute if data entity @s Inventory[{Slot:0b,tag:{Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 0
execute if data entity @s Inventory[{Slot:1b,tag:{Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 1
execute if data entity @s Inventory[{Slot:2b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 2
execute if data entity @s Inventory[{Slot:3b,tag:{Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 3
execute if data entity @s Inventory[{Slot:4b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 4
execute if data entity @s Inventory[{Slot:5b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 5
execute if data entity @s Inventory[{Slot:6b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 6
execute if data entity @s Inventory[{Slot:7b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 7
execute if data entity @s Inventory[{Slot:8b,tag={Enchantments:[{}]}] run function crafting_chaos:modules/enchantment/detect_enchanted_hotbar 8
