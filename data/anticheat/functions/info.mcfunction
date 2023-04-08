scoreboard objectives add fly dummy {"text":"Fly","color":"yellow"}
scoreboard objectives add flyM minecraft.custom:minecraft.fly_one_cm {"text":"SpeedFly","color":"yellow"}
scoreboard objectives add sneak minecraft.custom:minecraft.sneak_time {"text":"Sneak time","color":"yellow"}
scoreboard objectives add sneakcm minecraft.custom:minecraft.crouch_one_cm {"text":"Sneak cm","color":"yellow"}
scoreboard objectives add dive minecraft.custom:minecraft.walk_under_water_one_cm {"text":"Dive","color":"yellow"}
scoreboard objectives add swim minecraft.custom:minecraft.swim_one_cm {"text":"Swim","color":"yellow"}
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm {"text":"Walk","color":"yellow"}
scoreboard objectives add run minecraft.custom:minecraft.sprint_one_cm {"text":"Run","color":"yellow"}
scoreboard objectives add acdamage minecraft.custom:minecraft.damage_taken {"text":"AC Damage taken","color":"yellow"}
scoreboard objectives add antiStuck dummy {"text":"Anti Stuck","color":"yellow"}

scoreboard players reset @a flyM
scoreboard players reset @a run
scoreboard players reset @a walk
scoreboard players reset @a swim
scoreboard players reset @a dive

function anticheat:tick
