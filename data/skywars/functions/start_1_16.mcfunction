execute store result score #skywarsmap temp run data get storage skywars:maps_1_16 free[0].id
execute store result score #skywarsteams temp run data get storage skywars:maps_1_16 free[0].teams
data remove storage skywars:maps_1_16 free[0]

tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred
tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsblue
execute if score #skywarsteams temp matches 3.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsyellow
execute if score #skywarsteams temp matches 4.. run tag @r[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsgreen
tag @a[tag=skywarswait,tag=!skywarsred,tag=!skywarsblue,tag=!skywarsyellow,tag=!skywarsgreen] add skywarsred

execute if score #skywarsmap temp matches 1 in skywars:1_16/1 if loaded 0 0 0 run function skywars:reset_1_16/1
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 unless loaded 0 0 0 run schedule function skywars:reset_1_16/1 3s
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait,tag=skywarsred] -15 4 -46
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait,tag=skywarsblue] 13 4 -43
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait,tag=skywarsyellow] 13 4 46
execute if score #skywarsmap temp matches 1 in skywars:1_16/1 run tp @a[tag=skywarswait,tag=skywarsgreen] -15 4 43

execute as @a[tag=skywarswait] run gamemode survival @s
tag @a[tag=skywarswait] remove skywarswait
