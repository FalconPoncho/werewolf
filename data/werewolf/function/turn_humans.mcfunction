# Play wolf pain sounds for every player
execute as @a[team=Werewolf] run playsound minecraft:entity.wolf.whine ambient @a ~ ~ ~ 0.5

# Give temporary transformation effects
effect give @a[team=Werewolf] minecraft:darkness 15 0 true
effect clear @a[team=Werewolf] minecraft:speed
effect give @a[team=Werewolf] minecraft:speed 15 0 true
effect clear @a[team=Werewolf] minecraft:haste
effect give @a[team=Werewolf] minecraft:haste 15 3 true
effect clear @a[team=Werewolf] minecraft:jump_boost
effect give @a[team=Werewolf] minecraft:jump_boost 15 0 true

# Write text about transformation
title @a[team=Werewolf] times 20 120 20
title @a[team=Werewolf] subtitle {"text":"You feel your lupine powers fading..."}
title @a[team=Werewolf] title {"text":""}

schedule function werewolf:turn_humans1 5s append