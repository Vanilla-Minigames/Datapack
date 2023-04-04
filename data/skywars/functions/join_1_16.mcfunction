function vm:join_game
tag @s add skywarswait
execute if data storage skywars:maps_1_16 free[{id:1}] in skywars:1_16/1 run tp @s 0 50 0
