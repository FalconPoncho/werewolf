# Play human pain sounds for every player
execute as @a[team=Werewolf] at @s run playsound minecraft:entity.armadillo.hurt ambient @a ~ ~ ~ 0.5 0.7

# Slightly shrink
execute as @a[team=Werewolf] run attribute @s minecraft:generic.scale base set 1.16

# Allow inventory to contain items again
schedule clear logic:clear_loop

schedule function werewolf:turn_humans3 5s append