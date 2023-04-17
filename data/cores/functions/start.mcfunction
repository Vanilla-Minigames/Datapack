execute store result score #coresmap temp run data get storage cores:maps free[0].id
execute store result score #coresteams temp run data get storage cores:maps free[0].teams
data remove storage cores:maps free[0]

tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresblue
execute if score #coresteams temp matches 3.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresyellow
execute if score #coresteams temp matches 4.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresgreen
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresblue
execute if score #coresteams temp matches 3.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresyellow
execute if score #coresteams temp matches 4.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresgreen
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresblue
execute if score #coresteams temp matches 3.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresyellow
execute if score #coresteams temp matches 4.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresgreen
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresblue
execute if score #coresteams temp matches 3.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresyellow
execute if score #coresteams temp matches 4.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresgreen
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred
tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresblue
execute if score #coresteams temp matches 3.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresyellow
execute if score #coresteams temp matches 4.. run tag @r[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresgreen
tag @a[tag=coreswait,tag=!coresred,tag=!coresblue,tag=!coresyellow,tag=!coresgreen] add coresred

team join Red @a[tag=coreswait,tag=coresred]
team join Blue @a[tag=coreswait,tag=coresblue]
team join Yellow @a[tag=coreswait,tag=coresyellow]
team join Green @a[tag=coreswait,tag=coresgreen]

execute if score #coresmap temp matches 1 run tellraw @a[tag=coreswait] [{"text":"[","color":"gray"},{"text":"cores","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Netherite64","color":"gold"}]
execute if score #coresmap temp matches 1 in cores:1 if loaded 0 0 0 run function cores:reset/1
execute if score #coresmap temp matches 1 in cores:1 unless loaded 0 0 0 run schedule function cores:reset/1 2s
execute if score #coresmap temp matches 1 in cores:1 run tp @a[tag=coreswait,tag=coresred] 0.0 7 56 180 0
execute if score #coresmap temp matches 1 in cores:1 run tp @a[tag=coreswait,tag=coresblue] 0.0 7 -55 0 0
execute if score #coresmap temp matches 1 in cores:1 run spawnpoint @a[tag=coreswait,tag=coresred] 0 7 56
execute if score #coresmap temp matches 1 in cores:1 run spawnpoint @a[tag=coreswait,tag=coresblue] 0 7 -55

scoreboard players add @a[tag=coreswait] coresgames 1
scoreboard players operation @a[tag=coreswait] map = #coresmap temp
effect clear @a[tag=coreswait]
clear @a[tag=coreswait]
tag @a[tag=coreswait] add nohitcooldown
scoreboard players set #coresstart value 0
tag @a[tag=coreswait] add cores
execute as @a[tag=coreswait] run gamemode survival @s
tag @a[tag=coreswait] remove coreswait
