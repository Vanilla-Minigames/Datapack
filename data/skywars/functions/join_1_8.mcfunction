execute store result score #availablemaps temp if data storage skywars:maps_1_8 free[]

execute if score #availablemaps temp matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"There is no 1.8 map available currently!","color":"red"}]
execute if score #availablemaps temp matches 1.. run function vm:join_game
execute if score #availablemaps temp matches 1.. if score #skywarswait_1_8 temp matches 1.. run scoreboard players operation @s xpcountdown = @r[tag=skywarswait_1_8] xpcountdown
execute if score #availablemaps temp matches 1.. run tag @s add skywarswait_1_8
execute if score #availablemaps temp matches 1.. run scoreboard players set #found temp 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:1}] in skywars:1_8/1 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:1}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:2}] in skywars:1_8/2 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:2}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:3}] in skywars:1_8/3 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:3}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:4}] in skywars:1_8/4 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:4}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:5}] in skywars:1_8/5 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:5}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:6}] in skywars:1_8/6 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:6}] run scoreboard players set #found temp 1
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:7}] in skywars:1_8/7 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #found temp matches 0 if data storage skywars:maps_1_8 free[{id:7}] run scoreboard players set #found temp 1
