# Mob Drops Module Load
# Initialize mob drop randomization

# Initialize mob drop tables
data merge storage crafting_chaos:mob_drops {
    original_drops: {},
    chaos_drops: {
        hostile: [
            {type: "minecraft:arrow", weight: 20, count: [1, 3]},
            {type: "minecraft:bone", weight: 15, count: [1, 2]},
            {type: "minecraft:gunpowder", weight: 10, count: [1, 2]},
            {type: "minecraft:string", weight: 12, count: [1, 3]},
            {type: "minecraft:spider_eye", weight: 8, count: [1, 1]},
            {type: "minecraft:slime_ball", weight: 10, count: [1, 2]},
            {type: "minecraft:ender_pearl", weight: 5, count: [1, 1]},
            {type: "minecraft:blaze_rod", weight: 5, count: [1, 1]},
            {type: "minecraft:ghast_tear", weight: 3, count: [1, 1]},
            {type: "minecraft:magma_cream", weight: 8, count: [1, 1]}
        ],
        passive: [
            {type: "minecraft:feather", weight: 15, count: [1, 3]},
            {type: "minecraft:leather", weight: 12, count: [1, 2]},
            {type: "minecraft:wool", weight: 10, count: [1, 1]},
            {type: "minecraft:porkchop", weight: 8, count: [1, 2]},
            {type: "minecraft:beef", weight: 8, count: [1, 2]},
            {type: "minecraft:chicken", weight: 8, count: [1, 2]},
            {type: "minecraft:mutton", weight: 8, count: [1, 2]},
            {type: "minecraft:rabbit", weight: 5, count: [1, 1]},
            {type: "minecraft:egg", weight: 10, count: [1, 1]},
            {type: "minecraft:milk_bucket", weight: 3, count: [1, 1]}
        ],
        rare: [
            {type: "minecraft:gold_nugget", weight: 10, count: [1, 4]},
            {type: "minecraft:iron_nugget", weight: 10, count: [1, 4]},
            {type: "minecraft:coal", weight: 8, count: [1, 3]},
            {type: "minecraft:copper_ingot", weight: 5, count: [1, 2]},
            {type: "minecraft:experience_bottle", weight: 5, count: [1, 2]},
            {type: "minecraft:name_tag", weight: 2, count: [1, 1]},
            {type: "minecraft:saddle", weight: 2, count: [1, 1]}
        ]
    },
    modifiers: {
        looting_bonus: 0.2,
        burning_bonus: 0.5
    }
}

# Register mob death event hooks
scoreboard players set #mob_drops_registered crafting_chaos.state 1

tellraw @a[tag=crafting_chaos.admin] {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Mob drops module loaded","color":"green"}]}
