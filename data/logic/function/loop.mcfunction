# Update compasses
execute as @a[team=Werewolf] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[0] int 1 run data get entity @s Pos[0]
execute as @a[team=Werewolf] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[1] int 1 run data get entity @s Pos[1]
execute as @a[team=Werewolf] at @s if dimension minecraft:overworld store result storage minecraft:position Item.components.minecraft:lodestone_tracker.target.pos[2] int 1 run data get entity @s Pos[2]

data modify block 0 0 0 Items append from storage minecraft:position Item
execute as @a[nbt={SelectedItem: {id: "minecraft:compass"}}] run item replace entity @s weapon.mainhand from block 0 0 0 container.0

# If a hunter dies, put them in spectator
execute as @a[team=Hunter] if score @s deaths matches 1.. run gamemode spectator

# If all werewolves die, end game
execute unless entity @a[team=Werewolf, scores={deaths=0}] run function logic:win_hunters

# If all hunters die, end game
execute unless entity @a[team=Hunter, scores={deaths=0}] run function logic:win_werewolves

# Repeat
schedule function logic:loop 10t append