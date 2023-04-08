execute in bedwars:3 run fill -50 0 -25 50 48 25 air

execute in bedwars:3 run place template bedwars:center3 -4 10 -4
execute in bedwars:3 run place template bedwars:iron3 -23 12 6
execute in bedwars:3 run place template bedwars:iron3 18 12 -12
execute in bedwars:3 run place template bedwars:isle3 25 0 5 counterclockwise_90
execute in bedwars:3 run place template bedwars:isle3 -25 0 -6 clockwise_90
execute in bedwars:3 run kill @e[type=item,x=-50,z=-25,dx=100,dz=50,y=0,dy=50]

execute in bedwars:3 run fill -51 0 -26 -51 255 26 barrier
execute in bedwars:3 run fill -51 0 -26 51 255 -26 barrier
execute in bedwars:3 run fill -51 0 26 51 255 26 barrier
execute in bedwars:3 run fill 51 0 -26 51 255 26 barrier
execute in bedwars:3 run fill -50 49 -25 50 49 25 barrier

execute in bedwars:3 if entity @a[tag=bedwarsred,distance=0..] run setblock -39 19 0 red_bed[facing=north,occupied=true,part=foot]
execute in bedwars:3 if entity @a[tag=bedwarsred,distance=0..] run setblock -39 19 -1 red_bed[facing=north,occupied=true,part=head]
execute in bedwars:3 if entity @a[tag=bedwarsblue,distance=0..] run setblock 39 19 -1 blue_bed[facing=south,occupied=true,part=foot]
execute in bedwars:3 if entity @a[tag=bedwarsblue,distance=0..] run setblock 39 19 0 blue_bed[facing=south,occupied=true,part=head]

execute in bedwars:3 run kill @e[type=marker,tag=bedwarstrap,distance=0..]
execute in bedwars:3 run kill @e[type=villager,tag=bedwars,distance=0..]
execute in bedwars:3 positioned -45 24 3 run function bedwars:villager
execute in bedwars:3 positioned -45 24 -4 run function bedwars:villager
execute in bedwars:3 positioned 45 24 3 run function bedwars:villager
execute in bedwars:3 positioned 45 24 -4 run function bedwars:villager
