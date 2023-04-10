execute store result score #bedwarsmap temp run data get storage bedwars:maps free[0].id
execute store result score #bedwarsteams temp run data get storage bedwars:maps free[0].teams
data remove storage bedwars:maps free[0]

tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsblue
execute if score #bedwarsteams temp matches 3.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsyellow
execute if score #bedwarsteams temp matches 4.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsgreen
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsblue
execute if score #bedwarsteams temp matches 3.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsyellow
execute if score #bedwarsteams temp matches 4.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsgreen
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsblue
execute if score #bedwarsteams temp matches 3.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsyellow
execute if score #bedwarsteams temp matches 4.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsgreen
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsblue
execute if score #bedwarsteams temp matches 3.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsyellow
execute if score #bedwarsteams temp matches 4.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsgreen
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred
tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsblue
execute if score #bedwarsteams temp matches 3.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsyellow
execute if score #bedwarsteams temp matches 4.. run tag @r[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsgreen
tag @a[tag=bedwarswait,tag=!bedwarsred,tag=!bedwarsblue,tag=!bedwarsyellow,tag=!bedwarsgreen] add bedwarsred

team join Red @a[tag=bedwarswait,tag=bedwarsred]
team join Blue @a[tag=bedwarswait,tag=bedwarsblue]
team join Yellow @a[tag=bedwarswait,tag=bedwarsyellow]
team join Green @a[tag=bedwarswait,tag=bedwarsgreen]

execute if score #bedwarsmap temp matches 1 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Willithepig","color":"gold"}]
execute if score #bedwarsmap temp matches 1 in bedwars:1 if loaded 0 0 0 run function bedwars:reset/1
execute if score #bedwarsmap temp matches 1 in bedwars:1 unless loaded 0 0 0 run schedule function bedwars:reset/1 2s
execute if score #bedwarsmap temp matches 1 in bedwars:1 run tp @a[tag=bedwarswait,tag=bedwarsred] -27 4 0
execute if score #bedwarsmap temp matches 1 in bedwars:1 run tp @a[tag=bedwarswait,tag=bedwarsblue] 0 4 -27
execute if score #bedwarsmap temp matches 1 in bedwars:1 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 27 4 0
execute if score #bedwarsmap temp matches 1 in bedwars:1 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 0 4 27
execute if score #bedwarsmap temp matches 1 in bedwars:1 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -27 4 0
execute if score #bedwarsmap temp matches 1 in bedwars:1 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 0 4 -27
execute if score #bedwarsmap temp matches 1 in bedwars:1 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 27 4 0
execute if score #bedwarsmap temp matches 1 in bedwars:1 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 0 4 27

execute if score #bedwarsmap temp matches 2 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Nightshade_09 & LULL1","color":"gold"}]
execute if score #bedwarsmap temp matches 2 in bedwars:2 if loaded 0 0 0 run function bedwars:reset/2
execute if score #bedwarsmap temp matches 2 in bedwars:2 unless loaded 0 0 0 run schedule function bedwars:reset/2 2s
execute if score #bedwarsmap temp matches 2 in bedwars:2 run tp @a[tag=bedwarswait,tag=bedwarsred] -48 8 0
execute if score #bedwarsmap temp matches 2 in bedwars:2 run tp @a[tag=bedwarswait,tag=bedwarsblue] 0 8 -48
execute if score #bedwarsmap temp matches 2 in bedwars:2 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 48 8 0
execute if score #bedwarsmap temp matches 2 in bedwars:2 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 0 8 48
execute if score #bedwarsmap temp matches 2 in bedwars:2 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -48 8 0
execute if score #bedwarsmap temp matches 2 in bedwars:2 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 0 8 -48
execute if score #bedwarsmap temp matches 2 in bedwars:2 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 48 8 0
execute if score #bedwarsmap temp matches 2 in bedwars:2 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 0 8 48

execute if score #bedwarsmap temp matches 3..4 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"DomBuilder","color":"gold"}]
execute if score #bedwarsmap temp matches 3 in bedwars:3 if loaded 0 0 0 run function bedwars:reset/3
execute if score #bedwarsmap temp matches 3 in bedwars:3 unless loaded 0 0 0 run schedule function bedwars:reset/3 2s
execute if score #bedwarsmap temp matches 3 in bedwars:3 run tp @a[tag=bedwarswait,tag=bedwarsred] -31 26 0.0
execute if score #bedwarsmap temp matches 3 in bedwars:3 run tp @a[tag=bedwarswait,tag=bedwarsblue] 31 26 0.0
execute if score #bedwarsmap temp matches 3 in bedwars:3 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -31 26 0
execute if score #bedwarsmap temp matches 3 in bedwars:3 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 31 26 0

