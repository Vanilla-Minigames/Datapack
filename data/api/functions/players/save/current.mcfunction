scoreboard players operation #id temp = @s ID
data modify storage api:common save set from storage api:players list
data modify storage api:common payload set from storage api:players current
function api:common/save
data modify storage api:players list set from storage api:common save
