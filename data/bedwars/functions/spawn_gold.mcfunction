execute in bedwars:1 if entity @a[tag=bedwars,distance=0..] run summon item 0 4 0 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item 0 7 0 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:2 if entity @a[tag=bedwars,distance=0..] run summon item -1 7 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item 1 26 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item -2 26 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item -2 26 -2 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:3 if entity @a[tag=bedwars,distance=0..] run summon item 1 26 -2 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item -1 13 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item 1 13 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item -1 13 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:4 if entity @a[tag=bedwars,distance=0..] run summon item 1 13 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item 1 7 5 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item -1 8 0 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:5 if entity @a[tag=bedwars,distance=0..] run summon item 0 8 -2 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item -3 7 2 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item -1 7 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:6 if entity @a[tag=bedwars,distance=0..] run summon item 2 7 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item -4 4 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item 0 10 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:7 if entity @a[tag=bedwars,distance=0..] run summon item -1 10 0 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item -1 4 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item -1 4 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item 1 4 -1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:8 if entity @a[tag=bedwars,distance=0..] run summon item 1 4 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item 1 6 1 {Item:{id:"gold_ingot",Count:1b}}
execute in bedwars:9 if entity @a[tag=bedwars,distance=0..] run summon item 0 6 0 {Item:{id:"gold_ingot",Count:1b}}

execute if entity @a[tag=bedwars] run schedule function bedwars:spawn_gold 10s