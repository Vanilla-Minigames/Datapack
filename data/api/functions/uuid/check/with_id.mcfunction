function api:players/get/current
execute store result score #storage_uuid_0 temp run data get storage api:players current.uuid[0]
execute store result score #storage_uuid_1 temp run data get storage api:players current.uuid[1]
execute store result score #storage_uuid_2 temp run data get storage api:players current.uuid[2]
execute store result score #storage_uuid_3 temp run data get storage api:players current.uuid[3]

function api:uuid/check/compare_uuids

execute if score #matches temp matches 0 run function api:uuid/check/with_id/uuid_not_matches