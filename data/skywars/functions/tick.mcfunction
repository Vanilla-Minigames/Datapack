execute in skywars:1_16/1 store result score #skywars_1_16 temp if entity @a[distance=0.01..,tag=skywars]

execute store result score #skywarswait_1_8 temp if entity @a[tag=skywarswait_1_8]
execute if score #skywarswait_1_8 temp matches 0..1 run scoreboard players set #skywarsstart_1_8 value 0
execute if score #skywarswait_1_8 temp matches 1 run title @a[tag=skywarswait_1_8] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 store result score #availablemaps temp if data storage skywars:maps_1_8 free[]
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 0 run title @a[tag=skywarswait_1_8] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=skywarswait_1_8] actionbar ""
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run xp set @a[tag=skywarswait_1_8] 15 levels
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run tag @a[tag=skywarswait_1_8] add xpcountdown
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run schedule function skywars:start_1_8 15s
execute if score #skywarswait_1_8 temp matches 2.. if score #skywarsstart_1_8 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #skywarsstart_1_8 value 1

execute store result score #skywarswait_1_16 temp if entity @a[tag=skywarswait_1_16]
execute if score #skywarswait_1_16 temp matches 0..1 run scoreboard players set #skywarsstart_1_16 value 0
execute if score #skywarswait_1_16 temp matches 1 run title @a[tag=skywarswait_1_16] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 store result score #availablemaps temp if data storage skywars:maps_1_16 free[]
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 0 run title @a[tag=skywarswait_1_16] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=skywarswait_1_16] actionbar ""
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run xp set @a[tag=skywarswait_1_16] 15 levels
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run tag @a[tag=skywarswait_1_16] add xpcountdown
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run schedule function skywars:start_1_16 15s
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #skywarsstart_1_16 value 1

execute as @a[scores={skywarsdeath=1..},tag=skywars] unless entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" died.","color":"aqua"}]
execute as @a[scores={skywarsdeath=1..},tag=skywars] if entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" was killed by ","color":"aqua"},{"selector":"@a[scores={skywarskills=1..},tag=skywars]"},{"text":".","color":"aqua"}]
execute as @a[scores={skywarskills=1..},tag=skywars] run function vm:health
execute as @a[scores={skywarsdeath=1..},tag=skywars] if entity @a[scores={skywarskills=1..},tag=skywars] run tellraw @a[scores={skywarsdeath=1..},tag=skywars] [{"text":"[","color":"gray"},{"text":"Skywars","color":"yellow"},{"text":"] "},{"text":"Health of ","color":"aqua"},{"selector":"@a[scores={skywarskills=1..},tag=skywars]"},{"text":": ","color":"aqua"},{"nbt":"health","storage":"vm:health"}]
scoreboard players set @a[scores={skywarsdeath=1..},tag=skywars] l 1
scoreboard players reset @a skywarsdeath
scoreboard players reset @a skywarskills
