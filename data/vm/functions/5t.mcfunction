execute as @a[team=] run tellraw @s [{"selector":"@s","color":"aqua"},{"text":" joined for the first time!","color":"green"}]
scoreboard players set @a[team=] rank 90
scoreboard players set @a[team=] l 1
team join 90player @a[team=]

scoreboard players set @a[scores={rejoin=1..}] l 1
execute as @a[scores={rejoin=1..}] run tellraw @s [{"text":"Welcome back, ","color":"green"},{"selector":"@s","color":"aqua"},{"text":"!"}]
scoreboard players reset @a[scores={rejoin=1..}] rejoin

execute at @a[tag=lobby,nbt={SelectedItem: {id: "minecraft:compass"}}] unless entity @e[type=chest_minecart,tag=lobby_gui,distance=..5] run function vm:gui/create
execute as @e[type=chest_minecart,tag=gui] at @s unless entity @a[distance=..3] run tp @s ~ -100 ~
execute as @e[type=chest_minecart,tag=gui] at @s unless entity @a[distance=..3] run kill @s

kill @e[type=tnt]
kill @e[type=end_crystal]
schedule function vm:5t 5t
