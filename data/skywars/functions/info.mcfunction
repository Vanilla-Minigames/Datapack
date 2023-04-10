#data modify storage skywars:maps_1_8 free set value []
#data modify storage skywars:maps_1_8 free append value {id:1,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:2,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:3,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:4,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:5,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:6,teams:4}
#data modify storage skywars:maps_1_8 free append value {id:7,teams:4}
#data modify storage skywars:maps_1_16 free set value []
#data modify storage skywars:maps_1_16 free append value {id:1,teams:4}

scoreboard objectives add skywarsdeath deathCount
scoreboard objectives add skywarskills playerKillCount

scoreboard objectives add skywarsgames dummy
scoreboard objectives add skywarswins dummy
scoreboard objectives add skywarsalldeath dummy
scoreboard objectives add skywarsallkills dummy
