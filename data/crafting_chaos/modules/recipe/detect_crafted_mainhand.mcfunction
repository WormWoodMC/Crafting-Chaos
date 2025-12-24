# Detect crafted item in mainhand
execute store result score #crafted_slot crafting_chaos.state run data get entity @s SelectedSlot
scoreboard players set #found_crafted_item crafting_chaos.state 1
scoreboard players set $item_slot crafting_chaos.temp -106
execute store result score $item_count crafting_chaos.temp run data get entity @s Inventory[{Slot:-106b}].Count
execute store result string #item_id storage crafting_chaos:temp run data get entity @s Inventory[{Slot:-106b}].id

# Store item information for randomization
data modify storage crafting_chaos:current_crafting.item set value {}
data modify storage crafting_chaos:current_crafting.item.id set from storage crafting_chaos:temp #item_id
data modify storage crafting_chaos:current_crafting.item.count set value 1
data modify storage crafting_chaos:current_crafting.item.slot set value -106

# Remove the crafted tag to prevent re-processing
item modify entity @s weapon.mainhand minecraft:remove_tag{tag:"crafting_chaos:crafted"}
