# Reset game
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
time set 0
setworldspawn 0 50 0
worldborder set 2000
gamemode survival @a
effect clear @a
execute as @a run attribute @s minecraft:generic.scale base set 1.0
execute as @a run attribute @s minecraft:generic.step_height base set 0.6

# Set up hunter compasses
data modify storage position Item set value {Slot:0b,components:{"minecraft:lodestone_tracker":{target:{dimension:"minecraft:overworld",pos:[I;0,0,0]},tracked:0b}},count:1,id:"minecraft:compass"}
setblock 0 0 0 minecraft:chest

# Cancel scheduled functions
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

# Assign or reset variables and teams
team add Werewolf
team add Hunter
team modify Werewolf color gray
team modify Hunter color red

scoreboard objectives add hunter_variant dummy "Hunter Variant"
scoreboard players set @a hunter_variant 0
scoreboard objectives add deaths deathCount "Deaths"

# Instruct players to assign teams, change any settings, and run logic:start
## TODO