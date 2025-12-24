# Configuration Management
# Handles loading and saving of configuration settings

# Load configuration from storage
execute if data storage crafting_chaos:main config run function crafting_chaos:lib/config/load_from_storage

# Save current configuration to storage
execute if score #config_changed crafting_chaos.state matches 1 run function crafting_chaos:lib/config/save_to_storage

# Load from storage if available
execute if data storage crafting_chaos:main config run function crafting_chaos:lib/config/load_from_storage
