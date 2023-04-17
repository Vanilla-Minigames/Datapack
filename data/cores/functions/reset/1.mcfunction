execute in cores:1 run fill -40 0 -75 40 48 75 air

execute in cores:1 run place template cores:1_1 -31 0 -72
execute in cores:1 run place template cores:1_2 17 0 -72
execute in cores:1 run place template cores:1_3 -31 0 -24
execute in cores:1 run place template cores:1_4 17 0 -24
execute in cores:1 run place template cores:1_5 -31 0 24
execute in cores:1 run place template cores:1_6 17 0 24
execute in cores:1 run kill @e[type=item,x=-50,z=-50,dx=100,dz=100,y=0,dy=50]

execute in cores:1 run fill -41 0 -76 -41 255 76 barrier
execute in cores:1 run fill -41 0 -76 41 255 -76 barrier
execute in cores:1 run fill -41 0 76 41 255 76 barrier
execute in cores:1 run fill 41 0 -76 41 255 76 barrier
execute in cores:1 run fill -40 49 -75 40 49 75 barrier
