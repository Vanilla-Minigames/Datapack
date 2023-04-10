advancement revoke @s only vm:open_crate

execute if score #crateOpening value matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Crates","color":"aqua"},{"text":"] "},{"text":"A crate is being opened already!","color":"red"}]
execute unless score #crateOpening value matches 1.. unless score @s crates matches 1.. run tellraw @s [{"text":"[","color":"gray"},{"text":"Crates","color":"aqua"},{"text":"] "},{"text":"You have no crates left!","color":"red"}]
execute unless score #crateOpening value matches 1.. if score @s crates matches 1.. run kill @e[type=item_display,tag=lobby_crate]
execute unless score #crateOpening value matches 1.. if score @s crates matches 1.. run summon item_display 30 14.4 -9 {Tags:["lobby_crate"],brightness:{sky:15,block:15},transformation:{left_rotation:[0f,0.099f,0f,-0.995f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]},item:{id:"minecraft:tripwire_hook",Count:1b}}
execute unless score #crateOpening value matches 1.. if score @s crates matches 1.. run tag @s add crate_open
execute unless score #crateOpening value matches 1.. if score @s crates matches 1.. run function vm:crates/animate
execute unless score #crateOpening value matches 1.. if score @s crates matches 1.. run scoreboard players remove @s crates 1
