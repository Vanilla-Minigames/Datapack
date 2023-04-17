execute store result score #availablemaps temp if data storage cores:maps free[]

execute if score #availablemaps temp matches 0 run tellraw @s [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"text":"There is no map available currently!","color":"red"}]
execute if score #availablemaps temp matches 1.. run function vm:join_game
execute if score #availablemaps temp matches 1.. if score #coreswait temp matches 1.. run scoreboard players operation @s xpcountdown = @r[tag=coreswait] xpcountdown
execute if score #availablemaps temp matches 1.. run tag @s add coreswait
execute if score #availablemaps temp matches 1.. store result score #coresmap temp run data get storage cores:maps free[0].id
execute if score #availablemaps temp matches 1.. if score #coresmap temp matches 1 in cores:1 run tp @s 0 50 0
