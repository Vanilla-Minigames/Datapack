execute in bedwars:9 run fill -40 0 -40 40 48 40 air

execute in bedwars:9 run place template bedwars:center9 -6 0 -6
execute in bedwars:9 run place template bedwars:isle9 -5 1 -34
execute in bedwars:9 run place template bedwars:isle9 -34 1 6 counterclockwise_90
execute in bedwars:9 run place template bedwars:isle9 6 1 34 180
execute in bedwars:9 run place template bedwars:isle9 34 1 -5 clockwise_90
execute in bedwars:9 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:9 run fill -41 0 -41 -41 255 41 barrier
execute in bedwars:9 run fill -41 0 -41 41 255 -41 barrier
execute in bedwars:9 run fill -41 0 41 41 255 41 barrier
execute in bedwars:9 run fill 41 0 -41 41 255 41 barrier
execute in bedwars:9 run fill -40 49 -40 40 49 40 barrier

execute in bedwars:9 if entity @a[tag=bedwarsred,distance=0..] run setblock -29 2 1 red_bed[facing=north,occupied=true,part=foot]
execute in bedwars:9 if entity @a[tag=bedwarsred,distance=0..] run setblock -29 2 0 red_bed[facing=north,occupied=true,part=head]
execute in bedwars:9 if entity @a[tag=bedwarsblue,distance=0..] run setblock 0 2 -29 blue_bed[facing=east,occupied=true,part=foot]
execute in bedwars:9 if entity @a[tag=bedwarsblue,distance=0..] run setblock 1 2 -29 blue_bed[facing=east,occupied=true,part=head]
execute in bedwars:9 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 30 2 0 yellow_bed[facing=south,occupied=true,part=foot]
execute in bedwars:9 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 30 2 1 yellow_bed[facing=south,occupied=true,part=head]
execute in bedwars:9 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 1 2 30 lime_bed[facing=west,occupied=true,part=foot]
execute in bedwars:9 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 0 2 30 lime_bed[facing=west,occupied=true,part=head]

execute in bedwars:9 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:9 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:9 positioned 28 6 2 run function bedwars:villager
execute in bedwars:9 positioned 2 6 -27 run function bedwars:villager
execute in bedwars:9 positioned -27 6 -1 run function bedwars:villager
execute in bedwars:9 positioned -1 6 28 run function bedwars:villager
