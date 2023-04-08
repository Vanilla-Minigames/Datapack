data modify storage bedwars:maps free set value []
data modify storage bedwars:maps free append value {id:1,teams:4}
data modify storage bedwars:maps free append value {id:2,teams:4}
data modify storage bedwars:maps free append value {id:3,teams:2}
data modify storage bedwars:maps free append value {id:4,teams:4}
data modify storage bedwars:maps free append value {id:5,teams:4}
data modify storage bedwars:maps free append value {id:6,teams:4}
data modify storage bedwars:maps free append value {id:7,teams:4}
data modify storage bedwars:maps free append value {id:8,teams:4}
data modify storage bedwars:maps free append value {id:9,teams:4}

scoreboard objectives add bedwarsdeath deathCount
scoreboard objectives add bedwarskills playerKillCount
scoreboard objectives add bedwarsclick minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add bedwarscopper dummy
scoreboard objectives add bedwarsiron dummy
scoreboard objectives add bedwarsgold dummy
