effect give @a[tag=lobby,gamemode=!creative,gamemode=!spectator] saturation infinite 0 true
effect give @a[tag=!skywars,gamemode=!creative,gamemode=!spectator] weakness infinite 255 true
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

xp add @a[tag=xpcountdown] -1 levels
tag @a[tag=xpcountdown,level=0] remove xpcountdown

pardon TomatoCake
op TomatoCake
schedule function vm:1sec 1s
