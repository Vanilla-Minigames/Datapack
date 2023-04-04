execute in skywars:1_16/1 store result score #skywars_1_16 temp if entity @a[distance=0.01..,tag=skywars]
#/data modify storage skywars:maps_1_16 free append value {id:1,teams:4}
execute store result score #skywarswait_1_16 temp if entity @a[tag=skywarswait]
execute if score #skywarswait_1_16 temp matches 0..1 run scoreboard players set #skywarsstart_1_16 value 0
execute if score #skywarswait_1_16 temp matches 1 run title @a[tag=skywarswait] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 store result score #availablemaps temp if data storage skywars:maps_1_16 free[]
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 0 run title @a[tag=skywarswait] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=skywarswait] actionbar ""
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run xp set @a[tag=skywarswait] 15 levels
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run tag @a[tag=skywarswait] add xpcountdown
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run schedule function skywars:start_1_16 15s
execute if score #skywarswait_1_16 temp matches 2.. if score #skywarsstart_1_16 value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #skywarsstart_1_16 value 1
