execute unless entity @s[type=player] run tellraw @a[tag=debug] ["",{"text":"["},{"text":"Error","color":"dark_red"},{"text":"] "},{"text":"Not able to execute this function (check uuid) as ","color":"red"},{"selector":"@s","color":"red"},{"text":"!","color":"red"}]
execute if entity @s[type=player] run function api:uuid/check/index
