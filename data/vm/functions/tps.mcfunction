execute store result score #tps temp run debug stop
execute store result bossbar vm:tps value run scoreboard players get #tps temp
bossbar set vm:tps name [{"score":{"name":"#tps","objective":"temp"},"color":"green"},{"text":" TPS","color":"yellow"}]
bossbar set vm:tps players @a[tag=tps]

debug start

execute if entity @a[tag=tps] run schedule function vm:tps 25s
