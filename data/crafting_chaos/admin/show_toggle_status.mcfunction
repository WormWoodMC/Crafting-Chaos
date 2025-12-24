# Display current module toggle status
tellraw @s [{"text":"\n=== ","color":"gold"},{"text":"Module Status","color":"yellow","bold":true},{"text":" ===\n","color":"gold"}]

# Fishing module status
execute if score #fishing_module crafting_chaos.config matches 1 run tellraw @s [{"text":"• Fishing: ","color":"gray"},{"text":"ENABLED","color":"green"}]
execute if score #fishing_module crafting_chaos.config matches 0 run tellraw @s [{"text":"• Fishing: ","color":"gray"},{"text":"DISABLED","color":"red"}]

# Mob drops module status
execute if score #mob_drops_module crafting_chaos.config matches 1 run tellraw @s [{"text":"• Mob Drops: ","color":"gray"},{"text":"ENABLED","color":"green"}]
execute if score #mob_drops_module crafting_chaos.config matches 0 run tellraw @s [{"text":"• Mob Drops: ","color":"gray"},{"text":"DISABLED","color":"red"}]

# Recipe module status
execute if score #recipe_module crafting_chaos.config matches 1 run tellraw @s [{"text":"• Recipe Randomization: ","color":"gray"},{"text":"ENABLED","color":"green"}]
execute if score #recipe_module crafting_chaos.config matches 0 run tellraw @s [{"text":"• Recipe Randomization: ","color":"gray"},{"text":"DISABLED","color":"red"}]

# Enchantment module status
execute if score #enchantment_module crafting_chaos.config matches 1 run tellraw @s [{"text":"• Enchantment Randomization: ","color":"gray"},{"text":"ENABLED","color":"green"}]
execute if score #enchantment_module crafting_chaos.config matches 0 run tellraw @s [{"text":"• Enchantment Randomization: ","color":"gray"},{"text":"DISABLED","color":"red"}]

tellraw @s [{"text":"\nUse ","color":"gray"},{"text":"/function crafting_chaos:admin/toggle_fishing","color":"aqua"},{"text":" to toggle fishing module\n","color":"white"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/toggle_mob_drops","color":"aqua"},{"text":" to toggle mob drops module\n","color":"white"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/toggle_recipe","color":"aqua"},{"text":" to toggle recipe module\n","color":"white"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/toggle_enchantment","color":"aqua"},{"text":" to toggle enchantment module\n","color":"white"}]
