execute in skywars:1_8/1 run fill 176 0 -80 239 48 -17 air

setblock 208 4 -49 structure_block{posX:-5,mode:"LOAD",posY:0,sizeX:12,posZ:-7,name:"sw:mitte",sizeY:20,sizeZ:14,showboundingbox:0b}
setblock 208 5 -49 redstone_block
setblock 187 4 -24 structure_block{posX:-11,mode:"LOAD",posY:0,sizeX:22,posZ:-8,name:"sw:gelb",sizeY:29,sizeZ:16,showboundingbox:0b}
setblock 187 5 -24 redstone_block
setblock 184 4 -69 structure_block{posX:-8,mode:"LOAD",posY:0,sizeX:16,posZ:-11,name:"sw:grun",sizeY:29,sizeZ:23,showboundingbox:0b}
setblock 184 5 -69 redstone_block
setblock 232 4 -27 structure_block{posX:-8,mode:"LOAD",posY:0,sizeX:16,posZ:-11,name:"sw:rot",sizeY:29,sizeZ:22,showboundingbox:0b}
setblock 232 5 -27 redstone_block
setblock 229 4 -72 structure_block{posX:-11,mode:"LOAD",posY:0,sizeX:22,posZ:-8,name:"sw:blau",sizeY:29,sizeZ:16,showboundingbox:0b}
setblock 229 5 -72 redstone_block
kill @e[type=item,x=176,dx=64,z=-79,dz=64,y=0,dy=40]

fill 175 0 -81 175 255 -16 barrier
fill 175 0 -16 240 255 -16 barrier
fill 240 0 -16 240 255 -81 barrier
fill 240 0 -81 175 255 -81 barrier
fill 176 49 -80 239 49 -17 barrier
