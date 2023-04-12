execute at @a[tag=lobby,nbt={SelectedItem:{id:"minecraft:compass"}}] unless entity @e[type=chest_minecart,tag=lobby_gui,distance=..5] run function vm:gui/create
tellraw @a[scores={Party=-2}] [{"text":"[","color":"gray"},{"text":"Party","color":"gold"},{"text":"] "},{"text":"All party commands:\n","color":"yellow"},{"text":"- /trigger Party set -1: Leave the current party\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Party set -1"}},{"text":"- /trigger Party set <ID>: Invite the player with the ID into your party","color":"yellow","clickEvent":{"action":"suggest_command","value":"/trigger Party set "}}]
scoreboard players set @a Party -3
scoreboard players enable @a Party

tellraw @a[scores={Help=1}] [{"text":"","color":"yellow"},{"text":"[","color":"gray"},{"text":"Help","color":"gold"},{"text":"] ","color":"gray"},{"text":"Votelinks:\n","color":"aqua"},{"text":"- Planetminecraft\n","clickEvent":{"action":"open_url","value":"https://planetminecraft.com/server/vanilla-minigames-no-plugins/vote"}},{"text":"- Minecraft-MP\n","clickEvent":{"action":"open_url","value":"https://minecraft-mp.com/server/246690/vote"}},{"text":"- Minecraft-Serverlist\n","clickEvent":{"action":"open_url","value":"https://minecraft-serverlist.net/vote/53212"}},{"text":"- Serverliste\n","clickEvent":{"action":"open_url","value":"https://serverliste.net/vote/4281"}},{"text":"- Minecraftservers","clickEvent":{"action":"open_url","value":"https://minecraftservers.org/vote/626731"}}]
tellraw @a[scores={Help=1}] [{"text":"","color":"yellow"},{"text":"[","color":"gray"},{"text":"Help","color":"gold"},{"text":"] ","color":"gray"},{"text":"All commands:\n","color":"aqua"},{"text":"- /trigger Help: Display this message\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Help"}},{"text":"- /trigger Party: All party commands\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Party"}},{"text":"- /trigger l: Leave the current game and teleport to the lobby\n","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger l"}}]
scoreboard players set @a[scores={Help=1..}] Help 0
scoreboard players enable @a Help

tellraw @a[scores={joinme=-1},tag=!joinme] [{"text":"[","color":"gray"},{"text":"JoinMe","color":"gold"},{"text":"] "},{"text":"You cannot create JoinMes!","color":"red"}]
tellraw @a[scores={joinme=-1},tag=joinme,tag=lobby] [{"text":"[","color":"gray"},{"text":"JoinMe","color":"gold"},{"text":"] "},{"text":"You cannot create a JoinMe in the lobby!","color":"red"}]
execute as @a[scores={joinme=1..}] run function vm:joinme_join
execute as @a[scores={joinme=-1},tag=joinme,tag=!lobby] run function vm:joinme
scoreboard players set @a joinme -2
scoreboard players enable @a joinme

tellraw @a[scores={gm=0},tag=gm] [{"text":"","color":"yellow"},{"text":"[","color":"gray"},{"text":"Game Mode","color":"gold"},{"text":"] ","color":"gray"},{"text":"How to switch game modes:\n","color":"aqua"},{"text":"- /trigger gm: Show this message\n"},{"text":"- /trigger gm set 1: Switch to creative mode\n"},{"text":"- /trigger gm set 2: Switch to adventure mode\n"},{"text":"- /trigger gm set 3: Switch to spectator mode"}]
execute as @a[scores={gm=1},tag=gm] run gamemode creative @s
execute as @a[scores={gm=2},tag=gm] run gamemode adventure @s
execute as @a[scores={gm=3},tag=gm] run gamemode spectator @s
scoreboard players set @a[scores={gm=0..}] gm -1
scoreboard players enable @a[tag=gm] gm

execute as @a[scores={spec=0..}] run gamemode spectator @s
execute as @a if score @s ID = @r[scores={spec=1..}] spec run spectate @s @r[scores={spec=1..}]
scoreboard players set @a spec -1
scoreboard players enable @a spec

execute as @a[gamemode=!adventure,gamemode=!spectator,tag=!gm,tag=!skywars,tag=!bedwars,tag=!bingo] run gamemode adventure @s
execute as @a[tag=nohitcooldown] run attribute @s minecraft:generic.attack_speed base set 100
execute as @a[tag=!nohitcooldown] run attribute @s minecraft:generic.attack_speed base set 4

scoreboard players reset @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] doublejumpTimer
scoreboard players reset @a[tag=lobby,gamemode=adventure,scores={doublejump=1..}] doublejump
item replace entity @a[tag=lobby,gamemode=adventure,scores={doublejumpTimer=18..100}] armor.chest with air

kill @e[type=tnt]
kill @e[type=tnt_minecart]
kill @e[type=wither]
kill @e[type=ender_dragon]
kill @e[type=end_crystal]
schedule function vm:5t 5t
