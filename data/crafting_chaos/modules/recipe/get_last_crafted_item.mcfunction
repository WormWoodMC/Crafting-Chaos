# Get the last crafted item from player's inventory
# This checks the player's mainhand and offhand for recently crafted items

# Reset detection flag
scoreboard players set #found_crafted_item crafting_chaos.state 0

# Check mainhand for crafted item
execute if data entity @s Inventory[{Slot:-106b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_mainhand

# Check offhand for crafted item
execute if data entity @s Inventory[{Slot:-107b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_offhand

# Check hotbar slots for crafted items (0-8)
execute if data entity @s Inventory[{Slot:0b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 0
execute if data entity @s Inventory[{Slot:1b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 1
execute if data entity @s Inventory[{Slot:2b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 2
execute if data entity @s Inventory[{Slot:3b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 3
execute if data entity @s Inventory[{Slot:4b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 4
execute if data entity @s Inventory[{Slot:5b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 5
execute if data entity @s Inventory[{Slot:6b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 6
execute if data entity @s Inventory[{Slot:7b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 7
execute if data entity @s Inventory[{Slot:8b,tag:{crafting_chaos:crafted:1b}}] run function crafting_chaos:modules/recipe/detect_crafted_hotbar 8
