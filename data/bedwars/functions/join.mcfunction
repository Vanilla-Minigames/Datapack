execute store result score #availablemaps temp if data storage bedwars:maps free[]

execute if score #availablemaps temp matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"There is no map available currently!","color":"red"}]
execute if score #availablemaps temp matches 1.. run function vm:join_game
execute if score #availablemaps temp matches 1.. if score #bedwarswait temp matches 1.. run scoreboard players operation @s xpcountdown = @r[tag=bedwarswait] xpcountdown
execute if score #availablemaps temp matches 1.. run tag @s add bedwarswait
execute if score #availablemaps temp matches 1.. store result score #bedwarsmap temp run data get storage bedwars:maps free[0].id
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 1 in bedwars:1 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 2 in bedwars:2 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 3 in bedwars:3 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 4 in bedwars:4 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 5 in bedwars:5 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 6 in bedwars:6 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 7 in bedwars:7 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 8 in bedwars:8 run tp @s 0 50 0
execute if score #availablemaps temp matches 1.. if score #bedwarsmap temp matches 9 in bedwars:9 run tp @s 0 50 0
