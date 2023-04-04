fill 607 0 -144 512 2 -49 air
fill 607 3 -144 512 5 -49 air
fill 607 6 -144 512 8 -49 air
fill 607 9 -144 512 11 -49 air
fill 607 12 -144 512 14 -49 air
fill 607 15 -144 512 17 -49 air
fill 607 18 -144 512 20 -49 air
fill 607 21 -144 512 23 -49 air
fill 607 24 -144 512 26 -49 air
fill 607 27 -144 512 28 -49 air
fill 607 29 -144 512 29 -49 air

setblock 561 0 -96 structure_block{posX:-10,mode:"LOAD",posY:0,sizeX:22,posZ:-8,name:"sw:mitte2",sizeY:19,sizeZ:17,showboundingbox:0b}
setblock 561 1 -96 redstone_block
setblock 595 13 -96 structure_block{rotation:"CLOCKWISE_90",posX:12,mode:"LOAD",posY:0,sizeX:26,posZ:-12,name:"sw:insel2",sizeY:6,sizeZ:24,showboundingbox:0b}
setblock 595 14 -96 redstone_block
setblock 558 13 -132 structure_block{rotation:"NONE",posX:-12,mode:"LOAD",posY:0,sizeX:26,posZ:-12,name:"sw:insel2",sizeY:6,sizeZ:24,showboundingbox:0b}
setblock 558 14 -132 redstone_block
setblock 561 13 -61 structure_block{rotation:"CLOCKWISE_180",posX:12,mode:"LOAD",posY:0,sizeX:26,posZ:12,name:"sw:insel2",sizeY:6,sizeZ:24,showboundingbox:0b}
setblock 561 14 -61 redstone_block
setblock 524 13 -96 structure_block{rotation:"COUNTERCLOCKWISE_90",posX:-12,mode:"LOAD",posY:0,sizeX:26,posZ:12,name:"sw:insel2",sizeY:6,sizeZ:24,showboundingbox:0b}
setblock 524 14 -96 redstone_block
kill @e[type=item,x=512,y=0,z=-144,dx=96,dy=255,dz=96]

fill 608 0 -145 608 255 -48 barrier
fill 608 0 -48 511 255 -48 barrier
fill 511 0 -48 511 255 -145 barrier
fill 511 0 -145 608 255 -145 barrier
fill 511 30 -49 608 30 -145 barrier
