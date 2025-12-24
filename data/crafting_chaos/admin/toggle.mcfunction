# Toggle modules on/off
# Usage: /function crafting_chaos:admin/toggle

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Display current toggle status
execute if entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/show_toggle_status
