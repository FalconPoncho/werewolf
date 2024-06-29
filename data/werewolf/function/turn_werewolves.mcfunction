# Play human pain sounds for every player
execute as @a[team=Werewolf] at @s run playsound minecraft:entity.goat.screaming.death ambient @a ~ ~ ~

# Give temporary transformation effects
effect give @a[team=Werewolf] minecraft:darkness 15 0 true
effect give @a[team=Werewolf] minecraft:slowness 15 0 true
effect give @a[team=Werewolf] minecraft:mining_fatigue 15 0 true
effect give @a[team=Werewolf] minecraft:regeneration 15 0 true
effect give @a[team=Werewolf] minecraft:resistance 15 0 true

# Write text about transformation
title @a[team=Werewolf] times 20 120 20
title @a[team=Werewolf] subtitle {"text":"Your hairy body grows and contorts itself..."}
title @a[team=Werewolf] title {"text":""}

schedule function werewolf:turn_werewolves1 5s append