execute if score #bedwarsmap temp matches 4 in bedwars:4 if loaded 0 0 0 run function bedwars:reset/4
execute if score #bedwarsmap temp matches 4 in bedwars:4 unless loaded 0 0 0 run schedule function bedwars:reset/4 2s
execute if score #bedwarsmap temp matches 4 in bedwars:4 run tp @a[tag=bedwarswait,tag=bedwarsred] 0 13 29
execute if score #bedwarsmap temp matches 4 in bedwars:4 run tp @a[tag=bedwarswait,tag=bedwarsblue] -29 13 0
execute if score #bedwarsmap temp matches 4 in bedwars:4 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 0 13 -29
execute if score #bedwarsmap temp matches 4 in bedwars:4 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 29 13 0
execute if score #bedwarsmap temp matches 4 in bedwars:4 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] 0 13 29
execute if score #bedwarsmap temp matches 4 in bedwars:4 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] -29 13 0
execute if score #bedwarsmap temp matches 4 in bedwars:4 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 0 13 -29
execute if score #bedwarsmap temp matches 4 in bedwars:4 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 29 13 0

execute if score #bedwarsmap temp matches 5..6 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Koljav","color":"gold"}]
execute if score #bedwarsmap temp matches 5 in bedwars:5 if loaded 0 0 0 run function bedwars:reset/5
execute if score #bedwarsmap temp matches 5 in bedwars:5 unless loaded 0 0 0 run schedule function bedwars:reset/5 2s
execute if score #bedwarsmap temp matches 5 in bedwars:5 run tp @a[tag=bedwarswait,tag=bedwarsred] -3 8 28
execute if score #bedwarsmap temp matches 5 in bedwars:5 run tp @a[tag=bedwarswait,tag=bedwarsblue] -28 8 -3
execute if score #bedwarsmap temp matches 5 in bedwars:5 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 3 8 -28
execute if score #bedwarsmap temp matches 5 in bedwars:5 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 28 8 3
execute if score #bedwarsmap temp matches 5 in bedwars:5 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -3 8 28
execute if score #bedwarsmap temp matches 5 in bedwars:5 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] -28 8 -3
execute if score #bedwarsmap temp matches 5 in bedwars:5 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 3 8 -28
execute if score #bedwarsmap temp matches 5 in bedwars:5 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 28 8 3

execute if score #bedwarsmap temp matches 6 in bedwars:6 if loaded 0 0 0 run function bedwars:reset/6
execute if score #bedwarsmap temp matches 6 in bedwars:6 unless loaded 0 0 0 run schedule function bedwars:reset/6 2s
execute if score #bedwarsmap temp matches 6 in bedwars:6 run tp @a[tag=bedwarswait,tag=bedwarsred] 35 7 0
execute if score #bedwarsmap temp matches 6 in bedwars:6 run tp @a[tag=bedwarswait,tag=bedwarsblue] 0 7 35
execute if score #bedwarsmap temp matches 6 in bedwars:6 run tp @a[tag=bedwarswait,tag=bedwarsyellow] -35 7 0
execute if score #bedwarsmap temp matches 6 in bedwars:6 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 0 7 -35
execute if score #bedwarsmap temp matches 6 in bedwars:6 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] 35 7 0
execute if score #bedwarsmap temp matches 6 in bedwars:6 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 0 7 35
execute if score #bedwarsmap temp matches 6 in bedwars:6 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] -35 7 0
execute if score #bedwarsmap temp matches 6 in bedwars:6 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 0 7 -35

execute if score #bedwarsmap temp matches 7 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"EtwasMagWurst","color":"gold"}]
execute if score #bedwarsmap temp matches 7 in bedwars:7 if loaded 0 0 0 run function bedwars:reset/7
execute if score #bedwarsmap temp matches 7 in bedwars:7 unless loaded 0 0 0 run schedule function bedwars:reset/7 2s
execute if score #bedwarsmap temp matches 7 in bedwars:7 run tp @a[tag=bedwarswait,tag=bedwarsred] -30 4 0
execute if score #bedwarsmap temp matches 7 in bedwars:7 run tp @a[tag=bedwarswait,tag=bedwarsblue] 0 4 -30
execute if score #bedwarsmap temp matches 7 in bedwars:7 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 30 4 0
execute if score #bedwarsmap temp matches 7 in bedwars:7 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 0 4 30
execute if score #bedwarsmap temp matches 7 in bedwars:7 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -30 4 0
execute if score #bedwarsmap temp matches 7 in bedwars:7 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 0 4 -30
execute if score #bedwarsmap temp matches 7 in bedwars:7 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 30 4 0
execute if score #bedwarsmap temp matches 7 in bedwars:7 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 0 4 30

