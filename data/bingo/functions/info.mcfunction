scoreboard objectives add Bingo trigger {"text":"Bingo","color":"green"}
scoreboard objectives add bingoitem dummy
scoreboard objectives add bingodeath deathCount

scoreboard objectives add bingogames dummy
scoreboard objectives add bingowins dummy
scoreboard objectives add bingoalldeath dummy

scoreboard players set #bingodimension value 1
execute in bingo:1 run forceload add 0 0

function bingo:load_items
