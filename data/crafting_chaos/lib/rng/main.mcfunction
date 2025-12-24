# Enhanced RNG System
# Provides multiple types of random number generation

# Constants for LCG (Linear Congruential Generator)
scoreboard players set #rng_multiplier crafting_chaos.seed 1664525
scoreboard players set #rng_increment crafting_chaos.seed 1013904223
scoreboard players set #rng_modulus crafting_chaos.seed 2147483647

# Generate random integer between min and max (inclusive)
# Usage: Set $min and $max in crafting_chaos.temp, then call this function
# Result will be in $result
function crafting_chaos:lib/rng/next_int

# Generate random float between 0.0 and 1.0
# Result stored in #random_float crafting_chaos.temp (scaled by 1000)
function crafting_chaos:lib/rng/next_float

# Generate random boolean (true/false)
# Result: 1 for true, 0 for false in $result
function crafting_chaos:lib/rng/next_boolean

# Generate random choice from weighted options
# Input: Array of weights in storage crafting_chaos:rng.weights
# Output: Index of chosen option in $result
function crafting_chaos:lib/rng/weighted_choice

# Shuffle array indices
# Input: Array size in $array_size
# Output: Shuffled indices in storage crafting_chaos:rng.shuffled
function crafting_chaos:lib/rng/shuffle

# Update seed for next random number
scoreboard players operation #seed crafting_chaos.seed *= #rng_multiplier crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed += #rng_increment crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed %= #rng_modulus crafting_chaos.seed

# Ensure seed stays positive
execute if score #seed crafting_chaos.seed < 0 run scoreboard players operation #seed crafting_chaos.seed += #rng_modulus crafting_chaos.seed
