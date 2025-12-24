# Set chaos level to 10 (PURE CHAOS)
# Usage: /function crafting_chaos:admin/set_chaos_10

# Check if player has admin permissions
execute unless entity @s[tag=crafting_chaos.admin] run function crafting_chaos:admin/no_permission

# Set chaos level
execute if entity @s[tag=crafting_chaos.admin] run scoreboard players set #chaos_level crafting_chaos.config 10

# Show new status
execute if entity @s[tag=crafting_chaos.admin] run tellraw @s [{"text":"Chaos level set to 10 (PURE CHAOS)","color":"dark_red","bold":true}]
