execute store result score #crateloot temp run loot spawn ~ ~ ~ loot vm:crates
tag @s remove crate_open
particle minecraft:poof 30 15 -9 0.8 1.3 0.8 0 90
playsound minecraft:entity.player.levelup master @a 30 14.4 -9 1 0.9

execute if score #crateloot temp matches 0..220 run tellraw @s [{"text":"[","color":"gray"},{"text":"Crates","color":"aqua"},{"text":"] "},{"text":"You received ","color":"gold"},{"score":{"name":"#crateloot","objective":"temp"},"color":"green"},{"text":" coins","color":"green"},{"text":"!","color":"gold"}]
#execute if score #crateloot temp matches 0..220 run item replace entity @e[type=armor_stand,tag=crate,scores={crate_timer=255}] armor.head with rose_bush{CustomModelData:1}
#execute if score #crateloot temp matches 0..220 run scoreboard players operation @s coins += #crateloot temp
