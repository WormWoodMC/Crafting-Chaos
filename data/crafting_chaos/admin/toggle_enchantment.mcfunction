# Toggle enchantment module on/off
# Usage: /function crafting_chaos:admin/toggle_enchantment

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Store current value in temp
execute if entity @s[tag=crafting_chaos.admin] run scoreboard players operation $temp crafting_chaos.temp = #enchantment_module crafting_chaos.config

# Toggle based on stored temp value
execute if entity @s[tag=crafting_chaos.admin] if score $temp crafting_chaos.temp matches 0 run scoreboard players set #enchantment_module crafting_chaos.config 1
execute if entity @s[tag=crafting_chaos.admin] if score $temp crafting_chaos.temp matches 1 run scoreboard players set #enchantment_module crafting_chaos.config 0

# Show new status
execute if entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/show_toggle_status
