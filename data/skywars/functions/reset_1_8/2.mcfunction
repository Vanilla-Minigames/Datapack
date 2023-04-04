execute in skywars:1_8/2 run fill -50 0 -50 50 48 50 air

execute in skywars:1_8/2 run place template skywars:1_8/center2 -8 0 -8
execute in skywars:1_8/2 run place template skywars:1_8/isle2 -13 12 -47
execute in skywars:1_8/2 run place template skywars:1_8/isle2 -47 12 13 counterclockwise_90
execute in skywars:1_8/2 run place template skywars:1_8/isle2 13 12 47 180
execute in skywars:1_8/2 run place template skywars:1_8/isle2 49 12 -13 clockwise_90
execute in skywars:1_8/2 run kill @e[type=item,x=-50,z=-50,dx=100,dz=100,y=0,dy=50]

execute in skywars:1_8/2 run fill -51 0 -51 -51 255 51 barrier
execute in skywars:1_8/2 run fill -51 0 -51 51 255 -51 barrier
execute in skywars:1_8/2 run fill -51 0 51 51 255 51 barrier
execute in skywars:1_8/2 run fill 51 0 -51 51 255 51 barrier
execute in skywars:1_8/2 run fill -50 49 -50 50 49 50 barrier
