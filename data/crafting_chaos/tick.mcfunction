# Crafting Chaos Main Tick Function
# Runs every game tick to handle ongoing processes

# Only run if datapack is enabled
execute if score #enabled crafting_chaos.config matches 0 run return

# Process pending randomizations in batches
execute if score #recipe_module crafting_chaos.config matches 1 run function crafting_chaos:modules/recipe/tick
execute if score #enchantment_module crafting_chaos.config matches 1 run function crafting_chaos:modules/enchantment/tick
execute if score #fishing_module crafting_chaos.config matches 1 run function crafting_chaos:modules/fishing/tick
execute if score #mob_drops_module crafting_chaos.config matches 1 run function crafting_chaos:modules/mob_drops/tick

# Cleanup temporary data every 100 ticks
execute if score #tick_counter crafting_chaos.state matches 100 run function crafting_chaos:lib/utils/cleanup

# Update statistics display for admins (every 60 ticks)
execute if score #tick_counter crafting_chaos.state matches 60 if score #debug_mode crafting_chaos.config matches 1 run function crafting_chaos:admin/stats_display

# Increment tick counter
scoreboard players add #tick_counter crafting_chaos.state 1
scoreboard players operation #tick_counter crafting_chaos.state %= #tick_counter crafting_chaos.state 1200

# Schedule next tick
schedule function crafting_chaos:tick 1t
