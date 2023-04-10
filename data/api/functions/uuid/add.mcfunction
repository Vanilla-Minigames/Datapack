execute unless entity @s[type=player] run tellraw @a[tag=debug] ["",{"text":"["},{"text":"Error","color":"dark_red"},{"text":"] "},{"text":"Not able to execute this function (add uuid) as ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]
execute unless score @s[type=player] ID matches 1..4096 run tellraw @a[tag=debug] ["",{"text":"["},{"text":"Error","color":"dark_red"},{"text":"] "},{"text":"Unable to add player to uuid list with invalid id!","color":"red"}]
execute if entity @s[type=player] if score @s ID matches 1..4096 run function api:uuid/add/index
