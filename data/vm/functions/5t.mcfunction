execute as @a[team=] run tellraw @s [{"selector":"@s","color":"aqua"},{"text":" joined for the first time!","color":"green"}]
scoreboard players set @a[team=] rank 90
scoreboard players set @a[team=] l 1
team join 90player @a[team=]

scoreboard players set @a[scores={rejoin=1..}] l 1
execute as @a[scores={rejoin=1..}] run tellraw @s [{"text":"Welcome back, ","color":"green"},{"selector":"@s","color":"aqua"},{"text":"!"}]
scoreboard players reset @a[scores={rejoin=1..}] rejoin

execute at @a[tag=lobby,nbt={SelectedItem:{id:"minecraft:compass"}}] unless entity @e[type=chest_minecart,tag=lobby_gui,distance=..5] run function vm:gui/create
execute as @e[type=chest_minecart,tag=gui] at @s unless entity @a[distance=..3] run tp @s ~ -120 ~
execute as @e[type=chest_minecart,tag=gui] at @s unless entity @a[distance=..3] run kill @s

tellraw @a[scores={Party=-1}] [{"text":"[","color":"gray"},{"text":"Party","color":"gold"},{"text":"] "},{"text":"All party commands:","color":"yellow"}]
scoreboard players set @a Party -2
scoreboard players enable @a Party

execute as @a[gamemode=!adventure,tag=!gm,tag=!skywars] run gamemode adventure @s

kill @e[type=tnt]
kill @e[type=end_crystal]
schedule function vm:5t 5t
