scoreboard objectives add rank dummy

data modify storage api:ranks playerName set value {selected: ""}
data modify storage api:ranks playerName.player set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"gray"}'
data modify storage api:ranks playerName.premium set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"gold"}'
data modify storage api:ranks playerName.rainbow set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"green"}'
data modify storage api:ranks playerName.content_creator set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"light_purple"}'
data modify storage api:ranks playerName.builder set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"dark_aqua"}'
data modify storage api:ranks playerName.helper set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"blue"}'
data modify storage api:ranks playerName.developer set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"aqua"}'
data modify storage api:ranks playerName.moderator set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"blue"}'
data modify storage api:ranks playerName.admin set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"red"}'

scoreboard players set #player_rank value 0
scoreboard players set #premium_rank value 1
scoreboard players set #rainbow_rank value 2
scoreboard players set #content_creator_rank value 3
scoreboard players set #builder_rank value 4
scoreboard players set #helper_rank value 5
scoreboard players set #developer_rank value 6
scoreboard players set #moderator_rank value 7
scoreboard players set #admin_rank value 8