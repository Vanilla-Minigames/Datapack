execute unless data storage api:players default run function api:players/create/default_schema
execute unless data storage api:players list run data modify storage api:players list set value []

data modify storage api:players list append from storage api:players default
data modify storage api:players list[-1].uuid set from entity @s UUID

scoreboard players add #Maxid ID 1
scoreboard players operation @s ID = #Maxid ID
execute store result storage api:players list[-1].id int 1 run scoreboard players get @s ID

execute positioned 0 0 0 run function api:players/update/ranks/current