execute as @a[team=] run tellraw @s [{"selector":"@s","color":"aqua"},{"text":" joined for the first time!","color":"green"}]
scoreboard players set @a[team=] rank 90
scoreboard players set @a[team=] l 1
team join 90player @a[team=]

scoreboard players set @a[scores={rejoin=1..}] l 1
execute as @a[scores={rejoin=1..}] run tellraw @s [{"text":"Welcome back, ","color":"green"},{"selector":"@s"},{"text":"!"}]
scoreboard players reset @a[scores={rejoin=1..}] rejoin

execute at @a[tag=lobby,nbt={SelectedItem:{id:"minecraft:compass"}}] unless entity @e[type=chest_minecart,tag=lobby_gui,distance=..5] run function vm:gui/create

tellraw @a[scores={Party=-1}] [{"text":"[","color":"gray"},{"text":"Party","color":"gold"},{"text":"] "},{"text":"All party commands:","color":"yellow"}]
scoreboard players set @a Party -2
scoreboard players enable @a Party

execute as @a[gamemode=!adventure,gamemode=!spectator,tag=!gm,tag=!skywars] run gamemode adventure @s
execute as @a[tag=nohitcooldown] run attribute @s minecraft:generic.attack_speed base set 100
execute as @a[tag=!nohitcooldown] run attribute @s minecraft:generic.attack_speed base set 4

scoreboard players reset @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] doublejumpTimer
scoreboard players reset @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] doublejump
item replace entity @a[tag=lobby,gamemode=adventure,scores={doublejumpTimer=18..100}] armor.chest with air

kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=wither]
kill @e[type=ender_dragon]
kill @e[type=end_crystal]
schedule function vm:5t 5t
