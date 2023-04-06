execute store result score #skywarsmap temp run data get storage skywars:maps_1_8 free[0].id
execute store result score #skywarsteams temp run data get storage skywars:maps_1_8 free[0].teams
data remove storage skywars:maps_1_8 free[0]

tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @a[tag=skywarswait_1_8,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred

team join Red @a[tag=skywarswait_1_8,tag=skywarsred]
team join Blue @a[tag=skywarswait_1_8,tag=skywarsblue]
team join Yellow @a[tag=skywarswait_1_8,tag=skywarsyellow]
team join Green @a[tag=skywarswait_1_8,tag=skywarsgreen]

execute if score #skywarsmap temp matches 1 in skywars:1_8/1 if loaded 0 0 0 run function skywars:reset_1_8/1
execute if score #skywarsmap temp matches 1 in skywars:1_8/1 unless loaded 0 0 0 run schedule function skywars:reset_1_8/1 2s
execute if score #skywarsmap temp matches 1 in skywars:1_8/1 run tp @a[tag=skywarswait_1_8,tag=skywarsred] -28 17 -28
execute if score #skywarsmap temp matches 1 in skywars:1_8/1 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 28 17 -28
execute if score #skywarsmap temp matches 1 in skywars:1_8/1 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] -28 17 28
execute if score #skywarsmap temp matches 1 in skywars:1_8/1 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] 28 17 28

execute if score #skywarsmap temp matches 2 in skywars:1_8/2 if loaded 0 0 0 run function skywars:reset_1_8/2
execute if score #skywarsmap temp matches 2 in skywars:1_8/2 unless loaded 0 0 0 run schedule function skywars:reset_1_8/2 2s
execute if score #skywarsmap temp matches 2 in skywars:1_8/2 run tp @a[tag=skywarswait_1_8,tag=skywarsred] 0 13 -35
execute if score #skywarsmap temp matches 2 in skywars:1_8/2 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 37 13 0
execute if score #skywarsmap temp matches 2 in skywars:1_8/2 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] 0 13 36
execute if score #skywarsmap temp matches 2 in skywars:1_8/2 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] -35 13 0

execute if score #skywarsmap temp matches 3 in skywars:1_8/3 if loaded 0 0 0 run function skywars:reset_1_8/3
execute if score #skywarsmap temp matches 3 in skywars:1_8/3 unless loaded 0 0 0 run schedule function skywars:reset_1_8/3 2s
execute if score #skywarsmap temp matches 3 in skywars:1_8/3 run tp @a[tag=skywarswait_1_8,tag=skywarsred] 0 7 -28
execute if score #skywarsmap temp matches 3 in skywars:1_8/3 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 23 7 1
execute if score #skywarsmap temp matches 3 in skywars:1_8/3 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] 1 7 29
execute if score #skywarsmap temp matches 3 in skywars:1_8/3 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] -28 7 1

execute if score #skywarsmap temp matches 4 in skywars:1_8/4 if loaded 0 0 0 run function skywars:reset_1_8/4
execute if score #skywarsmap temp matches 4 in skywars:1_8/4 unless loaded 0 0 0 run schedule function skywars:reset_1_8/4 2s
execute if score #skywarsmap temp matches 4 in skywars:1_8/4 run tp @a[tag=skywarswait_1_8,tag=skywarsred] -30 11 -1
execute if score #skywarsmap temp matches 4 in skywars:1_8/4 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] -1 11 29
execute if score #skywarsmap temp matches 4 in skywars:1_8/4 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] 30 11 0
execute if score #skywarsmap temp matches 4 in skywars:1_8/4 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] 0 11 -30

execute if score #skywarsmap temp matches 5 in skywars:1_8/5 if loaded 0 0 0 run function skywars:reset_1_8/5
execute if score #skywarsmap temp matches 5 in skywars:1_8/5 unless loaded 0 0 0 run schedule function skywars:reset_1_8/5 2s
execute if score #skywarsmap temp matches 5 in skywars:1_8/5 run tp @a[tag=skywarswait_1_8,tag=skywarsred] 32 8 0
execute if score #skywarsmap temp matches 5 in skywars:1_8/5 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 0 8 -32
execute if score #skywarsmap temp matches 5 in skywars:1_8/5 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] -32 8 -1
execute if score #skywarsmap temp matches 5 in skywars:1_8/5 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] 0 8 32

execute if score #skywarsmap temp matches 6 in skywars:1_8/6 if loaded 0 0 0 run function skywars:reset_1_8/6
execute if score #skywarsmap temp matches 6 in skywars:1_8/6 unless loaded 0 0 0 run schedule function skywars:reset_1_8/6 2s
execute if score #skywarsmap temp matches 6 in skywars:1_8/6 run tp @a[tag=skywarswait_1_8,tag=skywarsred] -1 14 -37
execute if score #skywarsmap temp matches 6 in skywars:1_8/6 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 38 14 -1
execute if score #skywarsmap temp matches 6 in skywars:1_8/6 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] 2 14 39
execute if score #skywarsmap temp matches 6 in skywars:1_8/6 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] -37 14 3

execute if score #skywarsmap temp matches 7 in skywars:1_8/7 if loaded 0 0 0 run function skywars:reset_1_8/7
execute if score #skywarsmap temp matches 7 in skywars:1_8/7 unless loaded 0 0 0 run schedule function skywars:reset_1_8/7 2s
execute if score #skywarsmap temp matches 7 in skywars:1_8/7 run tp @a[tag=skywarswait_1_8,tag=skywarsred] 0 9 -28
execute if score #skywarsmap temp matches 7 in skywars:1_8/7 run tp @a[tag=skywarswait_1_8,tag=skywarsblue] 26 9 0
execute if score #skywarsmap temp matches 7 in skywars:1_8/7 run tp @a[tag=skywarswait_1_8,tag=skywarsyellow] 1 9 27
execute if score #skywarsmap temp matches 7 in skywars:1_8/7 run tp @a[tag=skywarswait_1_8,tag=skywarsgreen] -25 9 0

scoreboard players operation @a[tag=skywarswait_1_8] map = #skywarsmap temp
effect clear @a[tag=skywarswait_1_8]
clear @a[tag=skywarswait_1_8]
tag @a[tag=skywarswait_1_8] add nohitcooldown
scoreboard players set #skywarsstart_1_8 value 0
tag @a[tag=skywarswait_1_8] add skywars
execute as @a[tag=skywarswait_1_8] run gamemode survival @s
tag @a[tag=skywarswait_1_8] remove skywarswait_1_8
