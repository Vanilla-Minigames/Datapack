execute store result score #bedwarswait temp if entity @a[tag=bedwarswait]
execute if score #bedwarswait temp matches 0..1 run scoreboard players set #bedwarsstart value 0
execute if score #bedwarswait temp matches 1 run title @a[tag=bedwarswait] actionbar {"text":"Waiting for at least one more player...","color":"yellow"}
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 store result score #availablemaps temp if data storage bedwars:maps free[]
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 if score #availablemaps temp matches 0 run title @a[tag=bedwarswait] actionbar {"text":"No maps available! Waiting...","color":"red"}
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 if score #availablemaps temp matches 1.. run title @a[tag=bedwarswait] actionbar ""
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set @a[tag=bedwarswait] xpcountdown 15
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 if score #availablemaps temp matches 1.. run schedule function bedwars:start 15s
execute if score #bedwarswait temp matches 2.. if score #bedwarsstart value matches 0 if score #availablemaps temp matches 1.. run scoreboard players set #bedwarsstart value 1

execute as @a[scores={bedwarsdeath=1..},tag=bedwars] unless entity @a[scores={bedwarskills=1..},tag=bedwars] run tellraw @a[tag=bedwars] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" died.","color":"aqua"}]
execute as @a[scores={bedwarsdeath=1..},tag=bedwars] if entity @a[scores={bedwarskills=1..},tag=bedwars] run tellraw @a[tag=bedwars] [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"selector":"@s"},{"text":" was killed by ","color":"aqua"},{"selector":"@a[scores={bedwarskills=1..},tag=bedwars]"},{"text":".","color":"aqua"}]
scoreboard players reset @a bedwarsdeath
scoreboard players reset @a bedwarskills

#execute as @a[tag=bedwars,tag=bedwarsred] at @s unless entity @a[tag=bedwars,tag=bedwarsblue,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsyellow,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsgreen,distance=0.01..] run function bedwars:win
#execute as @a[tag=bedwars,tag=bedwarsblue] at @s unless entity @a[tag=bedwars,tag=bedwarsred,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsyellow,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsgreen,distance=0.01..] run function bedwars:win
#execute as @a[tag=bedwars,tag=bedwarsyellow] at @s unless entity @a[tag=bedwars,tag=bedwarsred,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsblue,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsgreen,distance=0.01..] run function bedwars:win
#execute as @a[tag=bedwars,tag=bedwarsgreen] at @s unless entity @a[tag=bedwars,tag=bedwarsred,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsblue,distance=0.01..] unless entity @a[tag=bedwars,tag=bedwarsyellow,distance=0.01..] run function bedwars:win

execute at @e[type=villager,tag=bedwars] if entity @a[tag=bedwars,distance=..7] unless entity @e[type=chest_minecart,tag=bedwars,distance=..2] run function bedwars:gui/summon
execute as @e[type=chest_minecart,tag=gui_used,tag=bedwars] store result score @s temp run data get entity @s Items
execute as @e[type=chest_minecart,tag=gui_used,tag=bedwars] unless score @s temp = @s value at @s run function bedwars:gui/click

#execute as @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"basetp"}}}] run tellraw @s [{"text":"[","color":"gray"},{"text":"BedWars","color":"yellow"},{"text":"] "},{"text":"Du wirst in 5 Sekunden zu deiner Base teleportiert!","color":"green"}]
#execute at @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"basetp"}}}] run particle portal ~ ~0.1 ~ 0.3 1 0.3 0.3 100
#execute as @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"basetp"}}}] run scoreboard players set @s bedwarscooldown 100
execute at @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"rettungsplattform"}}}] run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 white_wool replace air
execute at @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run particle lava ~ ~ ~ 0.3 1 0.3 0.2 30
execute at @a[tag=bedwars,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run fill ~ ~ ~ ~ ~ ~ tripwire replace air
execute at @a[tag=bedwars,tag=bedwarsred,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run summon marker ~ ~ ~ {Tags:["bedwarstrap","bedwarsred"]}
execute at @a[tag=bedwars,tag=bedwarsblue,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run summon marker ~ ~ ~ {Tags:["bedwarstrap","bedwarsblue"]}
execute at @a[tag=bedwars,tag=bedwarsyellow,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run summon marker ~ ~ ~ {Tags:["bedwarstrap","bedwarsyellow"]}
execute at @a[tag=bedwars,tag=bedwarsgreen,scores={bedwarsclick=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag:{type:"trap"}}}] run summon marker ~ ~ ~ {Tags:["bedwarstrap","bedwarsgreen"]}
item replace entity @a[tag=bedwars,scores={bedwarsclick=1..}] weapon.mainhand with air
scoreboard players set @a bedwarsclick 0

#scoreboard players remove @a[tag=bedwars,scores={bedwarscooldown=1..}] bedwarscooldown 1
#execute as @a[tag=bedwars,scores={bedwarscooldown=1}] run function bedwars:teleport
execute if entity @a[tag=bedwars] run function bedwars:trap