execute if score #bedwarsmap temp matches 8..9 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Tim07iju","color":"gold"}]
execute if score #bedwarsmap temp matches 8 in bedwars:8 if loaded 0 0 0 run function bedwars:reset/8
execute if score #bedwarsmap temp matches 8 in bedwars:8 unless loaded 0 0 0 run schedule function bedwars:reset/8 2s
execute if score #bedwarsmap temp matches 8 in bedwars:8 run tp @a[tag=bedwarswait,tag=bedwarsred] -32 8 0
execute if score #bedwarsmap temp matches 8 in bedwars:8 run tp @a[tag=bedwarswait,tag=bedwarsblue] 0 8 -32
execute if score #bedwarsmap temp matches 8 in bedwars:8 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 32 8 0
execute if score #bedwarsmap temp matches 8 in bedwars:8 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 0 8 32
execute if score #bedwarsmap temp matches 8 in bedwars:8 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -32 8 0
execute if score #bedwarsmap temp matches 8 in bedwars:8 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 0 8 -32
execute if score #bedwarsmap temp matches 8 in bedwars:8 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 32 8 0
execute if score #bedwarsmap temp matches 8 in bedwars:8 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 0 8 32

execute if score #bedwarsmap temp matches 9 in bedwars:9 if loaded 0 0 0 run function bedwars:reset/9
execute if score #bedwarsmap temp matches 9 in bedwars:9 unless loaded 0 0 0 run schedule function bedwars:reset/9 2s
execute if score #bedwarsmap temp matches 9 in bedwars:9 run tp @a[tag=bedwarswait,tag=bedwarsred] -28.0 6 1.0
execute if score #bedwarsmap temp matches 9 in bedwars:9 run tp @a[tag=bedwarswait,tag=bedwarsblue] 1.0 6 -28.0
execute if score #bedwarsmap temp matches 9 in bedwars:9 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 29.0 6 1.0
execute if score #bedwarsmap temp matches 9 in bedwars:9 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 1.0 6 29.0
execute if score #bedwarsmap temp matches 9 in bedwars:9 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] -28 6 1
execute if score #bedwarsmap temp matches 9 in bedwars:9 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] 1 6 -28
execute if score #bedwarsmap temp matches 9 in bedwars:9 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 29 6 1
execute if score #bedwarsmap temp matches 9 in bedwars:9 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 1 6 29

execute if score #bedwarsmap temp matches 10 run tellraw @a[tag=bedwarswait] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Blockcrafter_GER","color":"gold"}]
execute if score #bedwarsmap temp matches 10 in bedwars:10 if loaded 0 0 0 run function bedwars:reset/10
execute if score #bedwarsmap temp matches 10 in bedwars:10 unless loaded 0 0 0 run schedule function bedwars:reset/10 2s
execute if score #bedwarsmap temp matches 10 in bedwars:10 run tp @a[tag=bedwarswait,tag=bedwarsred] 0 10 28
execute if score #bedwarsmap temp matches 10 in bedwars:10 run tp @a[tag=bedwarswait,tag=bedwarsblue] -28 10 0
execute if score #bedwarsmap temp matches 10 in bedwars:10 run tp @a[tag=bedwarswait,tag=bedwarsyellow] 0 10 -28
execute if score #bedwarsmap temp matches 10 in bedwars:10 run tp @a[tag=bedwarswait,tag=bedwarsgreen] 28 10 0
execute if score #bedwarsmap temp matches 10 in bedwars:10 run spawnpoint @a[tag=bedwarswait,tag=bedwarsred] 0 10 28
execute if score #bedwarsmap temp matches 10 in bedwars:10 run spawnpoint @a[tag=bedwarswait,tag=bedwarsblue] -28 10 0
execute if score #bedwarsmap temp matches 10 in bedwars:10 run spawnpoint @a[tag=bedwarswait,tag=bedwarsyellow] 0 10 -28
execute if score #bedwarsmap temp matches 10 in bedwars:10 run spawnpoint @a[tag=bedwarswait,tag=bedwarsgreen] 28 10 0

schedule function bedwars:spawn_copper 2s append
schedule function bedwars:spawn_iron 3s
schedule function bedwars:spawn_gold 5s

scoreboard players set @a[tag=bedwarswait] bedwarsCanRespawn 1
scoreboard players add @a[tag=bedwarswait] bedwarsgames 1
scoreboard players operation @a[tag=bedwarswait] map = #bedwarsmap temp
effect clear @a[tag=bedwarswait]
clear @a[tag=bedwarswait]
tag @a[tag=bedwarswait] add nohitcooldown
scoreboard players set #bedwarsstart value 0
tag @a[tag=bedwarswait] add bedwars
execute as @a[tag=bedwarswait] run gamemode survival @s
tag @a[tag=bedwarswait] remove bedwarswait
