# Display current chaos level and options
tellraw @s [{"text":"\n=== ","color":"gold"},{"text":"Chaos Level","color":"yellow","bold":true},{"text":" ===\n","color":"gold"}]

# Show current chaos level
execute if score #chaos_level crafting_chaos.config matches 1 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"1 (Minimal)","color":"green"}]
execute if score #chaos_level crafting_chaos.config matches 2 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"2 (Low)","color":"green"}]
execute if score #chaos_level crafting_chaos.config matches 3 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"3 (Low-Medium)","color":"yellow"}]
execute if score #chaos_level crafting_chaos.config matches 4 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"4 (Medium)","color":"yellow"}]
execute if score #chaos_level crafting_chaos.config matches 5 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"5 (Medium-High)","color":"gold"}]
execute if score #chaos_level crafting_chaos.config matches 6 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"6 (High)","color":"gold"}]
execute if score #chaos_level crafting_chaos.config matches 7 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"7 (Very High)","color":"red"}]
execute if score #chaos_level crafting_chaos.config matches 8 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"8 (Extreme)","color":"red"}]
execute if score #chaos_level crafting_chaos.config matches 9 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"9 (Insane)","color":"dark_red"}]
execute if score #chaos_level crafting_chaos.config matches 10 run tellraw @s [{"text":"Current Chaos Level: ","color":"gray"},{"text":"10 (PURE CHAOS)","color":"dark_red","bold":true}]

tellraw @s [{"text":"\nUse ","color":"gray"},{"text":"/function crafting_chaos:admin/set_chaos_1","color":"aqua"},{"text":" to ","color":"white"},{"text":"set chaos level to 1 (Minimal)\n","color":"green"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/set_chaos_2","color":"aqua"},{"text":" to ","color":"white"},{"text":"set chaos level to 2 (Low)\n","color":"green"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/set_chaos_3","color":"aqua"},{"text":" to ","color":"white"},{"text":"set chaos level to 3 (Low-Medium)\n","color":"yellow"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/set_chaos_4","color":"aqua"},{"text":" to ","color":"white"},{"text":"set chaos level to 4 (Medium)\n","color":"yellow"},{"text":"Use ","color":"gray"},{"text":"/function crafting_chaos:admin/set_chaos_5","color":"aqua"},{"text":" to ","color":"white"},{"text":"set chaos level to 5 (Medium-High)\n","color":"gold"}]
