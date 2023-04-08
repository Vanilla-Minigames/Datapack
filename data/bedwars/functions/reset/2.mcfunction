execute in bedwars:2 run fill -70 0 -70 0 48 0 air
execute in bedwars:2 run fill 1 0 1 70 48 70 air

execute in bedwars:2 run place template bedwars:center2 -7 1 -7
execute in bedwars:2 run place template bedwars:isle2 -12 0 -65
execute in bedwars:2 run place template bedwars:isle2 12 0 65 180
execute in bedwars:2 run place template bedwars:isle2 -65 0 12 counterclockwise_90
execute in bedwars:2 run place template bedwars:isle2 65 0 -12 clockwise_90
execute in bedwars:2 run kill @e[type=item,x=-70,z=-70,dx=140,dz=140,y=0,dy=50]

execute in bedwars:2 run fill -71 0 -71 -71 255 71 barrier
execute in bedwars:2 run fill -71 0 -71 71 255 -71 barrier
execute in bedwars:2 run fill -71 0 71 71 255 71 barrier
execute in bedwars:2 run fill 71 0 -71 71 255 71 barrier
execute in bedwars:2 run fill -70 49 -70 70 49 70 barrier

execute in bedwars:2 if entity @a[tag=bedwarsred,distance=0..] run setblock -56 3 -2 red_bed[facing=north,occupied=true,part=foot]
execute in bedwars:2 if entity @a[tag=bedwarsred,distance=0..] run setblock -56 3 -3 red_bed[facing=north,occupied=true,part=head]
execute in bedwars:2 if entity @a[tag=bedwarsblue,distance=0..] run setblock 2 3 -56 blue_bed[facing=east,occupied=true,part=foot]
execute in bedwars:2 if entity @a[tag=bedwarsblue,distance=0..] run setblock 3 3 -56 blue_bed[facing=east,occupied=true,part=head]
execute in bedwars:2 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 56 3 2 yellow_bed[facing=south,occupied=true,part=foot]
execute in bedwars:2 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 56 3 3 yellow_bed[facing=south,occupied=true,part=head]
execute in bedwars:2 if entity @a[tag=bedwarsgreen,distance=0..] run setblock -2 3 56 lime_bed[facing=west,occupied=true,part=foot]
execute in bedwars:2 if entity @a[tag=bedwarsgreen,distance=0..] run setblock -3 3 56 lime_bed[facing=west,occupied=true,part=head]

execute in bedwars:2 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:2 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:2 positioned -3 7 -53 run function bedwars:villager
execute in bedwars:2 positioned 5 7 -53 run function bedwars:villager
execute in bedwars:2 positioned 53 7 -3 run function bedwars:villager
execute in bedwars:2 positioned 53 7 5 run function bedwars:villager
execute in bedwars:2 positioned 3 7 53 run function bedwars:villager
execute in bedwars:2 positioned -5 7 53 run function bedwars:villager
execute in bedwars:2 positioned -53 7 3 run function bedwars:villager
execute in bedwars:2 positioned -53 7 -5 run function bedwars:villager
