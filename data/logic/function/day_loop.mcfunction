# Reset time daily so that there is a full moon every night
time set 0

schedule function werewolf:turn_werewolves 0.55d append
schedule function werewolf:turn_humans 0.95d append
schedule function logic:day_loop 1d append

# DEBUG TIMES
# schedule function werewolf:turn_werewolves 0.05d append
# schedule function werewolf:turn_humans 0.1d append
# schedule function logic:day_loop 0.12d append