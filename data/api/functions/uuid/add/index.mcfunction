data modify storage api:uuid list append value {id: 0, uuid: []}
execute store result storage api:uuid list[-1].id int 1 run scoreboard players get @s ID
data modify storage api:uuid list[-1].uuid set from entity @s UUID