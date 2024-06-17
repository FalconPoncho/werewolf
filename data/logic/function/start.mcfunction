gamerule doDaylightCycle true
scoreboard players set @a deaths 0

# Give hunters gear
function hunter:assign_variants
execute as @a[team=Hunter] run function hunter:get_gear

# Heal and saturate all players
effect give @a minecraft:regeneration 2 10 true
effect give @a minecraft:saturation 2 10 true

function logic:day_loop
function logic:loop