# Generate random integer between min and max
# Input: $min, $max in crafting_chaos.temp
# Output: $result in crafting_chaos.temp

# Ensure min <= max
execute if score $min crafting_chaos.temp > $max crafting_chaos.temp run function crafting_chaos:lib/rng/swap_values

# Calculate range
scoreboard players operation $range crafting_chaos.temp = $max crafting_chaos.temp
scoreboard players operation $range crafting_chaos.temp -= $min crafting_chaos.temp
scoreboard players operation $range crafting_chaos.temp += 1 crafting_chaos.temp

# Update seed
scoreboard players operation #seed crafting_chaos.seed *= #rng_multiplier crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed += #rng_increment crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed %= #rng_modulus crafting_chaos.seed

# Calculate random value in range
scoreboard players operation $result crafting_chaos.temp = #seed crafting_chaos.seed
scoreboard players operation $result crafting_chaos.temp %= $range crafting_chaos.temp
scoreboard players operation $result crafting_chaos.temp += $min crafting_chaos.temp

# Ensure positive result
execute if score $result crafting_chaos.temp < 0 run scoreboard players operation $result crafting_chaos.temp += #rng_modulus crafting_chaos.seed
