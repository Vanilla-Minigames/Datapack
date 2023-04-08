execute in bedwars:7 run fill -40 0 -40 40 48 40 air

execute in bedwars:7 run place template bedwars:center7 -7 0 -7
execute in bedwars:7 run place template bedwars:isle7 -10 0 -35
execute in bedwars:7 run place template bedwars:isle7 10 0 35 180
execute in bedwars:7 run place template bedwars:isle7 -35 0 10 counterclockwise_90
execute in bedwars:7 run place template bedwars:isle7 35 0 -10 clockwise_90
execute in bedwars:7 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:7 run fill 41 0 41 41 255 -41 barrier
execute in bedwars:7 run fill 41 0 -41 -41 255 -41 barrier
execute in bedwars:7 run fill -41 0 -41 -41 255 41 barrier
execute in bedwars:7 run fill -41 0 41 41 255 41 barrier
execute in bedwars:7 run fill -40 49 -40 40 49 40 barrier

execute in bedwars:7 if entity @a[tag=bedwarsred,distance=0..] run setblock -33 4 8 red_bed[facing=west,occupied=true,part=foot]
execute in bedwars:7 if entity @a[tag=bedwarsred,distance=0..] run setblock -34 4 8 red_bed[facing=west,occupied=true,part=head]
execute in bedwars:7 if entity @a[tag=bedwarsblue,distance=0..] run setblock -8 4 -33 blue_bed[facing=north,occupied=true,part=foot]
execute in bedwars:7 if entity @a[tag=bedwarsblue,distance=0..] run setblock -8 4 -34 blue_bed[facing=north,occupied=true,part=head]
execute in bedwars:7 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 33 4 -8 yellow_bed[facing=east,occupied=true,part=foot]
execute in bedwars:7 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 34 4 -8 yellow_bed[facing=east,occupied=true,part=head]
execute in bedwars:7 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 8 4 33 lime_bed[facing=south,occupied=true,part=foot]
execute in bedwars:7 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 8 4 34 lime_bed[facing=south,occupied=true,part=head]

execute in bedwars:7 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:7 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:7 positioned -4 4 26 run function bedwars:villager
execute in bedwars:7 positioned -26 4 -4 run function bedwars:villager
execute in bedwars:7 positioned 4 4 -26 run function bedwars:villager
execute in bedwars:7 positioned 26 4 4 run function bedwars:villager
