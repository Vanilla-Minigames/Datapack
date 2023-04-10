scoreboard players add #crateOpening value 1
execute as @e[type=item_display,tag=lobby_crate] run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]}}

execute if score #crateOpening value matches 1..5 run schedule function vm:crates/animate2 20t
execute if score #crateOpening value matches 1 run particle minecraft:wax_on 30 15 -9 0.8 1.3 0.8 0 90
execute if score #crateOpening value matches 6 as @a[tag=crate_open] run function vm:crates/loot
execute if score #crateOpening value matches 6 run kill @e[type=item_display,tag=lobby_crate]
execute if score #crateOpening value matches 6 run scoreboard players set #crateOpening value 0
