tag @s add temp
execute if entity @s[tag=bedwarsred] as @a if score @s map = @r[tag=bedwarsred,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Red","color":"red"},{"text":" (","color":"aqua"},{"selector":"@a[tag=bedwars,tag=bedwarsred]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=bedwarsblue] as @a if score @s map = @r[tag=bedwarsblue,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" (","color":"aqua"},{"selector":"@a[tag=bedwars,tag=bedwarsblue]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=bedwarsyellow] as @a if score @s map = @r[tag=bedwarsyellow,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Yellow","color":"yellow"},{"text":" (","color":"aqua"},{"selector":"@a[tag=bedwars,tag=bedwarsyellow]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=bedwarsgreen] as @a if score @s map = @r[tag=bedwarsgreen,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Green","color":"green"},{"text":" (","color":"aqua"},{"selector":"@a[tag=bedwars,tag=bedwarsgreen]"},{"text":") won.","color":"aqua"}]
scoreboard players set @a[tag=bedwars,distance=0..] l 1
tag @s remove temp

scoreboard players add @s bedwarswins 1

data modify storage bedwars:maps free append value {id:0,teams:4}
execute if score @s map matches 3 run data modify storage bedwars:maps free[-1].teams set value 2
execute store result storage bedwars:maps free[-1].id int 1 run scoreboard players get @s map
