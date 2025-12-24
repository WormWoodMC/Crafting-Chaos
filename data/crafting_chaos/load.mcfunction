# Crafting Chaos Main Load Function
# Initializes the datapack and sets up core systems

# Initialize scoreboards
scoreboard objectives add crafting_chaos.config dummy "Crafting Chaos Configuration"
scoreboard objectives add crafting_chaos.state dummy "Crafting Chaos Runtime State"
scoreboard objectives add crafting_chaos.temp dummy "Crafting Chaos Temporary Values"
scoreboard objectives add crafting_chaos.seed dummy "Crafting Chaos Random Seeds"

# Initialize configuration defaults
scoreboard players set #enabled crafting_chaos.config 1
scoreboard players set #recipe_module crafting_chaos.config 1
scoreboard players set #enchantment_module crafting_chaos.config 1
scoreboard players set #fishing_module crafting_chaos.config 1
scoreboard players set #mob_drops_module crafting_chaos.config 1
scoreboard players set #chaos_level crafting_chaos.config 5
scoreboard players set #debug_mode crafting_chaos.config 0

# Initialize storage
data merge storage crafting_chaos:main {
    version: "1.0.0",
    initialized: true,
    modules: {
        recipe: {enabled: 1b, processed_items: []},
        enchantment: {enabled: 1b, custom_enchants: []},
        fishing: {enabled: 1b, loot_tables: []},
        mob_drops: {enabled: 1b, modified_mobs: []}
    },
    statistics: {
        items_randomized: 0,
        enchantments_applied: 0,
        loot_modified: 0
    }
}

# Initialize random seed if not set
execute unless score #seed crafting_chaos.seed matches 1.. run function crafting_chaos:lib/utils/generate_seed

# Load enabled modules
execute if score #recipe_module crafting_chaos.config matches 1 run function crafting_chaos:modules/recipe/load
execute if score #enchantment_module crafting_chaos.config matches 1 run function crafting_chaos:modules/enchantment/load
execute if score #fishing_module crafting_chaos.config matches 1 run function crafting_chaos:modules/fishing/load
execute if score #mob_drops_module crafting_chaos.config matches 1 run function crafting_chaos:modules/mob_drops/load

# Display initialization message
execute if score #debug_mode crafting_chaos.config matches 1 run tellraw @a[tag=crafting_chaos.admin] {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Datapack loaded successfully!","color":"green"}]}

# Set up tick function
schedule function crafting_chaos:tick 1t
