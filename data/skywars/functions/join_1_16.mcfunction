execute store result score #availablemaps temp if data storage skywars:maps_1_16 free[]

execute if score #availablemaps temp matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"There is no 1.16 map available currently!","color":"red"}]
execute if score #availablemaps temp matches 1.. run function vm:join_game
execute if score #availablemaps temp matches 1.. if score #skywarswait_1_16 temp matches 1.. run scoreboard players operation @s xpcountdown = @r[tag=skywarswait_1_16] xpcountdown
execute if score #availablemaps temp matches 1.. run tag @s add skywarswait_1_16
execute if score #availablemaps temp matches 1.. store result score #skywarsmap temp run data get storage skywars:maps_1_16 free[0].id
execute if score #availablemaps temp matches 1.. if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #skywarsmap temp matches 2 in skywars:1_16/2 run tp @s 0 50 0
