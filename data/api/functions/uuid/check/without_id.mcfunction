scoreboard players set #foundId temp 0
execute store result score #lenght temp run data get storage api:uuid list
data modify storage api:uuid temp set from storage api:uuid list
execute unless score #lenght temp matches 0 run function api:uuid/check/without_id/repeat

# TODO: handle firstjoin or othername join
execute if score #foundId temp matches 0 run function lobby:join/first
execute if score #foundId temp matches 2.. run function lobby:join/other_name