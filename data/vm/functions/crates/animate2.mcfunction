execute as @e[type=item_display,tag=lobby_crate] run data merge entity @s {start_interpolation:-1,interpolation_duration:20,transformation:{left_rotation:[0f,0.099f,0f,-0.995f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.2f,1.2f,1.2f]}}

schedule function vm:crates/animate 20t
execute if score #crateOpening value matches 3 run particle minecraft:wax_off 30 15 -9 0.8 1.3 0.8 0 90
