execute store result score #bingowait temp if entity @a[tag=bingowait]
execute if score #bingowait temp matches 0..1 run scoreboard players set #bingostart value 0
execute if score #bingowait temp matches 0..1 run schedule clear bingo:start
execute if score #bingowait temp matches 1 run title @a[tag=bingowait] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 store result score #playing temp if entity @a[tag=bingo]
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 if score #playing temp matches 1.. run title @a[tag=bingowait] actionbar {"text":"Bingo game running! Waiting...","color":"red"}
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 if score #playing temp matches 0 run title @a[tag=bingowait] actionbar ""
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 if score #playing temp matches 0 run scoreboard players set @a[tag=bingowait] xpcountdown 15
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 if score #playing temp matches 0 run schedule function bingo:start 15s
execute if score #bingowait temp matches 2.. if score #bingostart value matches 0 if score #playing temp matches 0 run scoreboard players set #bingostart value 1

execute as @a[tag=bingo,scores={bingodeath=1..}] at @s run tellraw @a[distance=0..] [{"text":"[","color":"gray"},{"text":"Bingo","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" died.","color":"aqua"}]
scoreboard players add @a[tag=bingo,scores={bingodeath=1..}] bingoalldeath 1
scoreboard players reset @a[scores={bingodeath=1..}] bingodeath

# Bingo is set to 2 in the bingo start function to help players find the command
tellraw @a[tag=bingo,scores={Bingo=1..}] [{"text":"","color":"green","clickEvent":{"action":"run_command","value":"/trigger Bingo"}},{"text":"[","color":"gray"},{"text":"Bingo","color":"yellow"},{"text":"] ","color":"gray"},{"text":"Current bingo items:\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[0].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[1].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[2].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[3].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[4].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[5].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[6].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[7].name"},{"text":"\n- ","color":"yellow"},{"storage":"bingo:data","nbt":"current[8].name"}]
tellraw @a[tag=bingo,scores={Bingo=2}] [{"text":"[","color":"gray","clickEvent":{"action":"run_command","value":"/trigger Bingo"}},{"text":"Bingo","color":"yellow"},{"text":"] ","color":"gray"},{"text":"You can always view the bingo card using ","color":"yellow"},{"text":"/trigger Bingo","color":"green"}]
scoreboard players reset @a[scores={Bingo=1..}] Bingo
scoreboard players enable @a[tag=bingo] Bingo
