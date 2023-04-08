execute store result score #skywarswait_1_8 temp if entity @a[tag=skywarswait_1_8]
execute if score #skywarswait_1_8 temp matches 0..1 run scoreboard players set #skywarsstart_1_8 value 0
execute if score #skywarswait_1_8 temp matches 1 run title @a[tag=skywarswait_1_8] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 store result score #availablemaps temp if data storage skywars:maps_1_8 free[]
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 0 run title @a[tag=skywarswait_1_8] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=skywarswait_1_8] actionbar ""
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set @a[tag=skywarswait_1_8] xpcountdown 15
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run schedule function skywars:start_1_8 15s
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #skywarsstart_1_8 value 1

execute store result score #skywarswait_1_16 temp if entity @a[tag=skywarswait_1_16]
execute if score #skywarswait_1_16 temp matches 0..1 run scoreboard players set #skywarsstart_1_16 value 0
execute if score #skywarswait_1_16 temp matches 1 run title @a[tag=skywarswait_1_16] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 store result score #availablemaps temp if data storage skywars:maps_1_16 free[]
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 0 run title @a[tag=skywarswait_1_16] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=skywarswait_1_16] actionbar ""
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set @a[tag=skywarswait_1_16] xpcountdown 15
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run schedule function skywars:start_1_16 15s
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #skywarsstart_1_16 value 1

execute as @a[scores={skywarsdeath=1..},tag=skywars] unless entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" died.","color":"aqua"}]
execute as @a[scores={skywarsdeath=1..},tag=skywars] if entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" was killed by ","color":"aqua"},{"selector":"@a[scores={skywarskills=1..},tag=skywars]"},{"text":".","color":"aqua"}]
execute as @a[scores={skywarskills=1..},tag=skywars] run function vm:health
execute as @a[scores={skywarsdeath=1..},tag=skywars] if entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[scores={skywarsdeath=1..},tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"text":"Health of ","color":"aqua"},{"selector":"@a[scores={skywarskills=1..},tag=skywars]"},{"text":": ","color":"aqua"},{"nbt":"health","storage":"vm:health"}]
scoreboard players set @a[scores={skywarsdeath=1..},tag=skywars] l 1
tag @a[scores={skywarsdeath=1..},tag=skywars] remove skywars
scoreboard players reset @a skywarsdeath
scoreboard players reset @a skywarskills

execute as @a[tag=skywars,tag=skywarsred] at @s unless entity @a[tag=skywars,tag=skywarsblue,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsyellow,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsgreen,distance=0.01..] run function skywars:win
execute as @a[tag=skywars,tag=skywarsblue] at @s unless entity @a[tag=skywars,tag=skywarsred,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsyellow,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsgreen,distance=0.01..] run function skywars:win
execute as @a[tag=skywars,tag=skywarsyellow] at @s unless entity @a[tag=skywars,tag=skywarsred,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsblue,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsgreen,distance=0.01..] run function skywars:win
execute as @a[tag=skywars,tag=skywarsgreen] at @s unless entity @a[tag=skywars,tag=skywarsred,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsblue,distance=0.01..] unless entity @a[tag=skywars,tag=skywarsyellow,distance=0.01..] run function skywars:win
