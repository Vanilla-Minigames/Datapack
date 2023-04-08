execute in bedwars:4 run fill -40 0 -40 40 48 40 air

execute in bedwars:4 run place template bedwars:center4 -2 5 -2
execute in bedwars:4 run place template bedwars:iron4 0 9 -16
execute in bedwars:4 run place template bedwars:iron4 -16 9 0
execute in bedwars:4 run place template bedwars:iron4 0 9 16
execute in bedwars:4 run place template bedwars:iron4 16 9 0
execute in bedwars:4 run place template bedwars:isle4 -3 0 -34
execute in bedwars:4 run place template bedwars:isle4 34 0 -3 clockwise_90
execute in bedwars:4 run place template bedwars:isle4 3 0 34 180
execute in bedwars:4 run place template bedwars:isle4 -34 0 3 counterclockwise_90
execute in bedwars:4 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:4 run fill -41 0 -41 -41 255 41 barrier
execute in bedwars:4 run fill -41 0 -41 41 255 -41 barrier
execute in bedwars:4 run fill -41 0 41 41 255 41 barrier
execute in bedwars:4 run fill 41 0 -41 41 255 41 barrier
execute in bedwars:4 run fill -40 49 -40 40 49 40 barrier

execute in bedwars:4 if entity @a[tag=bedwarsred,distance=0..] run setblock -3 13 34 red_bed[facing=south,occupied=true,part=foot]
execute in bedwars:4 if entity @a[tag=bedwarsred,distance=0..] run setblock -3 13 35 red_bed[facing=south,occupied=true,part=head]
execute in bedwars:4 if entity @a[tag=bedwarsblue,distance=0..] run setblock -34 13 -3 blue_bed[facing=west,occupied=true,part=foot]
execute in bedwars:4 if entity @a[tag=bedwarsblue,distance=0..] run setblock -35 13 -3 blue_bed[facing=west,occupied=true,part=head]
execute in bedwars:4 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 3 13 -34 yellow_bed[facing=north,occupied=true,part=foot]
execute in bedwars:4 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 3 13 -35 yellow_bed[facing=north,occupied=true,part=head]
execute in bedwars:4 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 34 13 3 lime_bed[facing=east,occupied=true,part=foot]
execute in bedwars:4 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 35 13 3 lime_bed[facing=east,occupied=true,part=head]

execute in bedwars:4 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:4 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:4 positioned -3 13 -34 run function bedwars:villager
execute in bedwars:4 positioned 34 13 -3 run function bedwars:villager
execute in bedwars:4 positioned 3 13 34 run function bedwars:villager
execute in bedwars:4 positioned -34 13 3 run function bedwars:villager
