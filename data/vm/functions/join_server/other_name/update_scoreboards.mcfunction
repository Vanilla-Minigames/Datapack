function api:players/get/current

execute store result score @s rank run data get storage api:players current.rankId
say execute store result score @s rank run data get storage api:players current.rankId

execute store result score @s playtime run data get storage api:players current.lobby.playtime
execute store result score @s coins run data get storage api:players current.lobby.coins

execute store result score @s skywarsgames run data get storage api:players current.statistics.skywars.games
execute store result score @s skywarswins run data get storage api:players current.statistics.skywars.wins
execute store result score @s skywarsalldeath run data get storage api:players current.statistics.skywars.deaths
execute store result score @s skywarsallkills run data get storage api:players current.statistics.skywars.kills

execute store result score @s bedwarsgames run data get storage api:players current.statistics.bedwars.games
execute store result score @s bedwarswins run data get storage api:players current.statistics.bedwars.wins
execute store result score @s bedwarsallbeds run data get storage api:players current.statistics.bedwars.beds
execute store result score @s bedwarsalldeath run data get storage api:players current.statistics.bedwars.deaths
execute store result score @s bedwarsallkills run data get storage api:players current.statistics.bedwars.kills
