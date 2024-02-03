data modify storage bingo:data current set value []
data modify storage bingo:found red set value []
data modify storage bingo:found blue set value []
data modify storage bingo:found yellow set value []
data modify storage bingo:found green set value []

scoreboard players set #bingoteams temp 4
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoblue
execute if score #bingoteams temp matches 3.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoyellow
execute if score #bingoteams temp matches 4.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingogreen
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoblue
execute if score #bingoteams temp matches 3.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoyellow
execute if score #bingoteams temp matches 4.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingogreen
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoblue
execute if score #bingoteams temp matches 3.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoyellow
execute if score #bingoteams temp matches 4.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingogreen
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoblue
execute if score #bingoteams temp matches 3.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoyellow
execute if score #bingoteams temp matches 4.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingogreen
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored
tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoblue
execute if score #bingoteams temp matches 3.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingoyellow
execute if score #bingoteams temp matches 4.. run tag @r[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingogreen
tag @a[tag=bingowait,tag=!bingored,tag=!bingoblue,tag=!bingoyellow,tag=!bingogreen] add bingored

team join Red @a[tag=bingowait,tag=bingored]
team join Blue @a[tag=bingowait,tag=bingoblue]
team join Yellow @a[tag=bingowait,tag=bingoyellow]
team join Green @a[tag=bingowait,tag=bingogreen]

execute if score #bingodimension value matches 1 in bingo:overworld1 as @e[type=marker,tag=bingospawn,distance=0..] run tag @s add bingonew
execute if score #bingodimension value matches 1 in bingo:overworld1 as @e[type=marker,tag=bingospawn,tag=bingonew] run tp @s 0 0 0
execute if score #bingodimension value matches 1 in bingo:overworld1 unless entity @e[type=marker,tag=bingospawn,distance=0..] run summon marker 0 0 0 {Tags:["bingospawn","bingonew"]}

execute at @e[type=marker,tag=bingospawn,tag=bingonew] run fill 0 -64 0 15 -61 15 bedrock
execute at @e[type=marker,tag=bingospawn,tag=bingonew] run fill 1 -63 1 14 -62 14 stone
scoreboard players set #bingototal value 0
scoreboard players set #bingoOffset temp 0
function bingo:pick_item

effect give @a[tag=bingowait] resistance 20 4 true
scoreboard players add #bingocoord value 1
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 1 run tp @a[tag=bingowait] -500000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 2 run tp @a[tag=bingowait] -490000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 3 run tp @a[tag=bingowait] -480000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 4 run tp @a[tag=bingowait] -470000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 5 run tp @a[tag=bingowait] -460000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 6 run tp @a[tag=bingowait] -450000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 7 run tp @a[tag=bingowait] -440000 200 0
execute if score #bingodimension value matches 1 in bingo:overworld1 if score #bingocoord value matches 8 run tp @a[tag=bingowait] -430000 200 0
schedule function bingo:after_start 1s
schedule function bingo:check_inv 1s

scoreboard players add @a[tag=bingowait] bingogames 1
scoreboard players set @a[tag=bingowait] Bingo 2
scoreboard players set @a[tag=bingowait] bingoitem 0
effect clear @a[tag=bingowait]
clear @a[tag=bingowait]
execute as @a[tag=bingowait] run gamemode survival @s
tag @a[tag=bingowait] add bingo
tag @a[tag=bingowait] remove bingowait

tag @e[type=marker,tag=bingospawn,tag=bingonew] remove bingonew
