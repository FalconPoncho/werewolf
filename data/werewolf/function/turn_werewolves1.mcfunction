# Play wolf pain sounds for every player
execute as @a[team=Werewolf] run playsound minecraft:entity.wolf.whine ambient @a ~ ~ ~

# Slightly embiggen
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.16

# Clear inventory

schedule function werewolf:turn_werewolves2 5s append