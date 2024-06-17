schedule clear logic:loop
schedule clear logic:day_loop
schedule clear werewolf:turn_werewolves
schedule clear werewolf:turn_werewolves1
schedule clear werewolf:turn_werewolves2
schedule clear werewolf:turn_werewolves3
schedule clear werewolf:turn_humans
schedule clear werewolf:turn_humans1
schedule clear werewolf:turn_humans2
schedule clear werewolf:turn_humans3

playsound minecraft:ui.toast.challenge_complete ambient @a ~ ~ ~ 0.5 1 1
title @a times 20 120 20
title @a title ["",{"text":"Hunters","color":"red"},{"text":" Win"}]