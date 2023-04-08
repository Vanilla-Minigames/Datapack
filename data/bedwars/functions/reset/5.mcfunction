execute in bedwars:5 run fill -40 0 -40 40 48 40 air

execute in bedwars:5 run place template bedwars:center5 -5 0 -5
execute in bedwars:5 run place template bedwars:isle5 25 1 -5
execute in bedwars:5 run place template bedwars:isle5 5 1 25 clockwise_90
execute in bedwars:5 run place template bedwars:isle5 -25 1 5 180
execute in bedwars:5 run place template bedwars:isle5 -5 1 -25 counterclockwise_90
execute in bedwars:5 run kill @e[type=item,x=-40,z=-40,dx=80,dz=80,y=0,dy=50]

execute in bedwars:5 run fill -41 0 -41 -41 255 41 barrier
execute in bedwars:5 run fill -41 0 -41 41 255 -41 barrier
execute in bedwars:5 run fill -41 0 41 41 255 41 barrier
execute in bedwars:5 run fill 41 0 -41 41 255 41 barrier
execute in bedwars:5 run fill -40 49 -40 40 49 40 barrier

execute in bedwars:5 if entity @a[tag=bedwarsred,distance=0..] run setblock 0 8 30 red_bed[facing=south,occupied=true,part=foot]
execute in bedwars:5 if entity @a[tag=bedwarsred,distance=0..] run setblock 0 8 31 red_bed[facing=south,occupied=true,part=head]
execute in bedwars:5 if entity @a[tag=bedwarsblue,distance=0..] run setblock -30 8 0 blue_bed[facing=west,occupied=true,part=foot]
execute in bedwars:5 if entity @a[tag=bedwarsblue,distance=0..] run setblock -31 8 0 blue_bed[facing=west,occupied=true,part=head]
execute in bedwars:5 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 0 8 -30 yellow_bed[facing=north,occupied=true,part=foot]
execute in bedwars:5 if entity @a[tag=bedwarsyellow,distance=0..] run setblock 0 8 -31 yellow_bed[facing=north,occupied=true,part=head]
execute in bedwars:5 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 30 8 0 lime_bed[facing=east,occupied=true,part=foot]
execute in bedwars:5 if entity @a[tag=bedwarsgreen,distance=0..] run setblock 31 8 0 lime_bed[facing=east,occupied=true,part=head]

execute in bedwars:5 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:5 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:5 positioned -5 8 -29 run function bedwars:villager
execute in bedwars:5 positioned 29 8 -5 run function bedwars:villager
execute in bedwars:5 positioned 5 8 29 run function bedwars:villager
execute in bedwars:5 positioned -29 8 5 run function bedwars:villager
