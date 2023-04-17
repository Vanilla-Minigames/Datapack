data modify storage cores:maps free set value []
data modify storage cores:maps free append value {id:1,teams:2}

scoreboard objectives add coresdeath deathCount
scoreboard objectives add coreskills playerKillCount
scoreboard objectives add coresbeacon minecraft.mined:minecraft.beacon

scoreboard objectives add coresgames dummy
scoreboard objectives add coreswins dummy
scoreboard objectives add coresallbeacon dummy
scoreboard objectives add coresalldeath dummy
scoreboard objectives add coresallkills dummy
