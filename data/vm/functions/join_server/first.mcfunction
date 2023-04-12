# This function is executed for every player that joins the server for the first time.

function api:players/create/current

tellraw @s [{"selector":"@s","color":"aqua"},{"text":" joined for the first time!","color":"green"}]
scoreboard players set @s rank 90
scoreboard players set @s l 1
team join 90player @s
