# Recipe Module Load
# Initialize recipe randomization system

# Initialize recipe categories and mappings
data merge storage crafting_chaos:recipe {
    categories: {
        tools: [
            "minecraft:wooden_pickaxe", "minecraft:stone_pickaxe", "minecraft:iron_pickaxe", "minecraft:golden_pickaxe", "minecraft:diamond_pickaxe", "minecraft:netherite_pickaxe",
            "minecraft:wooden_axe", "minecraft:stone_axe", "minecraft:iron_axe", "minecraft:golden_axe", "minecraft:diamond_axe", "minecraft:netherite_axe",
            "minecraft:wooden_shovel", "minecraft:stone_shovel", "minecraft:iron_shovel", "minecraft:golden_shovel", "minecraft:diamond_shovel", "minecraft:netherite_shovel",
            "minecraft:wooden_hoe", "minecraft:stone_hoe", "minecraft:iron_hoe", "minecraft:golden_hoe", "minecraft:diamond_hoe", "minecraft:netherite_hoe"
        ],
        weapons: [
            "minecraft:wooden_sword", "minecraft:stone_sword", "minecraft:iron_sword", "minecraft:golden_sword", "minecraft:diamond_sword", "minecraft:netherite_sword",
            "minecraft:bow", "minecraft:crossbow", "minecraft:trident", "minecraft:arrow"
        ],
        armor: [
            "minecraft:leather_helmet", "minecraft:leather_chestplate", "minecraft:leather_leggings", "minecraft:leather_boots",
            "minecraft:iron_helmet", "minecraft:iron_chestplate", "minecraft:iron_leggings", "minecraft:iron_boots",
            "minecraft:golden_helmet", "minecraft:golden_chestplate", "minecraft:golden_leggings", "minecraft:golden_boots",
            "minecraft:diamond_helmet", "minecraft:diamond_chestplate", "minecraft:diamond_leggings", "minecraft:diamond_boots",
            "minecraft:netherite_helmet", "minecraft:netherite_chestplate", "minecraft:netherite_leggings", "minecraft:netherite_boots"
        ],
        blocks: [
            "minecraft:oak_planks", "minecraft:stone", "minecraft:brick", "minecraft:glass", "minecraft:glowstone",
            "minecraft:crafting_table", "minecraft:furnace", "minecraft:chest", "minecraft:bookshelf", "minecraft:bedrock"
        ],
        food: [
            "minecraft:bread", "minecraft:apple", "minecraft:carrot", "minecraft:potato", "minecraft:beef",
            "minecraft:porkchop", "minecraft:chicken", "minecraft:cod", "minecraft:salmon", "minecraft:cake"
        ],
        redstone: [
            "minecraft:redstone", "minecraft:repeater", "minecraft:comparator", "minecraft:piston", "minecraft:observer",
            "minecraft:hopper", "minecraft:dropper", "minecraft:dispenser", "minecraft:note_block", "minecraft:daylight_detector"
        ]
    },
    special_items: [
        "minecraft:netherite_ingot", "minecraft:elytra", "minecraft:dragon_egg", "minecraft:totem_of_undying",
        "minecraft:enchanted_golden_apple", "minecraft:heart_of_the_sea", "minecraft:nether_star"
    ]
}

# Register crafting event hooks
scoreboard players set #recipe_registered crafting_chaos.state 1

tellraw @a[tag=crafting_chaos.admin] {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Recipe module loaded","color":"green"}]}
