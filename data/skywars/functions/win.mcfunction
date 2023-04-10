tag @s add temp
execute if entity @s[tag=skywarsred] as @a if score @s map = @r[tag=skywarsred,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Red","color":"red"},{"text":" (","color":"aqua"},{"selector":"@a[tag=skywars,tag=skywarsred]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=skywarsblue] as @a if score @s map = @r[tag=skywarsblue,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Blue","color":"blue"},{"text":" (","color":"aqua"},{"selector":"@a[tag=skywars,tag=skywarsblue]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=skywarsyellow] as @a if score @s map = @r[tag=skywarsyellow,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Yellow","color":"yellow"},{"text":" (","color":"aqua"},{"selector":"@a[tag=skywars,tag=skywarsyellow]"},{"text":") won.","color":"aqua"}]
execute if entity @s[tag=skywarsgreen] as @a if score @s map = @r[tag=skywarsgreen,tag=temp] map run tellraw @s [{"text":"[","color":"gray"},{"text":"SkyWars","color":"yellow"},{"text":"] "},{"text":"Team ","color":"aqua"},{"text":"Green","color":"green"},{"text":" (","color":"aqua"},{"selector":"@a[tag=skywars,tag=skywarsgreen]"},{"text":") won.","color":"aqua"}]
scoreboard players set @a[tag=skywars,distance=0..] l 1
tag @s remove temp

scoreboard players add @s skywarswins 1

execute if entity @s[tag=nohitcooldown] run data modify storage skywars:maps_1_8 free append value {id:0,teams:4}
execute if entity @s[tag=nohitcooldown] store result storage skywars:maps_1_8 free[-1].id int 1 run scoreboard players get @s map
execute unless entity @s[tag=nohitcooldown] run data modify storage skywars:maps_1_16 free append value {id:0,teams:4}
execute unless entity @s[tag=nohitcooldown] store result storage skywars:maps_1_16 free[-1].id int 1 run scoreboard players get @s map
