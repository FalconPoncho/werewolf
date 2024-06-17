# Play human pain sounds for every player
execute as @a[team=Werewolf] run playsound minecraft:entity.armadillo.hurt ambient @a ~ ~ ~ 0.5 0.7

# Slightly shrink
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.16

schedule function werewolf:turn_humans3 5s append