scoreboard players operation #id temp = #bingochecking temp
data modify storage api:common get set from storage bingo:data current
function api:common/get
execute if data storage api:common result run data modify storage bingo:data picked set from storage api:common result

execute if entity @s[tag=bingored] run data modify storage bingo:found red append from storage bingo:data picked
execute if entity @s[tag=bingored] store result score #found temp if data storage bingo:found red[]
execute at @s[tag=bingored] as @a[tag=bingo,tag=bingored,distance=0..] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0.8
execute at @s[tag=bingored] run title @a[tag=bingo,tag=bingored,distance=0..] title [{"score":{"name":"#found","objective":"temp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"#bingototal","objective":"value"}}]
execute at @s[tag=bingored] run title @a[tag=bingo,tag=bingored,distance=0..] subtitle [{"selector":"@s"},{"text":" got ","color":"aqua"},{"storage":"bingo:data","nbt":"picked.name","color":"green"}]

execute if entity @s[tag=bingoblue] run data modify storage bingo:found blue append from storage bingo:data picked
execute if entity @s[tag=bingoblue] store result score #found temp if data storage bingo:found blue[]
execute at @s[tag=bingoblue] as @a[tag=bingo,tag=bingoblue,distance=0..] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0.8
execute at @s[tag=bingoblue] run title @a[tag=bingo,tag=bingoblue,distance=0..] title [{"score":{"name":"#found","objective":"temp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"#bingototal","objective":"value"}}]
execute at @s[tag=bingoblue] run title @a[tag=bingo,tag=bingoblue,distance=0..] subtitle [{"selector":"@s"},{"text":" got ","color":"aqua"},{"storage":"bingo:data","nbt":"picked.name","color":"green"}]

execute if entity @s[tag=bingoyellow] run data modify storage bingo:found yellow append from storage bingo:data picked
execute if entity @s[tag=bingoyellow] store result score #found temp if data storage bingo:found yellow[]
execute at @s[tag=bingoyellow] as @a[tag=bingo,tag=bingoyellow,distance=0..] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0.8
execute at @s[tag=bingoyellow] run title @a[tag=bingo,tag=bingoyellow,distance=0..] title [{"score":{"name":"#found","objective":"temp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"#bingototal","objective":"value"}}]
execute at @s[tag=bingoyellow] run title @a[tag=bingo,tag=bingoyellow,distance=0..] subtitle [{"selector":"@s"},{"text":" got ","color":"aqua"},{"storage":"bingo:data","nbt":"picked.name","color":"green"}]

execute if entity @s[tag=bingogreen] run data modify storage bingo:found green append from storage bingo:data picked
execute if entity @s[tag=bingogreen] store result score #found temp if data storage bingo:found green[]
execute at @s[tag=bingogreen] as @a[tag=bingo,tag=bingogreen,distance=0..] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 100 0.8
execute at @s[tag=bingogreen] run title @a[tag=bingo,tag=bingogreen,distance=0..] title [{"score":{"name":"#found","objective":"temp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"#bingototal","objective":"value"}}]
execute at @s[tag=bingogreen] run title @a[tag=bingo,tag=bingogreen,distance=0..] subtitle [{"selector":"@s"},{"text":" got ","color":"aqua"},{"storage":"bingo:data","nbt":"picked.name","color":"green"}]

execute at @s run tellraw @a[distance=0..] [{"text":"[","color":"gray"},{"text":"Bingo","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" got ","color":"aqua"},{"storage":"bingo:data","nbt":"picked.name","color":"green"},{"text":" [","color":"gray"},{"score":{"name":"#found","objective":"temp"},"color":"yellow"},{"text":"/","color":"gray"},{"score":{"name":"#bingototal","objective":"value"},"color":"yellow"},{"text":"]","color":"gray"}]
