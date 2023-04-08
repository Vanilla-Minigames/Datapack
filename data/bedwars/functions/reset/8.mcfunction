execute in bedwars:8 run fill -50 0 -50 50 48 50 air

execute in bedwars:8 run place template bedwars:center8 -8 0 -8
execute in bedwars:8 run place template bedwars:iron8 -13 5 -26
execute in bedwars:8 run place template bedwars:iron8 -27 5 13 counterclockwise_90
execute in bedwars:8 run place template bedwars:iron8 14 5 26 180
execute in bedwars:8 run place template bedwars:iron8 26 5 -13 clockwise_90
execute in bedwars:8 run place template bedwars:isle8 -6 2 -41
execute in bedwars:8 run place template bedwars:isle8 6 2 41 180
execute in bedwars:8 run place template bedwars:isle8 -41 2 6 counterclockwise_90
execute in bedwars:8 run place template bedwars:isle8 41 2 -6 clockwise_90
execute in bedwars:8 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:8 run fill -51 0 -51 -51 255 51 barrier
execute in bedwars:8 run fill -51 0 51 51 255 51 barrier
execute in bedwars:8 run fill 51 0 51 51 255 -51 barrier
execute in bedwars:8 run fill 51 0 -51 -51 255 -51 barrier
execute in bedwars:8 run fill -50 49 -50 50 49 50 barrier

execute in bedwars:8 if entity @a[tag=bedwarsred,distance=0..] run setblock -38 8 0 red_bed[facing=west,occupied=true,part=foot]
execute in bedwars:8 if entity @a[tag=bedwarsred,distance=0..] run setblock -39 8 0 red_bed[facing=west,occupied=true,part=head]
execute in bedwars:8 if entity @a[tag=bedwarsblue,distance=0..] run setblock 0 8 -38 blue_bed[facing=north,occupied=true,part=foot]
execute in bedwars:8 if entity @a[tag=bedwarsblue,distance=0..] run setblock 0 8 -39 blue_bed[facing=north,occupied=true,part=head]
execute in bedwars:8 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 38 8 0 yellow_bed[facing=east,occupied=true,part=foot]
execute in bedwars:8 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 39 8 0 yellow_bed[facing=east,occupied=true,part=head]
execute in bedwars:8 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 0 8 38 lime_bed[facing=south,occupied=true,part=foot]
execute in bedwars:8 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 0 8 39 lime_bed[facing=south,occupied=true,part=head]

execute in bedwars:8 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:8 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:8 positioned 36 8 -4 run function bedwars:villager
execute in bedwars:8 positioned -4 8 -36 run function bedwars:villager
execute in bedwars:8 positioned -36 8 4 run function bedwars:villager
execute in bedwars:8 positioned 4 8 36 run function bedwars:villager
