# Spawn dropped item with specified count
# Parameters: %1 - Item ID

# Summon the item entity with the calculated count
execute if score $drop_count crafting_chaos.temp matches 1 run summon item ~ ~ ~ {Item:{id:"%1",Count:1b},Tags:["crafting_chaos.mob_drop","crafting_chaos.temp"]}
execute if score $drop_count crafting_chaos.temp matches 2 run summon item ~ ~ ~ {Item:{id:"%1",Count:2b},Tags:["crafting_chaos.mob_drop","crafting_chaos.temp"]}
execute if score $drop_count crafting_chaos.temp matches 3 run summon item ~ ~ ~ {Item:{id:"%1",Count:3b},Tags:["crafting_chaos.mob_drop","crafting_chaos.temp"]}
execute if score $drop_count crafting_chaos.temp matches 4 run summon item ~ ~ ~ {Item:{id:"%1",Count:4b},Tags:["crafting_chaos.mob_drop","crafting_chaos.temp"]}
execute if score $drop_count crafting_chaos.temp matches 5.. run summon item ~ ~ ~ {Item:{id:"%1",Count:5b},Tags:["crafting_chaos.mob_drop","crafting_chaos.temp"]}

# Apply slight random velocity to the dropped item
execute as @e[type=item,tag=crafting_chaos.mob_drop,sort=nearest,limit=1] run data merge entity @s {Motion:[0.0d,0.2d,0.0d]}

# Set pickup delay to prevent instant pickup
execute as @e[type=item,tag=crafting_chaos.mob_drop,sort=nearest,limit=1] run data merge entity @s {PickupDelay:10}
