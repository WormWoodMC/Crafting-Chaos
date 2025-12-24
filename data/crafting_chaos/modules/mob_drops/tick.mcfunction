# Mob Drops Module Tick
# Process mob deaths and apply randomization

# Check for recently dead mobs (limit to 5 per tick for performance)
execute as @e[type=!minecraft:player,tag=crafting_chaos.recent_death,limit=5,sort=nearest] run function crafting_chaos:modules/mob_drops/randomize_drops

# Clean up death markers after processing
execute as @e[type=marker,tag=crafting_chaos.death_marker,age=20] run kill @s

# Remove death tags from mobs after processing
execute as @e[tag=crafting_chaos.recent_death] run tag @s remove crafting_chaos.recent_death
