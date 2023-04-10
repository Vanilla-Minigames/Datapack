execute in bedwars:10 run fill -40 0 -40 40 48 40 air

execute in bedwars:10 run place template bedwars:center10 -6 2 -6
execute in bedwars:10 run place template bedwars:iron10 -22 4 -22 180
execute in bedwars:10 run place template bedwars:iron10 -22 4 22 clockwise_90
execute in bedwars:10 run place template bedwars:iron10 22 4 -22 counterclockwise_90
execute in bedwars:10 run place template bedwars:iron10 22 4 22
execute in bedwars:10 run place template bedwars:isle10 -8 0 -26 counterclockwise_90
execute in bedwars:10 run place template bedwars:isle10 -26 0 8 180
execute in bedwars:10 run place template bedwars:isle10 8 0 26 clockwise_90
execute in bedwars:10 run place template bedwars:isle10 26 0 -8
execute in bedwars:10 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:10 run fill -41 0 -41 -41 255 41 barrier
execute in bedwars:10 run fill -41 0 -41 41 255 -41 barrier
execute in bedwars:10 run fill -41 0 41 41 255 41 barrier
execute in bedwars:10 run fill 41 0 -41 41 255 41 barrier
execute in bedwars:10 run fill -40 49 -40 40 49 40 barrier

execute in bedwars:10 if entity @a[tag=bedwarsred,distance=0..] run setblock -2 13 33 red_bed[facing=west,occupied=true,part=foot]
execute in bedwars:10 if entity @a[tag=bedwarsred,distance=0..] run setblock -3 13 33 red_bed[facing=west,occupied=true,part=head]
execute in bedwars:10 if entity @a[tag=bedwarsblue,distance=0..] run setblock -33 13 -2 blue_bed[facing=north,occupied=true,part=foot]
execute in bedwars:10 if entity @a[tag=bedwarsblue,distance=0..] run setblock -33 13 -3 blue_bed[facing=north,occupied=true,part=head]
execute in bedwars:10 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 2 13 -33 yellow_bed[facing=east,occupied=true,part=foot]
execute in bedwars:10 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 3 13 -33 yellow_bed[facing=east,occupied=true,part=head]
execute in bedwars:10 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 33 13 2 lime_bed[facing=south,occupied=true,part=foot]
execute in bedwars:10 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 33 13 3 lime_bed[facing=south,occupied=true,part=head]

execute in bedwars:10 if entity @a[tag=bedwarsred,distance=0..] run fill 4 21 33 -1 23 35 red_concrete replace white_concrete
execute in bedwars:10 if entity @a[tag=bedwarsblue,distance=0..] run fill -33 21 4 -35 23 -1 blue_concrete replace white_concrete
execute in bedwars:10 if entity @a[tag=bedwarsyellow,distance=0..] run fill -4 21 -33 1 23 -35 yellow_concrete replace white_concrete
execute in bedwars:10 if entity @a[tag=bedwarsgreen,distance=0..] run fill 33 21 -4 35 23 1 lime_concrete replace white_concrete

execute in bedwars:10 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:10 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:10 positioned -2 10 -33 run function bedwars:villager
execute in bedwars:10 positioned 33 10 -2 run function bedwars:villager
execute in bedwars:10 positioned 2 10 33 run function bedwars:villager
execute in bedwars:10 positioned -33 10 2 run function bedwars:villager
