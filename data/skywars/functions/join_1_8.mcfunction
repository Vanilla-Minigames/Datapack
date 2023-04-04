execute store result score #availablemaps temp if data storage skywars:maps_1_8 free[]

execute if score #availablemaps temp matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"There is no 1.8 map available currently!","color":"red"}]
execute if score #availablemaps temp matches 1.. run function vm:join_game
execute if score #availablemaps temp matches 1.. run tag @s add skywarswait
execute if score #availablemaps temp matches 1.. if data storage skywars:maps_1_8 free[{id:1}] in skywars:1_8/1 run tp @s 0 50 0
