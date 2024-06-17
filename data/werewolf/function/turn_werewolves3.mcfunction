# Play wolf howl sounds for every player
execute as @a[team=Werewolf] run playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 4 1 0.125

# Slightly embiggen
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.5
execute as @a[team=Werewolf] run attribute @s minecraft:generic.step_height base set 1.1

# Give werewolf items

# Give permanent werewolf effects
effect give @a[team=Werewolf] minecraft:speed infinite 1 true
effect give @a[team=Werewolf] minecraft:jump_boost infinite 1 true
effect give @a[team=Werewolf] minecraft:haste infinite 8 true
effect give @a[team=Werewolf] minecraft:strength infinite 1 true
effect give @a[team=Werewolf] minecraft:health_boost infinite 4 true
effect give @a[team=Werewolf] minecraft:saturation infinite 0 true
effect give @a[team=Werewolf] minecraft:resistance infinite 0 true
effect give @a[team=Werewolf] minecraft:night_vision infinite 0 true

# Show hunter outlines
effect give @a[team=Hunter] minecraft:glowing infinite 0 true

# Announce change to hunters
title @a[team=Hunter] times 20 120 20
title @a[team=Hunter] subtitle {"text":"Beware the werewolf..."}
title @a[team=Hunter] title {"text":"Dusk","color":"red"}