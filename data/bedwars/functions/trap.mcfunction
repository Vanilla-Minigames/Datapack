execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsred] as @a[tag=bedwars,tag=!bedwarsred,distance=..1] run tellraw @a[tag=bedwars,tag=bedwarsred] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"A trap was set off!","color":"red"}]
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsred] as @a[tag=bedwars,tag=!bedwarsred,distance=..1] run effect give @s blindness 5 255 true
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsred] as @a[tag=bedwars,tag=!bedwarsred,distance=..1] run effect give @s mining_fatigue 5 255 true
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsred] at @s if entity @a[tag=bedwars,tag=!bedwarsred,distance=..1] run fill ~ ~ ~ ~ ~ ~ air replace tripwire
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsred] at @s if entity @a[tag=bedwars,tag=!bedwarsred,distance=..1] run kill @s

execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsblue] as @a[tag=bedwars,tag=!bedwarsblue,distance=..1] run tellraw @a[tag=bedwars,tag=bedwarsblue] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"A trap was set off!","color":"red"}]
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsblue] as @a[tag=bedwars,tag=!bedwarsblue,distance=..1] run effect give @s blindness 5 255 true
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsblue] as @a[tag=bedwars,tag=!bedwarsblue,distance=..1] run effect give @s mining_fatigue 5 255 true
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsblue] at @s if entity @a[tag=bedwars,tag=!bedwarsblue,distance=..1] run fill ~ ~ ~ ~ ~ ~ air replace tripwire
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsblue] at @s if entity @a[tag=bedwars,tag=!bedwarsblue,distance=..1] run kill @s

execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsyellow] as @a[tag=bedwars,tag=!bedwarsyellow,distance=..1] run tellraw @a[tag=bedwars,tag=bedwarsyellow] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"A trap was set off!","color":"red"}]
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsyellow] as @a[tag=bedwars,tag=!bedwarsyellow,distance=..1] run effect give @s blindness 5 255 true
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsyellow] as @a[tag=bedwars,tag=!bedwarsyellow,distance=..1] run effect give @s mining_fatigue 5 255 true
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsyellow] at @s if entity @a[tag=bedwars,tag=!bedwarsyellow,distance=..1] run fill ~ ~ ~ ~ ~ ~ air replace tripwire
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsyellow] at @s if entity @a[tag=bedwars,tag=!bedwarsyellow,distance=..1] run kill @s

execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsgreen] as @a[tag=bedwars,tag=!bedwarsgreen,distance=..1] run tellraw @a[tag=bedwars,tag=bedwarsgreen] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"A trap was set off!","color":"red"}]
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsgreen] as @a[tag=bedwars,tag=!bedwarsgreen,distance=..1] run effect give @s blindness 5 255 true
execute at @e[type=marker,tag=bedwarstrap,tag=bedwarsgreen] as @a[tag=bedwars,tag=!bedwarsgreen,distance=..1] run effect give @s mining_fatigue 5 255 true
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsgreen] at @s if entity @a[tag=bedwars,tag=!bedwarsgreen,distance=..1] run fill ~ ~ ~ ~ ~ ~ air replace tripwire
execute as @e[type=marker,tag=bedwarstrap,tag=bedwarsgreen] at @s if entity @a[tag=bedwars,tag=!bedwarsgreen,distance=..1] run kill @s
