# Fishing Module Tick
# Process fishing events and apply randomization

# Check for players who are fishing
execute as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] run function crafting_chaos:modules/fishing/check_fishing

# Process caught fish items in world (limit to 10 per tick for performance)
execute as @e[type=item,limit=10,sort=nearest] if data entity @s Item[tag={minecraft:caught_fish:1b}] run function crafting_chaos:modules/fishing/randomize_catch

# Clean up old fishing markers
execute as @e[type=marker,tag=crafting_chaos.fishing,age=100] run kill @s
