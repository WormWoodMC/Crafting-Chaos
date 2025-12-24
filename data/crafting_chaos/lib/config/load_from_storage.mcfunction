# Load configuration from storage
execute store result score #recipe_module crafting_chaos.config run data get storage crafting_chaos:main config.modules.recipe.enabled 1
execute store result score #enchantment_module crafting_chaos.config run data get storage crafting_chaos:main config.modules.enchantment.enabled 1
execute store result score #fishing_module crafting_chaos.config run data get storage crafting_chaos:main config.modules.fishing.enabled 1
execute store result score #mob_drops_module crafting_chaos.config run data get storage crafting_chaos:main config.modules.mob_drops.enabled 1
execute store result score #chaos_level crafting_chaos.config run data get storage crafting_chaos:main config.chaos_level 1
execute store result score #debug_mode crafting_chaos.config run data get storage crafting_chaos:main config.debug_mode 1

# Load random seed if saved
execute if data storage crafting_chaos:main config.seed run store result score #seed crafting_chaos.seed run data get storage crafting_chaos:main config.seed 1

# Mark configuration as loaded
scoreboard players set #config_loaded crafting_chaos.state 1
