# Play wolf growl sounds for every player
execute as @a[team=Werewolf] run playsound minecraft:entity.wolf.growl ambient @a ~ ~ ~

# Slightly embiggen
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.33

schedule function werewolf:turn_werewolves3 5s append