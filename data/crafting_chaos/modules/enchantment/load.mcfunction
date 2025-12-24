# Enchantment Module Load
# Initialize enchantment randomization system

# Initialize enchantment pools
data merge storage crafting_chaos:enchantment {
    pools: {
        weapon: [
            {id: "minecraft:sharpness", max_level: 5},
            {id: "minecraft:smite", max_level: 5},
            {id: "minecraft:bane_of_arthropods", max_level: 5},
            {id: "minecraft:knockback", max_level: 2},
            {id: "minecraft:fire_aspect", max_level: 2},
            {id: "minecraft:looting", max_level: 3}
        ],
        tool: [
            {id: "minecraft:efficiency", max_level: 5},
            {id: "minecraft:silk_touch", max_level: 1},
            {id: "minecraft:unbreaking", max_level: 3},
            {id: "minecraft:fortune", max_level: 3}
        ],
        armor: [
            {id: "minecraft:protection", max_level: 4},
            {id: "minecraft:fire_protection", max_level: 4},
            {id: "minecraft:blast_protection", max_level: 4},
            {id: "minecraft:projectile_protection", max_level: 4},
            {id: "minecraft:feather_falling", max_level: 4},
            {id: "minecraft:thorns", max_level: 3},
            {id: "minecraft:depth_strider", max_level: 3},
            {id: "minecraft:frost_walker", max_level: 2},
            {id: "minecraft:binding_curse", max_level: 1},
            {id: "minecraft:vanishing_curse", max_level: 1}
        ],
        bow: [
            {id: "minecraft:power", max_level: 5},
            {id: "minecraft:punch", max_level: 2},
            {id: "minecraft:flame", max_level: 1},
            {id: "minecraft:infinity", max_level: 1}
        ],
        special: [
            {id: "minecraft:mending", max_level: 1},
            {id: "minecraft:channeling", max_level: 1},
            {id: "minecraft:impaling", max_level: 5},
            {id: "minecraft:loyalty", max_level: 3},
            {id: "minecraft:riptide", max_level: 3}
        ]
    },
    conflicts: {
        "minecraft:sharpness": ["minecraft:smite", "minecraft:bane_of_arthropods"],
        "minecraft:smite": ["minecraft:sharpness", "minecraft:bane_of_arthropods"],
        "minecraft:bane_of_arthropods": ["minecraft:sharpness", "minecraft:smite"],
        "minecraft:silk_touch": ["minecraft:fortune"],
        "minecraft:fortune": ["minecraft:silk_touch"],
        "minecraft:infinity": ["minecraft:mending"]
    }
}

# Register enchantment event hooks
scoreboard players set #enchantment_registered crafting_chaos.state 1

tellraw @a[tag=crafting_chaos.admin] {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Enchantment module loaded","color":"green"}]}
