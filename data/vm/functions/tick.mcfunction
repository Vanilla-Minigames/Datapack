execute as @a[tag=!registered] run function api:players/create/current

execute as @a[tag=fall,nbt={OnGround: 0b}] store result score @s apply_damage run data get entity @s FallDistance
execute as @a[scores={apply_damage=1..},gamemode=!creative,gamemode=!spectator,nbt={OnGround: 1b}] run scoreboard players remove @s apply_damage 3
execute as @a[scores={apply_damage=1..},gamemode=!creative,gamemode=!spectator,nbt={OnGround: 1b}] run function vm:damage

spawnpoint @a[tag=lobby,nbt={Dimension: "minecraft:overworld"}] 0 19 0
scoreboard players add @a playtime 1

execute as @a[scores={l=1..}] run function vm:leave
tp @a[scores={l=1..}] 0 19 0
execute as @a[scores={l=1..}] run gamemode adventure @s
item replace entity @a[scores={l=1..}] hotbar.4 with compass{display:{Name:'{"text":"§6§lMenu","color":"gold","bold":true,"italic":false}'}}
tag @a[scores={l=1..}] add lobby
scoreboard players reset @a[scores={l=1..}] l
scoreboard players enable @a l

item replace entity @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] armor.chest with elytra{Damage: 430}
scoreboard players reset @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] doublejump
effect give @a[tag=lobby,gamemode=adventure,nbt={FallFlying: 1b}] levitation 1 11 true
execute as @a[tag=lobby,gamemode=adventure,nbt={FallFlying: 1b}] at @s run playsound minecraft:entity.cat.hiss master @s ~ ~ ~
execute as @a[tag=lobby,gamemode=adventure,nbt={FallFlying: 1b}] run item replace entity @s armor.chest with air

execute as @e[type=chest_minecart,tag=lobby_gui] store result score @s temp run data get entity @s Items
execute as @e[type=chest_minecart,tag=lobby_gui] unless score @s temp = @s value run function vm:gui/click

execute if entity @a[tag=skywars] run function skywars:tick
execute if entity @a[tag=skywarswait] run function skywars:tick

schedule function vm:tick 1t
