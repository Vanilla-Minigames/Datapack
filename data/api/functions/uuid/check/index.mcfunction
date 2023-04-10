#
# Description: 	This function is used to check the uuid of the player for 
#				joining the first time, again, with an other name, or with an other name that 
#				has already been used by an other player
# Author: 		Meier Lukas
# Last Changes: 2022-01-04
###

execute store result score #current_uuid_0 temp run data get entity @s UUID[0]
execute store result score #current_uuid_1 temp run data get entity @s UUID[1]
execute store result score #current_uuid_2 temp run data get entity @s UUID[2]
execute store result score #current_uuid_3 temp run data get entity @s UUID[3]

execute if score @s id matches 1.. run function api:uuid/check/with_id
execute unless score @s id matches 1.. run function api:uuid/check/without_id