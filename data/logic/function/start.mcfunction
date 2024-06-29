gamerule doDaylightCycle true
scoreboard players set @a deaths 0

# Give hunters gear
function hunter:assign_variants

# Heal and saturate all players
effect give @a minecraft:regeneration 2 10 true
effect give @a minecraft:saturation 2 10 true

# Shrink world border over the course of 8 days
worldborder damage buffer 0.0
worldborder set 200 9600

function logic:day_loop
function logic:loop