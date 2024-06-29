# Play wolf dying sounds for every player
execute as @a[team=Werewolf] at @s run playsound minecraft:entity.wolf.death ambient @a ~ ~ ~

# Slightly shrink
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.33
execute as @a[team=Werewolf] run attribute @s minecraft:generic.step_height base set 0.6

schedule function werewolf:turn_humans2 5s append