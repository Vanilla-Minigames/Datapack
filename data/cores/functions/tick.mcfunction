execute store result score #coreswait temp if entity @a[tag=coreswait]
execute if score #coreswait temp matches 0..1 run scoreboard players set #coresstart value 0
execute if score #coreswait temp matches 0..1 run schedule clear cores:start
execute if score #coreswait temp matches 1 run title @a[tag=coreswait] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 store result score #availablemaps temp if data storage cores:maps free[]
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 if score #availablemaps temp matches 0 run title @a[tag=coreswait] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=coreswait] actionbar ""
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set @a[tag=coreswait] xpcountdown 15
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 if score #availablemaps temp matches 1.. run schedule function cores:start 15s
execute if score #coreswait temp matches 2.. if score #coresstart value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #coresstart value 1

execute as @a[scores={coresdeath=1..},tag=cores] unless entity @a[scores={coreskills=1..},tag=cores] run tellraw @a[tag=cores] [{"text":"[","color":"gray"},{"text":"cores","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" died.","color":"aqua"}]
execute as @a[scores={coresdeath=1..},tag=cores] if entity @a[scores={coreskills=1..},tag=cores] run tellraw @a[tag=cores] [{"text":"[","color":"gray"},{"text":"cores","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" was killed by ","color":"aqua"},{"selector":"@a[scores={coreskills=1..},tag=cores]"},{"text":".","color":"aqua"}]
execute as @a[scores={coresdeath=1..},tag=cores] run clear @s
scoreboard players add @a[tag=cores,scores={coresdeath=1..}] coresalldeath 1
scoreboard players add @a[tag=cores,scores={coreskills=1..}] coresallkills 1
scoreboard players reset @a[scores={coresdeath=1..}] coresdeath
scoreboard players reset @a[scores={coreskills=1..}] coreskills

execute as @a[tag=cores,tag=coresred] at @s unless entity @a[tag=cores,tag=coresblue,distance=0.01..] unless entity @a[tag=cores,tag=coresyellow,distance=0.01..] unless entity @a[tag=cores,tag=coresgreen,distance=0.01..] run function cores:win
execute as @a[tag=cores,tag=coresblue] at @s unless entity @a[tag=cores,tag=coresred,distance=0.01..] unless entity @a[tag=cores,tag=coresyellow,distance=0.01..] unless entity @a[tag=cores,tag=coresgreen,distance=0.01..] run function cores:win
execute as @a[tag=cores,tag=coresyellow] at @s unless entity @a[tag=cores,tag=coresred,distance=0.01..] unless entity @a[tag=cores,tag=coresblue,distance=0.01..] unless entity @a[tag=cores,tag=coresgreen,distance=0.01..] run function cores:win
execute as @a[tag=cores,tag=coresgreen] at @s unless entity @a[tag=cores,tag=coresred,distance=0.01..] unless entity @a[tag=cores,tag=coresblue,distance=0.01..] unless entity @a[tag=cores,tag=coresyellow,distance=0.01..] run function cores:win

execute as @a[tag=cores,scores={coresbeacon=1..}] at @s run tellraw @a[distance=0..] [{"text":"[","color":"gray"},{"text":"Cores","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" broke the core of team ","color":"aqua"},{"text":"?","color":"gold"},{"text":"!","color":"aqua"}]
scoreboard players add @a[tag=cores,scores={coresbeacon=1..}] coresallbeacon 1
scoreboard players reset @a[scores={coresbeacon=1..}] coresbeacon
