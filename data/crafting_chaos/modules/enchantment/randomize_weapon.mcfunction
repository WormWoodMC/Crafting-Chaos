# Randomize enchantments for weapons
# Selects from weapon enchantment pool based on chaos level

# Generate random number of enchantments (1-3 based on chaos level)
scoreboard players set $min crafting_chaos.temp 1
scoreboard players operation $max crafting_chaos.temp = #chaos_level crafting_chaos.config
scoreboard players operation $max crafting_chaos.temp /= 4 crafting_chaos.temp
scoreboard players operation $max crafting_chaos.temp += 1 crafting_chaos.temp
function crafting_chaos:lib/rng/next_int

# Store number of enchantments to apply
scoreboard players operation $enchant_count crafting_chaos.temp = $result crafting_chaos.temp

# Clear existing enchantments
execute store result score $slot crafting_chaos.temp run data get storage crafting_chaos:current_enchanting.item.slot
execute if score $slot crafting_chaos.temp matches -106 run item modify entity @s weapon.mainhand minecraft:clear_enchantments
execute if score $slot crafting_chaos.temp matches -107 run item modify entity @s weapon.offhand minecraft:clear_enchantments

# Apply random enchantments
scoreboard players set $current_enchant crafting_chaos.temp 0
function crafting_chaos:modules/enchantment/apply_weapon_enchant

# Play sound effect
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1

# Show particle effect
particle minecraft:enchant ~ ~1 ~ 0.3 0.3 0.3 1 30
