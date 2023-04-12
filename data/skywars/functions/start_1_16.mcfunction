execute store result score #skywarsmap temp run data get storage skywars:maps_1_16 free[0].id
execute store result score #skywarsteams temp run data get storage skywars:maps_1_16 free[0].teams
data remove storage skywars:maps_1_16 free[0]

tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @a[tag=skywarswait_1_16,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred

team join Red @a[tag=skywarswait_1_16,tag=skywarsred]
team join Blue @a[tag=skywarswait_1_16,tag=skywarsblue]
team join Yellow @a[tag=skywarswait_1_16,tag=skywarsyellow]
team join Green @a[tag=skywarswait_1_16,tag=skywarsgreen]

execute if score #skywarsmap temp matches 1..2 run tellraw @a[tag=skywarswait_1_16] [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"Map built by: ","color":"aqua"},{"text":"Netherite64","color":"gold"}]
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 if loaded 0 0 0 run function skywars:reset_1_16/1
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 unless loaded 0 0 0 run schedule function skywars:reset_1_16/1 2s
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait_1_16,tag=skywarsred] -15 4 -46
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait_1_16,tag=skywarsblue] 13 4 -43
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait_1_16,tag=skywarsyellow] 13 4 46
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait_1_16,tag=skywarsgreen] -15 4 43

execute if score #skywarsmap temp matches 2 in skywars:1_16/2 if loaded 0 0 0 run function skywars:reset_1_16/2
execute if score #skywarsmap temp matches 2 in skywars:1_16/2 unless loaded 0 0 0 run schedule function skywars:reset_1_16/2 2s
execute if score #skywarsmap temp matches 2 in skywars:1_16/2 run tp @a[tag=skywarswait_1_16,tag=skywarsred] 17 8 35
execute if score #skywarsmap temp matches 2 in skywars:1_16/2 run tp @a[tag=skywarswait_1_16,tag=skywarsblue] -17 8 36
execute if score #skywarsmap temp matches 2 in skywars:1_16/2 run tp @a[tag=skywarswait_1_16,tag=skywarsyellow] -17 8 -35
execute if score #skywarsmap temp matches 2 in skywars:1_16/2 run tp @a[tag=skywarswait_1_16,tag=skywarsgreen] 17 8 -36

scoreboard players add @a[tag=skywarswait_1_16] skywarsgames 1
scoreboard players operation @a[tag=skywarswait_1_16] map = #skywarsmap temp
effect clear @a[tag=skywarswait_1_16]
clear @a[tag=skywarswait_1_16]
scoreboard players set #skywarsstart_1_16 value 0
tag @a[tag=skywarswait_1_16] add skywars
execute as @a[tag=skywarswait_1_16] run gamemode survival @s
tag @a[tag=skywarswait_1_16] remove skywarswait_1_16
