# Spawn item at entity location
# Parameter: %1 - Item ID to spawn

# Remove the original caught fish
kill @s

# Spawn the new item
summon item ~ ~ ~ {Item:{id:"%1",Count:1b},Tags:["crafting_chaos.loot","crafting_chaos.temp"]}

# Add pickup prevention for 1 second to avoid instant pickup
execute as @e[type=item,tag=crafting_chaos.loot,sort=nearest,limit=1] run data merge entity @s {Age:-20,PickupDelay:20}
