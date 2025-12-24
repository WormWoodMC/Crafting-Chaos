# Preserve special items from randomization
# This function keeps special items like netherite, elytra, etc. unchanged

# Reset the found crafted item flag to prevent randomization
scoreboard players set #found_crafted_item crafting_chaos.state 0

# Clear the current crafting data
data modify storage crafting_chaos:current_crafting set value {}

# Show message that special item was preserved
execute if score #debug_mode crafting_chaos.config matches 1 run tellraw @s {"text":"[Crafting Chaos] ","color":"gold","extra":[{"text":"Special item preserved from randomization","color":"green"}]}
