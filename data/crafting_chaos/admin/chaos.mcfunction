# Set chaos level (1-10)
# Usage: /function crafting_chaos:admin/chaos

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Display current chaos level and options
execute if entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/show_chaos_level
