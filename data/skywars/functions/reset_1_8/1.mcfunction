execute in skywars:1_8/1 run fill -50 0 -50 50 48 50 air

execute in skywars:1_8/1 run place template skywars:1_8/center1 -6 0 -6
execute in skywars:1_8/1 run place template skywars:1_8/isle1 20 2 20
execute in skywars:1_8/1 run place template skywars:1_8/isle1 -20 2 20 clockwise_90
execute in skywars:1_8/1 run place template skywars:1_8/isle1 20 2 -20 counterclockwise_90
execute in skywars:1_8/1 run place template skywars:1_8/isle1 -20 2 -20 180
execute in skywars:1_8/1 run kill @e[type=item,x=-50,z=-50,dx=100,dz=100,y=0,dy=50]

execute in skywars:1_8/1 run fill -51 0 -51 -51 255 51 barrier
execute in skywars:1_8/1 run fill -51 0 -51 51 255 -51 barrier
execute in skywars:1_8/1 run fill -51 0 51 51 255 51 barrier
execute in skywars:1_8/1 run fill 51 0 -51 51 255 51 barrier
execute in skywars:1_8/1 run fill -50 49 -50 50 49 50 barrier
