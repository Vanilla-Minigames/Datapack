tellraw @s[scores={JoinMe=5..}] [{"text":"[","color":"gray"},{"text":"JoinMe","color":"gold"},{"text":"] "},{"text":"Unknown game!","color":"red"}]

execute as @s[scores={JoinMe=1}] run function skywars:join_1_8
execute as @s[scores={JoinMe=2}] run function skywars:join_1_16
execute as @s[scores={JoinMe=3}] run function bedwars:join
execute as @s[scores={JoinMe=4}] run function bingo:join
