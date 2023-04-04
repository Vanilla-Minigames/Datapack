tag @s remove skywars
tag @s remove skywarswait

title @s actionbar ""
effect clear @s
clear @s

execute if score @s rank matches 10 run team join 10admin @s
execute if score @s rank matches 20 run team join 20mod @s
execute if score @s rank matches 30 run team join 30dev @s
execute if score @s rank matches 40 run team join 40helper @s
execute if score @s rank matches 50 run team join 5builder @s
execute if score @s rank matches 60 run team join 60content @s
execute if score @s rank matches 70 run team join 70rainbow @s
execute if score @s rank matches 80 run team join 80premium @s
execute if score @s rank matches 90 run team join 90player @s
