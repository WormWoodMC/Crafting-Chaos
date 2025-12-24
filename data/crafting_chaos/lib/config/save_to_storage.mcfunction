# Save configuration to storage
data modify storage crafting_chaos:main config set value {
    modules: {
        recipe: {enabled: 1b},
        enchantment: {enabled: 1b},
        fishing: {enabled: 1b},
        mob_drops: {enabled: 1b}
    },
    chaos_level: 5,
    debug_mode: 0,
    seed: 0
}

# Save module states
execute store result storage crafting_chaos:main config.modules.recipe.enabled byte 1 run scoreboard players get #recipe_module crafting_chaos.config
execute store result storage crafting_chaos:main config.modules.enchantment.enabled byte 1 run scoreboard players get #enchantment_module crafting_chaos.config
execute store result storage crafting_chaos:main config.modules.fishing.enabled byte 1 run scoreboard players get #fishing_module crafting_chaos.config
execute store result storage crafting_chaos:main config.modules.mob_drops.enabled byte 1 run scoreboard players get #mob_drops_module crafting_chaos.config

# Save other settings
execute store result storage crafting_chaos:main config.chaos_level int 1 run scoreboard players get #chaos_level crafting_chaos.config
execute store result storage crafting_chaos:main config.debug_mode byte 1 run scoreboard players get #debug_mode crafting_chaos.config
execute store result storage crafting_chaos:main config.seed int 1 run scoreboard players get #seed crafting_chaos.seed

# Mark as saved
scoreboard players set #config_changed crafting_chaos.state 0
scoreboard players set #config_saved crafting_chaos.state 1
