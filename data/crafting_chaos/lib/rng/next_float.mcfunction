# Generate random float between 0.0 and 1.0
# Result stored in #random_float (scaled by 10000 for precision)

# Update seed
scoreboard players operation #seed crafting_chaos.seed *= #rng_multiplier crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed += #rng_increment crafting_chaos.seed
scoreboard players operation #seed crafting_chaos.seed %= #rng_modulus crafting_chaos.seed

# Convert to float (0-10000 represents 0.0-1.0)
scoreboard players operation #random_float crafting_chaos.temp = #seed crafting_chaos.seed
scoreboard players operation #random_float crafting_chaos.temp %= #float_scale crafting_chaos.temp
scoreboard players operation #random_float crafting_chaos.temp += #float_scale crafting_chaos.temp
scoreboard players operation #random_float crafting_chaos.temp %= #float_scale crafting_chaos.temp

# Set scale constant
scoreboard players set #float_scale crafting_chaos.temp 10000
