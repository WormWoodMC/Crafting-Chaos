# Replace the crafted item with the specified item
# Parameter: %1 - Item ID to replace with

# Get the slot where the crafted item is located
execute store result score $slot crafting_chaos.temp run data get storage crafting_chaos:current_crafting.item.slot

# Replace item in the appropriate slot
execute if score $slot crafting_chaos.temp matches -106 run item modify entity @s weapon.mainhand minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches -107 run item modify entity @s weapon.offhand minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}

# For hotbar slots (0-8)
execute if score $slot crafting_chaos.temp matches 0 run item modify entity @s hotbar.0 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 1 run item modify entity @s hotbar.1 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 2 run item modify entity @s hotbar.2 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 3 run item modify entity @s hotbar.3 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 4 run item modify entity @s hotbar.4 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 5 run item modify entity @s hotbar.5 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 6 run item modify entity @s hotbar.6 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 7 run item modify entity @s hotbar.7 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}
execute if score $slot crafting_chaos.temp matches 8 run item modify entity @s hotbar.8 minecraft:set{display:{Name:'{"text":"Randomized!","color":"gold","italic":false}'},id:"%1"}

# Play sound effect
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1

# Show particle effect
particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 1 20
