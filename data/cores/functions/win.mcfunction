tag @s add temp
execute if entity @s[tag=coresred] as @a if score @s map = @r[tag=coresred,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Red","color":"red"},{"text":" (","color":"aqua"},{"selector":"@a[tag=cores,tag=coresred]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=coresblue] as @a if score @s map = @r[tag=coresblue,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" (","color":"aqua"},{"selector":"@a[tag=cores,tag=coresblue]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=coresyellow] as @a if score @s map = @r[tag=coresyellow,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Yellow","color":"yellow"},{"text":" (","color":"aqua"},{"selector":"@a[tag=cores,tag=coresyellow]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=coresgreen] as @a if score @s map = @r[tag=coresgreen,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Green","color":"green"},{"text":" (","color":"aqua"},{"selector":"@a[tag=cores,tag=coresgreen]"},{"text":") won.","color":"aqua"}]
scoreboard players set @a[tag=cores,distance=0..] l 1
tag @s remove temp

scoreboard players add @s coreswins 1

data modify storage cores:maps free append value {id:0,teams:2}
execute store result storage cores:maps free[-1].id int 1 run scoreboard players get @s map
