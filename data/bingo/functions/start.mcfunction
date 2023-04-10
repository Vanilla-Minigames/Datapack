data modify storage bingo:data current set value []
function bingo:pick_item

scoreboard players add @a[tag=bingowait] bingogames 1
scoreboard players operation @a[tag=bingowait] map = #bingomap temp
effect clear @a[tag=bingowait]
clear @a[tag=bingowait]
tag @a[tag=bingowait] add nohitcooldown
tag @a[tag=bingowait] add bingo
execute as @a[tag=bingowait] run gamemode survival @s
tag @a[tag=bingowait] remove bingowait
