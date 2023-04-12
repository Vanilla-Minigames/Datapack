effect give @a[tag=lobby,gamemode=!creative,gamemode=!spectator] saturation infinite 0 true
effect give @a[gamemode=!creative,gamemode=!spectator,tag=!skywars,tag=!bedwars,tag=!bingo] weakness infinite 255 true
spawnpoint @a[tag=lobby] 0 19 0 90

execute if entity @a[team=70rainbow] if score #rainbow temp matches 1 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"red"},{"text":"a","color":"gold"},{"text":"i","color":"yellow"},{"text":"n","color":"green"},{"text":"b","color":"aqua"},{"text":"o","color":"light_purple"},{"text":"w","color":"dark_purple"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 2 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"gold"},{"text":"a","color":"yellow"},{"text":"i","color":"green"},{"text":"n","color":"aqua"},{"text":"b","color":"light_purple"},{"text":"o","color":"dark_purple"},{"text":"w","color":"red"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 3 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"yellow"},{"text":"a","color":"green"},{"text":"i","color":"aqua"},{"text":"n","color":"light_purple"},{"text":"b","color":"dark_purple"},{"text":"o","color":"red"},{"text":"w","color":"gold"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 4 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"green"},{"text":"a","color":"aqua"},{"text":"i","color":"light_purple"},{"text":"n","color":"dark_purple"},{"text":"b","color":"red"},{"text":"o","color":"gold"},{"text":"w","color":"yellow"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 5 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"aqua"},{"text":"a","color":"light_purple"},{"text":"i","color":"dark_purple"},{"text":"n","color":"red"},{"text":"b","color":"gold"},{"text":"o","color":"yellow"},{"text":"w","color":"green"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 6 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"light_purple"},{"text":"a","color":"dark_purple"},{"text":"i","color":"red"},{"text":"n","color":"gold"},{"text":"b","color":"yellow"},{"text":"o","color":"green"},{"text":"w","color":"aqua"},{"text":"] "}]
execute if entity @a[team=70rainbow] if score #rainbow temp matches 7 run team modify 70rainbow prefix [{"text":"[","color":"white"},{"text":"R","color":"dark_purple"},{"text":"a","color":"red"},{"text":"i","color":"gold"},{"text":"n","color":"yellow"},{"text":"b","color":"green"},{"text":"o","color":"aqua"},{"text":"w","color":"red"},{"text":"] "}]
execute if entity @a[team=70rainbow] run scoreboard players add #rainbow temp 1
execute if score #rainbow temp matches 8.. run scoreboard players set #rainbow temp 1

xp set @a[scores={xpcountdown=0}] 0 levels
xp set @a[scores={xpcountdown=1}] 1 levels
xp set @a[scores={xpcountdown=2}] 2 levels
xp set @a[scores={xpcountdown=3}] 3 levels
xp set @a[scores={xpcountdown=4}] 4 levels
xp set @a[scores={xpcountdown=5}] 5 levels
xp set @a[scores={xpcountdown=6}] 6 levels
xp set @a[scores={xpcountdown=7}] 7 levels
xp set @a[scores={xpcountdown=8}] 8 levels
xp set @a[scores={xpcountdown=9}] 9 levels
xp set @a[scores={xpcountdown=10}] 10 levels
xp set @a[scores={xpcountdown=11}] 11 levels
xp set @a[scores={xpcountdown=12}] 12 levels
xp set @a[scores={xpcountdown=13}] 13 levels
xp set @a[scores={xpcountdown=14}] 14 levels
xp set @a[scores={xpcountdown=15}] 15 levels
execute as @a[scores={xpcountdown=0}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 2
execute as @a[scores={xpcountdown=1..3}] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 100 0.8
scoreboard players remove @a[scores={xpcountdown=0..}] xpcountdown 1

execute as @a[distance=..30,tag=!lobby] run tellraw @a[scores={rank=1..19}] [{"selector":"@s"},{"text":" in lobby without lobby tag"}]
execute as @a[distance=..30,tag=!lobby] run scoreboard players set @s l 1

execute as @a[name=booky10,tag=!uuid_migration] run function api:uuid/add
execute as @a[name=booky10,tag=!uuid_migration] run tag @s add uuid_migration
execute as @a[name=Farbe_,tag=!uuid_migration] run function api:uuid/add
execute as @a[name=Farbe_,tag=!uuid_migration] run tag @s add uuid_migration
execute as @a[name=thevalleyy,tag=!uuid_migration] run function api:uuid/add
execute as @a[name=thevalleyy,tag=!uuid_migration] run tag @s add uuid_migration
execute as @a[name=0000000001000101,tag=!uuid_migration] run function api:uuid/add
execute as @a[name=0000000001000101,tag=!uuid_migration] run tag @s add uuid_migration

execute as @e[type=chest_minecart,tag=gui,tag=!bedwars] at @s unless entity @a[distance=..3,nbt={SelectedItem:{id:"minecraft:compass"}}] run tp @s ~ -120 ~
execute as @e[type=chest_minecart,tag=gui,tag=!bedwars] at @s unless entity @a[distance=..3] run kill @s
execute as @e[type=chest_minecart,tag=gui,tag=bedwars] at @s unless entity @a[distance=..7] run tp @s ~ -120 ~
execute as @e[type=chest_minecart,tag=gui,tag=bedwars] at @s unless entity @a[distance=..7] run kill @s

schedule function vm:1sec 1s
