# Admin Configuration Main Function
# Provides commands for server administrators to control Crafting Chaos

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Display admin menu
execute if entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/show_menu
