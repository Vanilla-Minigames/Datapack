execute store result score #playing temp if entity @a[tag=bingo]

execute if score #playing temp matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Bingo","color":"yellow"},{"text":"] "},{"text":"There is no map available currently!","color":"red"}]
execute if score #playing temp matches 0 run function vm:join_game
execute if score #playing temp matches 0 if score #bingowait temp matches 1.. run scoreboard players operation @s xpcountdown = @r[tag=bingowait] xpcountdown
execute if score #playing temp matches 0 run tag @s add bingowait
execute if score #playing temp matches 0 run gamemode spectator @s
execute if score #playing temp matches 0 if score #bingodimension value matches 1 in bingo:overworld1 run forceload add 0 0
execute if score #playing temp matches 0 if score #bingodimension value matches 1 in bingo:overworld1 run tp @s 0 200 0
