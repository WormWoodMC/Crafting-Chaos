# Check if player is actively fishing
execute if entity @s[nbt={HandItems:[{id:"minecraft:fishing_rod",Count:1b}]}] if entity @e[type=minecraft:fishing_bobber,limit=1,sort=nearest,distance=..5,nbt={Owner:[I;1,2,3,4]}] run function crafting_chaos:modules/fishing/hook_cast

# Create fishing marker for tracking
execute if entity @e[type=minecraft:fishing_bobber,limit=1,sort=nearest,distance=..5] run summon marker ~ ~ ~ {Tags:["crafting_chaos.fishing","crafting_chaos.temp"]}
