# Detect enchanted item in mainhand
execute store result score #enchanted_slot crafting_chaos.state run data get entity @s SelectedSlot
scoreboard players set #found_enchanted_item crafting_chaos.state 1
scoreboard players set $item_slot crafting_chaos.temp -106
execute store result score $item_count crafting_chaos.temp run data get entity @s SelectedItem.Count
execute store result string #item_id storage crafting_chaos:temp run data get entity @s SelectedItem.id

# Store item information for randomization
data modify storage crafting_chaos:current_enchanting.item set value {}
data modify storage crafting_chaos:current_enchanting.item.id set from storage crafting_chaos:temp #item_id
data modify storage crafting_chaos:current_enchanting.item.count set value 1
data modify storage crafting_chaos:current_enchanting.item.slot set value -106
data modify storage crafting_chaos:current_enchanting.item.enchantments set from entity @s SelectedItem.tag.Enchantments

# Add temporary tag to prevent re-processing
tag @s add crafting_chaos.enchanting_temp
