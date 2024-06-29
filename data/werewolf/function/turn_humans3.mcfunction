# Play human pain sounds for every player
execute as @a[team=Werewolf] at @s run playsound minecraft:entity.player.breath ambient @a ~ ~ ~ 0.25 1.2

# Slightly shrink
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.0

# Remove werewolf effects
effect clear @a[team=Werewolf] minecraft:speed
effect clear @a[team=Werewolf] minecraft:jump_boost
effect clear @a[team=Werewolf] minecraft:haste
effect clear @a[team=Werewolf] minecraft:strength
effect clear @a[team=Werewolf] minecraft:health_boost
effect clear @a[team=Werewolf] minecraft:saturation
effect clear @a[team=Werewolf] minecraft:resistance
effect clear @a[team=Werewolf] minecraft:night_vision

# Announce change to hunters
title @a[team=Hunter] times 20 120 20
title @a[team=Hunter] subtitle {"text":"The hunt is on!"}
title @a[team=Hunter] title {"text":"Dawn","color":"gold"}