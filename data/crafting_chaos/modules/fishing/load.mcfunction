# Fishing Module Load
# Initialize fishing loot randomization

# Initialize fishing loot tables
data merge storage crafting_chaos:fishing {
    original_tables: {
        "minecraft:gameplay/fishing": "minecraft:gameplay/fishing",
        "minecraft:gameplay/fishing/junk": "minecraft:gameplay/fishing/junk",
        "minecraft:gameplay/fishing/treasure": "minecraft:gameplay/fishing/treasure",
        "minecraft:gameplay/fishing/fish": "minecraft:gameplay/fishing/fish"
    },
    chaos_tables: {
        common: [
            {type: "minecraft:cod", weight: 20},
            {type: "minecraft:salmon", weight: 15},
            {type: "minecraft:tropical_fish", weight: 10},
            {type: "minecraft:pufferfish", weight: 5},
            {type: "minecraft:bone", weight: 8},
            {type: "minecraft:stick", weight: 10},
            {type: "minecraft:string", weight: 8},
            {type: "minecraft:leather", weight: 5}
        ],
        uncommon: [
            {type: "minecraft:ink_sac", weight: 10},
            {type: "minecraft:nautilus_shell", weight: 8},
            {type: "minecraft:name_tag", weight: 5},
            {type: "minecraft:saddle", weight: 5},
            {type: "minecraft:bow", weight: 3},
            {type: "minecraft:fishing_rod", weight: 3},
            {type: "minecraft:book", weight: 4}
        ],
        rare: [
            {type: "minecraft:enchanted_book", weight: 3},
            {type: "minecraft:clock", weight: 2},
            {type: "minecraft:compass", weight: 2},
            {type: "minecraft:golden_apple", weight: 1},
            {type: "minecraft:heart_of_the_sea", weight: 1}
        ]
    },
    luck_bonus: {
        treasure_chance: 0.05,
        junk_reduction: 0.1
    }
}

# Register fishing event hooks
scoreboard players set #fishing_registered crafting_chaos.state 1

tellraw @a[tag=crafting_chaos.admin] {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Fishing module loaded","color":"green"}]}
