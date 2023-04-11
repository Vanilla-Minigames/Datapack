execute if entity @a[tag=bingo,scores={bingoitem=1..}] run scoreboard players operation #id temp = #bingochecking temp
execute if entity @a[tag=bingo,tag=bingored,scores={bingoitem=1..}] run data modify storage api:common get set from storage bingo:found red
execute if entity @a[tag=bingo,tag=bingoblue,scores={bingoitem=1..}] run data modify storage api:common get set from storage bingo:found blue
execute if entity @a[tag=bingo,tag=bingoyellow,scores={bingoitem=1..}] run data modify storage api:common get set from storage bingo:found yellow
execute if entity @a[tag=bingo,tag=bingogreen,scores={bingoitem=1..}] run data modify storage api:common get set from storage bingo:found green
execute if entity @a[tag=bingo,scores={bingoitem=1..}] run function api:common/get
execute as @a[tag=bingo,scores={bingoitem=1..}] unless data storage api:common result run function bingo:new_item
scoreboard players set @a[tag=bingo,scores={bingoitem=1..}] bingoitem 0

execute if score #bingocheck temp matches 0 store result score #bingochecking temp run data get storage bingo:data current[0].id
execute if score #bingocheck temp matches 1 store result score #bingochecking temp run data get storage bingo:data current[1].id
execute if score #bingocheck temp matches 2 store result score #bingochecking temp run data get storage bingo:data current[2].id
execute if score #bingocheck temp matches 3 store result score #bingochecking temp run data get storage bingo:data current[3].id
execute if score #bingocheck temp matches 4 store result score #bingochecking temp run data get storage bingo:data current[4].id
execute if score #bingocheck temp matches 5 store result score #bingochecking temp run data get storage bingo:data current[5].id
execute if score #bingocheck temp matches 6 store result score #bingochecking temp run data get storage bingo:data current[6].id
execute if score #bingocheck temp matches 7 store result score #bingochecking temp run data get storage bingo:data current[7].id
execute if score #bingocheck temp matches 8 store result score #bingochecking temp run data get storage bingo:data current[8].id
execute if score #bingocheck temp matches 9 store result score #bingochecking temp run data get storage bingo:data current[9].id
execute if score #bingocheck temp matches 10 store result score #bingochecking temp run data get storage bingo:data current[10].id
execute if score #bingocheck temp matches 11 store result score #bingochecking temp run data get storage bingo:data current[11].id
execute if score #bingocheck temp matches 12 store result score #bingochecking temp run data get storage bingo:data current[12].id
execute if score #bingocheck temp matches 13 store result score #bingochecking temp run data get storage bingo:data current[13].id
execute if score #bingocheck temp matches 14 store result score #bingochecking temp run data get storage bingo:data current[14].id
execute if score #bingocheck temp matches 15 store result score #bingochecking temp run data get storage bingo:data current[15].id
execute if score #bingocheck temp matches 16 store result score #bingochecking temp run data get storage bingo:data current[16].id
execute if score #bingocheck temp matches 17 store result score #bingochecking temp run data get storage bingo:data current[17].id
execute if score #bingocheck temp matches 18 store result score #bingochecking temp run data get storage bingo:data current[18].id
execute if score #bingocheck temp matches 19 store result score #bingochecking temp run data get storage bingo:data current[19].id

execute at @e[type=marker,tag=bingospawn] run fill 1 -62 1 14 -62 14 redstone_block replace stone
execute at @e[type=marker,tag=bingospawn] run fill 1 -62 1 14 -62 14 stone replace redstone_block

scoreboard players add #bingocheck temp 1
execute if score #bingocheck temp >= #bingototal value run scoreboard players set #bingocheck temp 0
schedule function bingo:check_inv 4t
