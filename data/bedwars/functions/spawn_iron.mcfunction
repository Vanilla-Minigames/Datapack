execute in bedwars:1 if entity @a[tag=bedwars,distance=0..] run summon item 26 4 -22 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:1 if entity @a[tag=bedwars,distance=0..] run summon item 26 4 26 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:1 if entity @a[tag=bedwars,distance=0..] run summon item -22 4 26 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:1 if entity @a[tag=bedwars,distance=0..] run summon item -22 4 -22 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item -51 11 6 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item -6 11 -51 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item 51 11 -6 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item 6 11 51 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item -20.0 26 9.0 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item 21.0 26 -9.0 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item 0 13 -16 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item 16 13 0 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item 0 13 16 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item -16 13 0 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item -32 8 -2 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item 2 8 -32 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item 32 8 2 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item -2 8 32 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item 39 7 2 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item -2 7 39 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item -39 7 -2 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item 2 7 -39 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item 4 4 -29 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item 29 4 4 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item -4 4 29 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item -29 4 -4 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item 23 8 -10 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item 11 8 23 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item -24 8 10 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item -10 8 -23 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item -1 6 -30 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item 30 6 -1 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item 2 6 30 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item -30 6 2 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:10 if entity @a[tag=bedwars,distance=0..] run summon item -26 10 -26 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:10 if entity @a[tag=bedwars,distance=0..] run summon item 26 10 -26 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:10 if entity @a[tag=bedwars,distance=0..] run summon item -26 10 26 {Item:{id:"iron_ingot",Count:1b}}
execute in bedwars:10 if entity @a[tag=bedwars,distance=0..] run summon item 26 10 26 {Item:{id:"iron_ingot",Count:1b}}

execute if entity @a[tag=bedwars] run schedule function bedwars:spawn_iron 5s
