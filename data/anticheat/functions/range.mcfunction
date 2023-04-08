advancement revoke @s only anticheat:range
tellraw @a[scores={rank=1..19}] [{"text":"["},{"text":"sus","color":"aqua"},{"text":"™","color":"gold"},{"text":"] ","color":"white"},{"selector":"@s"},{"text":" wurde geflaggt {Range}","color":"dark_red"}]
effect give @s weakness 5 255 true
