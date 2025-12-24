# Replace crafted item with comparator
item replace entity @s weapon.mainhand with minecraft:comparator[display={Name:'{"text":"Randomized!","color":"gold","italic":false}'}]
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
particle minecraft:enchant ~ ~1 ~ 0.2 0.2 0.2 1 20
