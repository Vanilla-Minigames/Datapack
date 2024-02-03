execute if block ~-.5 ~ ~-.5 water run scoreboard players set @s fly -50
execute if block ~-.5 ~ ~.5 water run scoreboard players set @s fly -50
execute if block ~.5 ~ ~-.5 water run scoreboard players set @s fly -50
execute if block ~.5 ~ ~.5 water run scoreboard players set @s fly -50
execute if block ~-.5 ~1 ~-.5 water run scoreboard players set @s fly -50
execute if block ~-.5 ~1 ~.5 water run scoreboard players set @s fly -50
execute if block ~.5 ~1 ~-.5 water run scoreboard players set @s fly -50
execute if block ~.5 ~1 ~.5 water run scoreboard players set @s fly -50
execute if block ~-.5 ~ ~-.5 lava run scoreboard players set @s fly -50
execute if block ~-.5 ~ ~.5 lava run scoreboard players set @s fly -50
execute if block ~.5 ~ ~-.5 lava run scoreboard players set @s fly -50
execute if block ~.5 ~ ~.5 lava run scoreboard players set @s fly -50
execute if block ~-.5 ~1 ~-.5 lava run scoreboard players set @s fly -50
execute if block ~-.5 ~1 ~.5 lava run scoreboard players set @s fly -50
execute if block ~.5 ~1 ~-.5 lava run scoreboard players set @s fly -50
execute if block ~.5 ~1 ~.5 lava run scoreboard players set @s fly -50

execute if block ~-.5 ~ ~-.5 bubble_column run scoreboard players set @s fly -50
execute if block ~-.5 ~ ~.5 bubble_column run scoreboard players set @s fly -50
execute if block ~.5 ~ ~-.5 bubble_column run scoreboard players set @s fly -50
execute if block ~.5 ~ ~.5 bubble_column run scoreboard players set @s fly -50
execute if block ~-.5 ~ ~-.5 bubble_column run scoreboard players remove @s dive 100
execute if block ~-.5 ~ ~.5 bubble_column run scoreboard players remove @s dive 100
execute if block ~.5 ~ ~-.5 bubble_column run scoreboard players remove @s dive 100
execute if block ~.5 ~ ~.5 bubble_column run scoreboard players remove @s dive 100
execute if block ~-.5 ~ ~-.5 bubble_column run scoreboard players remove @s swim 150
execute if block ~-.5 ~ ~.5 bubble_column run scoreboard players remove @s swim 150
execute if block ~.5 ~ ~-.5 bubble_column run scoreboard players remove @s swim 150
execute if block ~.5 ~ ~.5 bubble_column run scoreboard players remove @s swim 150
execute if block ~ ~0.001 ~ water run scoreboard players set @s fly 1
execute if block ~ ~0.001 ~ lava run scoreboard players set @s fly 1
execute if block ~ ~ ~ ladder run scoreboard players set @s fly 0
execute if block ~ ~ ~ vine run scoreboard players set @s fly 1

execute if block ~ ~-1 ~ slime_block run scoreboard players remove @s fly 30
execute if block ~1 ~-1 ~ slime_block run scoreboard players remove @s fly 30
execute if block ~-1 ~-1 ~ slime_block run scoreboard players remove @s fly 30
execute if block ~ ~-1 ~1 slime_block run scoreboard players remove @s fly 30
execute if block ~ ~-1 ~-1 slime_block run scoreboard players remove @s fly 30
execute if block ~ ~-2 ~ slime_block run scoreboard players remove @s fly 20
execute if block ~ ~-3 ~ slime_block run scoreboard players remove @s fly 20

execute if block ~ ~-1.9 ~ packed_ice run scoreboard players remove @s run 15
execute if block ~ ~-1.9 ~ ice run scoreboard players remove @s run 15
execute if block ~ ~-1.9 ~ packed_ice run scoreboard players remove @s fly 23
execute if block ~ ~-1.9 ~ ice run scoreboard players remove @s fly 23

execute if block ~ ~ ~ cobweb run scoreboard players set @s fly 0
execute if block ~ ~-1 ~ cobweb run scoreboard players set @s fly 0
execute if block ~ ~1 ~ cobweb run scoreboard players set @s fly 0
execute if block ~-.5 ~ ~-.5 cobweb run scoreboard players set @s fly 0
execute if block ~-.5 ~ ~.5 cobweb run scoreboard players set @s fly 0
execute if block ~.5 ~ ~-.5 cobweb run scoreboard players set @s fly 0
execute if block ~.5 ~ ~.5 cobweb run scoreboard players set @s fly 0

execute if entity @s[nbt={active_effects:[{Id:"minecraft:levitation"}]}] run scoreboard players remove @s fly 44
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:0b}]}] run scoreboard players remove @s fly 5
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:1b}]}] run scoreboard players remove @s fly 10
execute if entity @s[nbt={active_effects:[{id:"minecraft:speed",amplifier:2b}]}] run scoreboard players remove @s fly 15

execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}],Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:depth_strider"}]}}]}] run scoreboard players remove @s swim 48
execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}],Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:depth_strider"}]}}]}] at @s unless block ~ ~-1 ~ water run scoreboard players remove @s dive 72
execute if entity @s[nbt={active_effects:[{id:"minecraft:dolphins_grace"}],Inventory:[{Slot:100b,tag:{Enchantments:[{id:"minecraft:depth_strider"}]}}]}] at @s if block ~ ~-1 ~ water run scoreboard players remove @s dive 2

execute if entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra"}]}] run scoreboard players set @s fly -500

execute if entity @s[scores={run=15..},nbt={active_effects:[{id:"minecraft:speed",amplifier:1b}]}] run scoreboard players remove @s run 15
execute if entity @s[scores={walk=15..},nbt={active_effects:[{id:"minecraft:speed",amplifier:1b}]}] run scoreboard players remove @s walk 15
execute if entity @s[scores={run=20..},nbt={active_effects:[{id:"minecraft:speed",amplifier:2b}]}] run scoreboard players remove @s run 20
execute if entity @s[scores={walk=20..},nbt={active_effects:[{id:"minecraft:speed",amplifier:2b}]}] run scoreboard players remove @s walk 20

execute if entity @s[scores={run=85..}] run tp @s @e[type=marker,tag=susTM,sort=nearest,limit=1]
execute if entity @s[scores={walk=75..}] run tp @s @e[type=marker,tag=susTM,sort=nearest,limit=1]

execute if entity @s[scores={fly=..0}] run kill @e[type=marker,tag=susTM,sort=nearest,limit=1]
execute if entity @s[scores={fly=..0}] run summon marker ~ ~ ~ {Tags:["susTM"]}
