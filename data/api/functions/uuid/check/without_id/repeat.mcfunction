data modify storage api:uuid temp2 set from storage api:uuid temp[0].UUID

execute store result score #storage_uuid_0 temp run data get storage api:uuid temp[0].uuid[0]
execute store result score #storage_uuid_1 temp run data get storage api:uuid temp[0].uuid[1]
execute store result score #storage_uuid_2 temp run data get storage api:uuid temp[0].uuid[2]
execute store result score #storage_uuid_3 temp run data get storage api:uuid temp[0].uuid[3]

function api:uuid/check/compare_uuids

execute if score #matches temp matches 1 store result score #foundId temp run data get storage api:uuid temp[0].id

scoreboard players remove #length temp 1

data remove storage api:uuid temp[0]

execute unless score #length temp matches ..0 if score #matches temp matches 0 run function api:uuid/check/without_id/repeat