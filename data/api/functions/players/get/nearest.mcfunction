scoreboard players operation #id temp = @p ID
data modify storage api:common get set from storage api:players list
function api:common/get
execute if data storage api:common result run data modify storage api:players nearest set from storage api:common result
