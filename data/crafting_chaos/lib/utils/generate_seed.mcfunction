# RNG Utility Functions
# Provides random number generation with seed control

# Generate initial seed based on world time
execute store result score #seed crafting_chaos.seed run time query gametime
execute store result score #seed_offset crafting_chaos.seed run time query daytime
scoreboard players operation #seed crafting_chaos.seed += #seed_offset crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed *= #seed crafting_chaos.seed
scoreboard players set #seed crafting_chaos.seed 1

# Generate random number between min and max (inclusive)
# Input: $min, $max in crafting_chaos.temp
# Output: $result in crafting_chaos.temp
execute if score $min crafting_chaos.temp > $max crafting_chaos.temp run function crafting_chaos:lib/utils/swap_min_max

# Linear congruential generator for pseudo-randomness
scoreboard players operation #seed crafting_chaos.seed *= #multiplier crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed += #increment crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed %= #modulus crafting_chaos.seed

# Calculate result in range
scoreboard players operation $range crafting_chaos.temp = $max crafting_chaos.temp
scoreboard players operation $range crafting_chaos.temp -= $min crafting_chaos.temp
scoreboard players operation $range crafting_chaos.temp += 1 crafting_chaos.temp

scoreboard players operation $result crafting_chaos.temp = #seed crafting_chaos.seed
scoreboard players operation $result crafting_chaos.temp %= $range crafting_chaos.temp
scoreboard players operation $result crafting_chaos.temp += $min crafting_chaos.temp

# Ensure result is positive
execute if score $result crafting_chaos.temp < 0 run scoreboard players operation $result crafting_chaos.temp *= #-1 crafting_chaos.temp

# Initialize RNG constants
scoreboard players set #multiplier crafting_chaos.seed 1664525
scoreboard players set #increment crafting_chaos.seed 1013904223
scoreboard players set #modulus crafting_chaos.seed 2147483647
scoreboard players set #-1 crafting_chaos.temp -1
