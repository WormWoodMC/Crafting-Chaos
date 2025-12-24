# Spawn enchanted book with specific enchantment
# Parameter: %1 - Enchantment ID

# Generate random enchantment level based on chaos level
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp /= 2 crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Spawn the enchanted book
execute store result entity @s Item.tag.StoredEnchantments[0].lvl short 1 run scoreboard players get $result crafting_chaos.temp
summon item ~ ~ ~ {
    Item:{
        id:"minecraft:enchanted_book",
        Count:1b,
        tag:{
            StoredEnchantments:[
                {
                    id:"%1",
                    lvl:1s
                }
            ]
        }
    },
    Tags:["crafting_chaos.loot","crafting_chaos.temp"]
}

# Add pickup prevention
execute as @e[type=item,tag=crafting_chaos.loot,sort=nearest,limit=1] run data merge entity @s {Age:-20,PickupDelay:20}
