execute as @a[tag=!registered] run function vm:join_server/first
execute as @a[scores={rejoin=1..}] run function vm:join_server/index

execute as @a[tag=skywars,nbt={OnGround:0b}] store result score @s apply_damage run data get entity @s FallDistance
execute as @a[tag=bedwars,nbt={OnGround:0b}] store result score @s apply_damage run data get entity @s FallDistance
execute as @a[tag=bingo,nbt={OnGround:0b}] store result score @s apply_damage run data get entity @s FallDistance
execute as @a[scores={apply_damage=1..},gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] run scoreboard players remove @s apply_damage 3
execute as @a[scores={apply_damage=1..},gamemode=!creative,gamemode=!spectator,nbt={OnGround:1b}] run function vm:damage

execute as @a[scores={l=1..}] run function vm:leave
tp @a[scores={l=1..}] 0 19 0
execute as @a[scores={l=1..}] run gamemode adventure @s
item replace entity @a[scores={l=1..}] hotbar.4 with compass{display:{Name:'{"text":"§6§lMenu","color":"gold","bold":true,"italic":false}'}}
tag @a[scores={l=1..}] add lobby
scoreboard players reset @a[scores={l=1..}] l
scoreboard players enable @a l

item replace entity @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] armor.chest with elytra{Damage:430,HideFlags:1,Enchantments:[{id:"minecraft:binding_curse",lvl:1s},{id:"minecraft:vanishing_curse",lvl:1s}]}
effect give @a[tag=lobby,gamemode=adventure,nbt={FallFlying:1b}] levitation 1 11 true
execute as @a[tag=lobby,gamemode=adventure,nbt={FallFlying:1b}] at @s run playsound minecraft:entity.cat.hiss master @s ~ ~ ~

execute as @e[type=chest_minecart,tag=lobby_gui] store result score @s temp run data get entity @s Items
execute as @e[type=chest_minecart,tag=lobby_gui] unless score @s temp = @s value run function vm:gui/click

execute if entity @a[tag=skywars] run function skywars:tick
execute if entity @a[tag=skywarswait_1_8] run function skywars:tick
execute if entity @a[tag=skywarswait_1_16] run function skywars:tick
execute if entity @a[tag=bedwars] run function bedwars:tick
execute if entity @a[tag=bedwarswait] run function bedwars:tick
execute if entity @a[tag=bingo] run function bingo:tick
execute if entity @a[tag=bingowait] run function bingo:tick
execute if entity @a[tag=cores] run function cores:tick
execute if entity @a[tag=coreswait] run function cores:tick

schedule function vm:tick 1t
