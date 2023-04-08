scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] fly
execute as @a[nbt={OnGround:0b}] run scoreboard players add @s fly 1
execute as @a[nbt={OnGround:1b}] run scoreboard players set @s fly 0
execute as @a[nbt={Flying:1b}] run scoreboard players set @s fly 0
scoreboard players reset @a[scores={acdamage=1..}] run
scoreboard players reset @a[scores={acdamage=1..}] walk
scoreboard players set @a[scores={walk=1..74}] fly 0
scoreboard players set @a[scores={run=1..84}] fly -15
execute as @a[scores={run=85..}] run tellraw @a[scores={rank=1..19}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {speed [run]}","color":"gray"}]
execute as @a[scores={walk=75..}] run tellraw @a[scores={rank=1..19}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {speed [walk]}","color":"gray"}]
execute as @a[scores={walk=380..}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Speed erkannt!","color":"dark_red"},{"text":" {walk}","color":"red"}]
execute as @a[scores={run=400..}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Speed erkannt!","color":"dark_red"},{"text":" {run}","color":"red"}]

execute as @a[gamemode=!creative,gamemode=!spectator] at @s run function anticheat:checks

scoreboard players set @a[scores={acdamage=1..}] fly 0
execute as @a[nbt={FallFlying:1b}] run scoreboard players set @s fly 0
#execute as @a if data entity @s RootVehicle run scoreboard players set @s fly 0

execute as @e[type=marker,tag=susTM] at @s if block ~ ~-1 ~ slime_block run scoreboard players set @p[gamemode=!creative,gamemode=!spectator] fly 10
execute as @e[type=marker,tag=susTM] at @s if block ~ ~-1 ~ slime_block run tp @s @p[gamemode=!creative,gamemode=!spectator]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ air if block ~ ~ ~ air run tellraw @a[scores={rank=1..29}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ air if block ~ ~ ~ air run tp @s @s
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ air run tellraw @a[scores={rank=1..29}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ water if block ~ ~ ~ air run tp @s @s
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ lava if block ~ ~ ~ air run tellraw @a[scores={rank=1..29}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {Safewalk}"}]
execute as @a[scores={walk=3}] at @s if block ~ ~-1 ~ lava if block ~ ~ ~ air run tp @s @s

scoreboard players set @a[scores={acdamage=1..19}] acdamage 50
scoreboard players reset @a[scores={acdamage=20..21}] acdamage
scoreboard players remove @a[scores={acdamage=20..}] acdamage 1
scoreboard players set @a[scores={acdamage=51..}] acdamage 50
scoreboard players set @a[scores={acdamage=20..}] fly 1
scoreboard players set @a[scores={acdamage=20..}] dive 1
scoreboard players set @a[scores={acdamage=20..}] swim 1

scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] fly
scoreboard players reset @a[scores={fly=1..},nbt={abilities:{mayfly:1b}}] fly

execute as @a[nbt={OnGround:1b}] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run scoreboard players add @s fly 600
execute as @a[scores={run=1..},nbt={OnGround:1b}] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run scoreboard players add @s fly 10

execute as @e[type=marker,tag=susTM] at @s if block ~ ~ ~ air if block ~1 ~-1 ~1 air if block ~1 ~-1 ~ air if block ~1 ~-1 ~-1 air if block ~-1 ~-1 ~-1 air if block ~-1 ~-1 ~1 air if block ~-1 ~-1 ~ air if block ~ ~-1 ~-1 air if block ~ ~-1 ~1 air if block ~1 ~-1 ~ air if block ~-1 ~-1 ~ air if block ~ ~-1 ~ air run tp @s ~ ~-0.9 ~

execute as @a[scores={fly=..12}] run scoreboard players set @s antiStuck 0
execute as @a[scores={fly=15..400}] run scoreboard players add @s antiStuck 1
tellraw @a[scores={antiStuck=23..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Du bist nicht mehr stuck!","color":"green"}]
execute as @a[scores={antiStuck=23..}] run effect give @s slow_falling 1 255 true
execute as @a[scores={antiStuck=23..}] at @s run spreadplayers ~ ~ 0 1 false @s
scoreboard players set @a[scores={antiStuck=23..}] fly 8
scoreboard players set @a[scores={antiStuck=23..}] antiStuck 0

#execute as @a[scores={fly=15..}] at @s run tp @s @e[type=marker,tag=susTM,sort=nearest,limit=1]
execute as @a[scores={fly=15..}] run tellraw @a[scores={rank=1..19}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {fly} ","color":"gray"},{"score":{"name":"@s","objective":"fly"},"color":"green"}]
#execute as @a[scores={fly=15..}] at @e[type=marker,tag=susTM,sort=nearest,limit=1] if block ~ ~-1 ~ air run tp @s ~ ~ ~
execute as @a[scores={fly=15..}] run scoreboard players remove @s fly 3

execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,run=35..},nbt=!{Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}]}] run tp @s @s
execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,run=35..},nbt=!{Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}]}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:1} ","color":"red"},{"text":"[run,sneak] ","color":"red"},{"score":{"name":"@s","objective":"run"},"color":"green"}]

execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=20..}] run tp @s @s
tellraw @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=20..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:2}","color":"yellow"}]
execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=20..}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:2} ","color":"yellow"},{"text":"[walk,sneak] ","color":"red"},{"score":{"name":"@s","objective":"walk"},"color":"green"}]

execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,sneakcm=50..}] run tp @s @s
tellraw @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,sneakcm=50..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:3}","color":"yellow"}]
execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,sneakcm=50..}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:3} ","color":"yellow"},{"text":"[speed,sneak] ","color":"red"},{"score":{"name":"@s","objective":"sneakcm"},"color":"green"}]

execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=1..,run=1..}] run tp @s @s
tellraw @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=1..,run=1..}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"text":"Du sendest zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:4}","color":"dark_red"}]
execute as @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=1..,run=1..}] run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" sendet zu viele Pakete! ","color":"dark_red"},{"text":"{lvl:4} ","color":"dark_red"},{"text":"[run,walk,sneak]","color":"red"}]

effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,run=35..},nbt=!{Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}]}] slowness 1 255 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,run=35..},nbt=!{Inventory:[{Slot:101b,tag:{Enchantments:[{id:"minecraft:swift_sneak"}]}}]}] jump_boost 1 244 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=20..}] slowness 2 255 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=20..}] jump_boost 2 244 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,sneakcm=31..}] slowness 3 255 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,sneakcm=31..}] jump_boost 3 244 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=1..,run=1..}] slowness 4 244 true
effect give @a[gamemode=!creative,gamemode=!spectator,scores={sneak=1..,walk=1..,run=1..}] jump_boost 4 244 true
scoreboard players reset @a[scores={sneak=1..}] sneak
scoreboard players reset @a[scores={sneakcm=1..}] sneakcm

execute as @a at @s if entity @e[type=boat,distance=..1.8] run scoreboard players reset @s walk
execute as @a at @s if entity @e[type=boat,distance=..1.9] run scoreboard players reset @s run

execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @s [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Jesus erkannt!","color":"dark_red"},{"text":" {walk}","color":"red"}]
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @s [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"text":"Jesus erkannt!","color":"dark_red"},{"text":" {run}","color":"red"}]
execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Jesus","color":"dark_red"},{"text":" {walk}","color":"red"}]
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tellraw @a[scores={rank=1..29}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] "},{"selector":"@s"},{"text":" Jesus","color":"dark_red"},{"text":" {run}","color":"red"}]
execute as @a[scores={walk=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tp @s ~ ~-1 ~ ~180 ~
execute as @a[scores={run=10..}] at @s if block ~ ~-0.8 ~ water if block ~1 ~-0.8 ~ water if block ~-1 ~-0.8 ~ water if block ~ ~-0.8 ~1 water if block ~ ~-0.8 ~-1 water if block ~1 ~-0.8 ~1 water if block ~1 ~-0.8 ~-1 water if block ~-1 ~-0.8 ~1 water if block ~-1 ~-0.8 ~-1 water if block ~ ~0.49 ~ air if block ~ ~0.49 ~ air if block ~1 ~0.49 ~ air if block ~-1 ~0.49 ~ air if block ~ ~0.49 ~1 air if block ~ ~0.49 ~-1 air if block ~1 ~0.49 ~1 air if block ~-1 ~0.49 ~-1 air if block ~1 ~0.49 ~-1 air if block ~-1 ~0.49 ~1 air run tp @s ~ ~-1 ~ ~180 ~

scoreboard players reset @a walk
scoreboard players reset @a run

scoreboard players reset @a[scores={fly=401..}] dive
scoreboard players reset @a[scores={fly=401..}] swim
scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] swim
scoreboard players reset @a[gamemode=!adventure,gamemode=!survival] dive
scoreboard players remove @a[nbt={SelectedItem:{id:"minecraft:trident"}}] dive 500
scoreboard players remove @a[nbt={SelectedItem:{id:"minecraft:trident"}}] swim 500
scoreboard players remove @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:trident"}]}] dive 500
scoreboard players remove @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:trident"}]}] swim 500

scoreboard players set @a[scores={swim=600..}] timeout 1000
execute as @a[scores={swim=..70}] at @s run tp @e[type=marker,tag=susTM,sort=nearest,limit=1] @s
execute as @a[scores={swim=100..}] at @s run tp @s @e[type=marker,tag=susTM,sort=nearest,limit=1]
execute as @a[scores={swim=100..}] run tellraw @a[scores={rank=1..19}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {Waterspeed [swim]}","color":"gray"}]
scoreboard players reset @a swim

scoreboard players set @a[scores={dive=600..}] timeout 1000
execute as @a[scores={dive=..70}] at @s run tp @e[type=marker,tag=susTM,sort=nearest,limit=1] @s
execute as @a[scores={dive=100..}] at @s run tp @s @e[type=marker,tag=susTM,sort=nearest,limit=1]
execute as @a[scores={dive=100..}] run tellraw @a[scores={rank=1..19}] [{"text":"[sus™] ","color":"gray"},{"selector":"@s"},{"text":" was flagged {Waterspeed [dive]}","color":"gray"}]
scoreboard players reset @a dive

execute as @e[type=marker,tag=susTM] at @s unless entity @a[gamemode=!creative,gamemode=!spectator,distance=..100] run kill @s
schedule function anticheat:tick 1t
