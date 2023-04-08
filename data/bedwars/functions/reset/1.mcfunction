execute in bedwars:1 run fill -50 0 -50 50 48 50 air

execute in bedwars:1 run place template bedwars:center1 -2 0 -2
execute in bedwars:1 run place template bedwars:iron1 -24 0 -24
execute in bedwars:1 run place template bedwars:iron1 24 0 -24
execute in bedwars:1 run place template bedwars:iron1 24 0 24
execute in bedwars:1 run place template bedwars:iron1 -24 0 24
execute in bedwars:1 run place template bedwars:isle1 -4 2 -39
execute in bedwars:1 run place template bedwars:isle1 -39 2 4 counterclockwise_90
execute in bedwars:1 run place template bedwars:isle1 4 2 39 180
execute in bedwars:1 run place template bedwars:isle1 39 2 -4 clockwise_90
execute in bedwars:1 run kill @e[type=item,x=-50,z=-50,dx=100,dz=100,y=0,dy=50]

execute in bedwars:1 run fill -51 0 -51 -51 255 51 barrier
execute in bedwars:1 run fill -51 0 -51 51 255 -51 barrier
execute in bedwars:1 run fill -51 0 51 51 255 51 barrier
execute in bedwars:1 run fill 51 0 -51 51 255 51 barrier
execute in bedwars:1 run fill -50 49 -50 50 49 50 barrier

execute in bedwars:1 if entity @a[tag=bedwarsred,distance=0..] run setblock -34 4 0 red_bed[facing=west,occupied=true,part=foot]
execute in bedwars:1 if entity @a[tag=bedwarsred,distance=0..] run setblock -35 4 0 red_bed[facing=west,occupied=true,part=head]
execute in bedwars:1 if entity @a[tag=bedwarsblue,distance=0..] run setblock 0 4 -34 blue_bed[facing=north,occupied=true,part=foot]
execute in bedwars:1 if entity @a[tag=bedwarsblue,distance=0..] run setblock 0 4 -35 blue_bed[facing=north,occupied=true,part=head]
execute in bedwars:1 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 34 4 0 yellow_bed[facing=east,occupied=true,part=foot]
execute in bedwars:1 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 35 4 0 yellow_bed[facing=east,occupied=true,part=head]
execute in bedwars:1 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 0 4 34 lime_bed[facing=south,occupied=true,part=foot]
execute in bedwars:1 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 0 4 35 lime_bed[facing=south,occupied=true,part=head]

execute in bedwars:1 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:1 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:1 positioned 27.0 4 -2.0 run function bedwars:villager
execute in bedwars:1 positioned 27.0 4 3.0 run function bedwars:villager
execute in bedwars:1 positioned 3.0 4 27.0 run function bedwars:villager
execute in bedwars:1 positioned -2.0 4 27.0 run function bedwars:villager
execute in bedwars:1 positioned -26.0 4 3.0 run function bedwars:villager
execute in bedwars:1 positioned -26.0 4 -2.0 run function bedwars:villager
execute in bedwars:1 positioned -2.0 4 -26.0 run function bedwars:villager
execute in bedwars:1 positioned 3.0 4 -26.0 run function bedwars:villager
