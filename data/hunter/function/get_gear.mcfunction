# Get a compass + hunter gear

# Compass
item replace entity @s hotbar.8 with minecraft:compass

execute if score @s hunter_variant matches 1 run function hunter:get_gear1
execute if score @s hunter_variant matches 2 run function hunter:get_gear2
execute if score @s hunter_variant matches 3 run function hunter:get_gear3