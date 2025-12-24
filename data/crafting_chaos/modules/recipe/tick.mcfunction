# Recipe Module Tick
# Process crafted items and apply randomization

# Check for recently crafted items (limit to 10 per tick for performance)
execute as @e[type=item,limit=10,sort=nearest] if data entity @s Item[tag={crafting_chaos:crafted:1b}] run function crafting_chaos:modules/recipe/randomize_crafted_item

# Check for players who just crafted something
execute as @a[tag=crafting_chaos.recent_craft] run function crafting_chaos:modules/recipe/check_crafting

# Clean up crafting markers
execute as @e[type=marker,tag=crafting_chaos.crafting,age=60] run kill @s

# Remove crafting tags from items after processing
execute as @e[type=item,tag=crafting_chaos:crafted] run tag @s remove crafting_chaos:crafted
