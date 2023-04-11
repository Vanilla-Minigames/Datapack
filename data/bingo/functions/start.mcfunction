data modify storage bingo:data current set value []
data modify storage bingo:found red set value []
data modify storage bingo:found blue set value []
data modify storage bingo:found yellow set value []
data modify storage bingo:found green set value []

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

execute if score #bingodimension value matches 1 in bingo:overworld1 run kill @e[type=marker,tag=bingospawn,distance=0..]
execute if score #bingodimension value matches 1 in bingo:overworld1 run forceload add 0 0
execute if score #bingodimension value matches 1 in bingo:overworld1 run summon marker 0 0 0 {Tags:["bingospawn","bingonew"]}

execute at @e[type=marker,tag=bingospawn,tag=bingonew] run forceload add ~ ~
execute at @e[type=marker,tag=bingospawn,tag=bingonew] positioned over world_surface run tp @a[tag=bingowait] ~ ~ ~
execute at @e[type=marker,tag=bingospawn,tag=bingonew] positioned over world_surface run spawnpoint @a[tag=bingowait,distance=0..] ~ ~ ~

execute as @e[type=marker,tag=bingospawn,tag=bingonew] store result score #bingoX temp run data get entity @s Pos[0]
execute as @e[type=marker,tag=bingospawn,tag=bingonew] store result score #bingoZ temp run data get entity @s Pos[2]
execute at @e[type=marker,tag=bingospawn,tag=bingonew] run fill ~ -64 ~ ~15 -61 ~15 bedrock
execute at @e[type=marker,tag=bingospawn,tag=bingonew] run fill ~1 -63 ~1 ~14 -62 ~14 stone
scoreboard players set #amount temp 0
scoreboard players set #bingoOffset temp 0
execute unless entity @e[type=marker,tag=bingospawn,tag=bingonew] run tellraw @a[tag=bingowait] {"text":"Marker missing, try again","color":"red"}
execute if entity @e[type=marker,tag=bingospawn,tag=bingonew] run function bingo:pick_item

execute store result entity @e[type=marker,tag=bingospawn,tag=bingonew,limit=1] Pos[0] double 1 run scoreboard players get #bingoX temp
execute store result entity @e[type=marker,tag=bingospawn,tag=bingonew,limit=1] Pos[2] double 1 run scoreboard players get #bingoZ temp
schedule function bingo:check_inv 1s

scoreboard players add @a[tag=bingowait] bingogames 1
scoreboard players set @a[tag=bingowait] Bingo 2
scoreboard players set @a[tag=bingowait] bingoitem 0
effect clear @a[tag=bingowait]
clear @a[tag=bingowait]
effect give @a[tag=bingowait] resistance 20 4 true
tag @a[tag=bingowait] add bingo
execute as @a[tag=bingowait] run gamemode survival @s
tag @a[tag=bingowait] remove bingowait

tag @e[type=marker,tag=bingospawn,tag=bingonew] remove bingonew
