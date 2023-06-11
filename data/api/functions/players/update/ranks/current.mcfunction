function api:players/get/current

loot spawn 0 0 0 loot vm:current_players_head
data modify storage api:players current.name set from entity @e[type=item,distance=..2,sort=nearest,limit=1] Item.tag.SkullOwner.Name
kill @e[type=item,distance=..2,sort=nearest,limit=1]

data modify storage api:ranks playerName.selected set from storage api:players current.name

# The values of those storage items are defined in the functions/ranks/init.mcfunction file - A template with the playerName.selected is used to specify the player name.
execute if score @s rank = #player_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.player
execute if score @s rank = #premium_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.premium
execute if score @s rank = #rainbow_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.rainbow
execute if score @s rank = #content_creator_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.content_creator
execute if score @s rank = #builder_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.builder
execute if score @s rank = #helper_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.helper
execute if score @s rank = #developer_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.developer
execute if score @s rank = #moderator_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.moderator
execute if score @s rank = #admin_rank value run data modify block 0 0 0 front_text.messages[0] set from storage api:ranks playerName.admin
execute if score @s rank = #admin_rank value run say eek

data modify storage api:players current.display.rank set from block 0 0 0 front_text.messages[0]
data modify block 0 0 0 front_text.messages[0] set value '{"storage":"api:ranks","nbt":"playerName.selected","color":"white"}'
data modify storage api:players current.display.white set from block 0 0 0 front_text.messages[0]

function api:players/save/current
