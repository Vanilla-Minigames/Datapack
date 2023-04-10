scoreboard players set #foundId temp 0
execute store result score #lenght temp run data get storage api:uuid list
data modify storage api:uuid temp set from storage api:uuid list
execute unless score #lenght temp matches 0 run function api:uuid/check/without_id/repeat

execute if score #foundId temp matches 0 run function vm:join_server/first
execute if score #foundId temp matches 2.. run function vm:join_server/other_name