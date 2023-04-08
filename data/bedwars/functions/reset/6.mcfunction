execute in bedwars:6 run fill -50 0 -50 50 48 50 air

execute in bedwars:6 run place template bedwars:center6 -12 2 -9
execute in bedwars:6 run place template bedwars:isle6 -30 0 -6 clockwise_90
execute in bedwars:6 run place template bedwars:isle6 -6 0 30
execute in bedwars:6 run place template bedwars:isle6 6 0 -30 180
execute in bedwars:6 run place template bedwars:isle6 30 0 6 counterclockwise_90
execute in bedwars:6 run kill @e[type=item,x=-50,z=-50,dx=100,dz=100,y=0,dy=50]

execute in bedwars:6 run fill -51 0 -51 -51 255 51 barrier
execute in bedwars:6 run fill -51 0 -51 51 255 -51 barrier
execute in bedwars:6 run fill -51 0 51 51 255 51 barrier
execute in bedwars:6 run fill 51 0 -51 51 255 51 barrier
execute in bedwars:6 run fill -50 49 -50 50 49 50 barrier

execute in bedwars:6 if entity @a[tag=bedwarsred,distance=0..] run setblock 38 7 -2 red_bed[facing=east,occupied=true,part=foot]
execute in bedwars:6 if entity @a[tag=bedwarsred,distance=0..] run setblock 39 7 -2 red_bed[facing=east,occupied=true,part=head]
execute in bedwars:6 if entity @a[tag=bedwarsblue,distance=0..] run setblock 2 7 38 blue_bed[facing=south,occupied=true,part=foot]
execute in bedwars:6 if entity @a[tag=bedwarsblue,distance=0..] run setblock 2 7 39 blue_bed[facing=south,occupied=true,part=head]
execute in bedwars:6 if entity @a[tag=bedwarsyellow,distance=0..] run setblock -38 7 2 yellow_bed[facing=west,occupied=true,part=foot]
execute in bedwars:6 if entity @a[tag=bedwarsyellow,distance=0..] run setblock -39 7 2 yellow_bed[facing=west,occupied=true,part=head]
execute in bedwars:6 if entity @a[tag=bedwarsgreen,distance=0..] run setblock -2 7 -38 lime_bed[facing=north,occupied=true,part=foot]
execute in bedwars:6 if entity @a[tag=bedwarsgreen,distance=0..] run setblock -2 7 -39 lime_bed[facing=north,occupied=true,part=head]

execute in bedwars:6 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:6 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:6 positioned -33 7 2 run function bedwars:villager
execute in bedwars:6 positioned -2 7 -33 run function bedwars:villager
execute in bedwars:6 positioned 33 7 -2 run function bedwars:villager
execute in bedwars:6 positioned 2 7 33 run function bedwars:villager
