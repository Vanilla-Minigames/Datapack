execute unless entity @s[type=player] run tellraw @a[tag=debug] ["",{"text":"["},{"text":"Error","color":"dark_red"},{"text":"] "},{"text":"Unable to create new player as ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]
execute if score @s[type=player] ID matches 1.. run tellraw @a[tag=debug] ["",{"text":"["},{"text":"Warning","color":"gold"},{"text":"] "},{"text":"Not able to recreate a player that already has an id (","color":"yellow"},{"score":{"name":"@s","objective":"ID"},"color":"yellow"},{"text":") defined!","color":"yellow"}]
execute if entity @s[type=player] unless score @s ID matches 1.. run function api:players/create/main

tag @s add registered