execute in skywars:1_8/3 run fill 46 0 -51 -51 48 52 air

execute in skywars:1_8/3 run place template skywars:1_8/center3 -8 0 -8
execute in skywars:1_8/3 run place template skywars:1_8/isle3 -8 2 -47
execute in skywars:1_8/3 run place template skywars:1_8/isle3 9 2 48 180
execute in skywars:1_8/3 run place template skywars:1_8/isle3 42 2 -7 clockwise_90
execute in skywars:1_8/3 run place template skywars:1_8/isle3 -47 2 9 counterclockwise_90
#execute in skywars:1_8/3 run setblock -8 0 -8 structure_block{rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,name:"sw:mitte3",sizeY:21,sizeZ:18,showboundingbox:0b}
#execute in skywars:1_8/3 run setblock -8 1 -8 redstone_block
#execute in skywars:1_8/3 run setblock -8 2 -47 structure_block{rotation:"NONE",posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,name:"sw:insel3",sizeY:14,sizeZ:22,showboundingbox:0b}
#execute in skywars:1_8/3 run setblock -8 3 -47 redstone_block
#execute in skywars:1_8/3 run setblock 9 2 48 structure_block{rotation:"CLOCKWISE_180",posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,name:"sw:insel3",sizeY:14,sizeZ:22,showboundingbox:0b}
#execute in skywars:1_8/3 run setblock 9 3 48 redstone_block
#execute in skywars:1_8/3 run setblock 42 2 -7 structure_block{rotation:"CLOCKWISE_90",posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,name:"sw:insel3",sizeY:14,sizeZ:22,showboundingbox:0b}
#execute in skywars:1_8/3 run setblock 42 3 -7 redstone_block
#execute in skywars:1_8/3 run setblock -47 2 9 structure_block{rotation:"COUNTERCLOCKWISE_90",posX:0,mode:"LOAD",posY:0,sizeX:18,posZ:0,name:"sw:insel3",sizeY:14,sizeZ:22,showboundingbox:0b}
#execute in skywars:1_8/3 run setblock -47 3 9 redstone_block
execute in skywars:1_8/3 run kill @e[type=item,x=-50,y=0,z=-50,dx=100,dz=103,dy=50]

execute in skywars:1_8/3 run fill 47 0 53 47 255 -52 barrier
execute in skywars:1_8/3 run fill 47 0 -52 -52 255 -52 barrier
execute in skywars:1_8/3 run fill -52 0 -52 -52 255 53 barrier
execute in skywars:1_8/3 run fill -52 0 53 47 255 53 barrier
execute in skywars:1_8/3 run fill 46 49 -51 -51 49 52 barrier
