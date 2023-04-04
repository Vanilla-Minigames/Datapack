function vm:join_game
tag @s add skywarswait
execute if data storage skywars:maps_1_8 free[{id:1}] in skywars:1_8/1 run tp @s 0 100 0
