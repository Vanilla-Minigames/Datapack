tellraw @a [{"text":"[","color":"gray"},{"text":"Vanilla Minigames","color":"gold"},{"text":"] "},{"text":"Datapack loaded!","color":"green"}]

scoreboard objectives add ID dummy
scoreboard objectives setdisplay list ID
scoreboard objectives add rank dummy
scoreboard objectives add value dummy
scoreboard objectives add temp dummy
scoreboard objectives add timeout dummy {"text":"Tempban","color":"red"}
scoreboard objectives add l trigger {"text":"Hub","color":"gold"}
scoreboard objectives add Help trigger {"text":"Help","color":"gold"}
scoreboard objectives add Party trigger {"text":"Party","color":"gold"}
scoreboard objectives add joinme trigger {"text":"JoinMe","color":"gold"}
scoreboard objectives add gm trigger {"text":"Game Mode","color":"gold"}
scoreboard objectives add partyID dummy
scoreboard objectives add playtime minecraft.custom:minecraft.play_time
scoreboard objectives add apply_damage dummy
scoreboard objectives add votes dummy
scoreboard objectives add coins dummy {"text":"Coins","color":"gold"}
scoreboard objectives add crates dummy
scoreboard objectives add map dummy
scoreboard objectives add xpcountdown dummy
scoreboard objectives add rejoin minecraft.custom:minecraft.leave_game
scoreboard objectives add deaths deathCount
scoreboard objectives add kills totalKillCount
scoreboard objectives add health health
scoreboard objectives add doublejump minecraft.custom:minecraft.jump
scoreboard objectives add doublejumpTimer minecraft.custom:minecraft.play_time

scoreboard objectives add gui_page dummy
team add gui {"text":"GUI","color":"gold"}

gamerule commandBlockOutput false
gamerule doMobSpawning false
gamerule commandModificationBlockLimit 655360
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doInsomnia false
gamerule doImmediateRespawn true
gamerule doPatrolSpawning false
gamerule doTraderSpawning false
gamerule doVinesSpread false
gamerule doWardenSpawning false
gamerule doWeatherCycle false
gamerule fallDamage false
gamerule globalSoundEvents false
gamerule keepInventory true
gamerule lavaSourceConversion true
gamerule maxCommandChainLength 100000
gamerule maxEntityCramming 8
gamerule mobGriefing false
gamerule playersSleepingPercentage 101
gamerule randomTickSpeed 0
gamerule showDeathMessages false
gamerule snowAccumulationHeight 4
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false
setworldspawn 0 19 0 90

bossbar add vm:tps {"text":""}
bossbar set vm:tps style notched_20
bossbar set vm:tps max 20
bossbar set vm:tps visible true
function vm:tps
setblock 0 0 0 birch_sign replace

team add 10admin {"text":"Admin","color":"red"}
team modify 10admin color gray
team modify 10admin collisionRule never
team modify 10admin prefix [{"text":"[","color":"white"},{"text":"Admin","color":"red"},{"text":"] ","color":"white"}]
team add 20mod {"text":"Moderator","color":"blue"}
team modify 20mod color gray
team modify 20mod collisionRule never
team modify 20mod prefix [{"text":"[","color":"white"},{"text":"Mod","color":"blue"},{"text":"] ","color":"white"}]
team add 30dev {"text":"Developer","color":"aqua"}
team modify 30dev color gray
team modify 30dev collisionRule never
team modify 30dev prefix [{"text":"[","color":"white"},{"text":"Developer","color":"aqua"},{"text":"] ","color":"white"}]
team add 40helper {"text":"Helper","color":"blue"}
team modify 40helper color gray
team modify 40helper collisionRule never
team modify 40helper prefix [{"text":"[","color":"white"},{"text":"Helper","color":"blue"},{"text":"] ","color":"white"}]
team add 50builder {"text":"Builder","color":"dark_aqua"}
team modify 50builder color gray
team modify 50builder collisionRule never
team modify 50builder prefix [{"text":"[","color":"white"},{"text":"Builder","color":"dark_aqua"},{"text":"] ","color":"white"}]
team add 60content {"text":"Content Creator","color":"light_purple"}
team modify 60content color gray
team modify 60content collisionRule never
team modify 60content prefix [{"text":"[","color":"white"},{"text":"Content Creator","color":"light_purple"},{"text":"] ","color":"white"}]
team add 70rainbow {"text":"Rainbow","color":"green"}
team modify 70rainbow color gray
team modify 70rainbow collisionRule never
team add 80premium {"text":"Premium","color":"gold"}
team modify 80premium color gold
team modify 80premium collisionRule never
team add 90player {"text":"Player","color":"gray"}
team modify 90player color gray
team modify 90player collisionRule never

team add Red {"text":"Rot","color":"red"}
team modify Red friendlyFire false
team modify Red color red
team add Blue {"text":"Blue","color":"blue"}
team modify Blue friendlyFire false
team modify Blue color blue
team add Yellow {"text":"Yellow","color":"yellow"}
team modify Yellow friendlyFire false
team modify Yellow color yellow
team add Green {"text":"Green","color":"green"}
team modify Green friendlyFire false
team modify Green color green

kill @e[type=interaction,tag=lobby_crate]
summon interaction 30 13 -9 {Tags:["lobby_crate"],width:1.03f,height:1.03f,response:1b}

execute store success score #load temp run function vm:tick
execute if score #load temp matches 0 run say §c§lError [Tick]
execute if score #load temp matches 0 as @a run gamemode spectator @s
execute store success score #load temp run function vm:5t
execute if score #load temp matches 0 run say §c§lError [5t]
execute if score #load temp matches 0 as @a run gamemode spectator @s
execute store success score #load temp run function vm:1sec
execute if score #load temp matches 0 run say §c§lError [1sec]
execute if score #load temp matches 0 as @a run gamemode spectator @s
execute store success score #load temp run function vm:ban
execute if score #load temp matches 0 run say §c§lError [ban]
execute if score #load temp matches 0 as @a run gamemode spectator @s
