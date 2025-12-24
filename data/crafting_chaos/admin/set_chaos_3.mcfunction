# Set chaos level to 3 (Low-Medium)
# Usage: /function crafting_chaos:admin/set_chaos_3

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Set chaos level
execute if entity @s[tag=crafting_chaos.admin] run scoreboard players set #chaos_level crafting_chaos.config 3

# Show new status
execute if entity @s[tag=crafting_chaos.admin] run tellraw @s [{"text":"Chaos level set to 3 (Low-Medium)","color":"yellow"}]
