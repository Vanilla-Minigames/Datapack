tellraw @s[scores={joinme=6..}] [{"text":"[","color":"gray"},{"text":"JoinMe","color":"gold"},{"text":"] "},{"text":"Unknown game!","color":"red"}]

execute as @s[scores={joinme=1}] run function skywars:join_1_8
execute as @s[scores={joinme=2}] run function skywars:join_1_16
execute as @s[scores={joinme=3}] run function bedwars:join
execute as @s[scores={joinme=4}] run function bingo:join
execute as @s[scores={joinme=5}] run function cores:join
