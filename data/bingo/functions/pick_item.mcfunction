execute store result score #id temp run loot spawn 0 0 0 loot bingo:random_num
data modify storage api:common get set from storage bingo:data all
function api:common/get
execute if data storage api:common result run data modify storage bingo:data picked set from storage api:common result

data modify storage bingo:data current append from storage bingo:data picked
scoreboard players add #bingototal value 1
scoreboard players add #bingoOffset temp 1
execute as @e[type=marker,tag=bingospawn,tag=bingonew] at @s run tp @s ~1 ~ ~
execute if score #bingoOffset temp matches 15.. as @e[type=marker,tag=bingospawn,tag=bingonew] at @s run tp @s 1 ~ ~1
execute if score #bingoOffset temp matches 15.. run scoreboard players set #bingoOffset temp 0

execute at @e[type=marker,tag=bingospawn,tag=bingonew] run setblock ~ -63 ~1 command_block
execute at @e[type=marker,tag=bingospawn,tag=bingonew] run data modify block ~ -63 ~1 Command set from storage bingo:data picked.detect

execute unless score #bingototal value matches 9.. run function bingo:pick_item
