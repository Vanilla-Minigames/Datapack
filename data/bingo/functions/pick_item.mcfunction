execute store result score #id temp run loot spawn ~ ~ ~ loot bingo:random_num

data modify storage api:common get set from storage bingo:data all
function api:common/get
execute if data storage api:common result run data modify storage bingo:data picked set from storage api:common result

data modify storage bingo:data current append from storage bingo:data picked
execute store result score #amount temp if data storage bingo:data current[]
execute unless score #amount temp matches 9.. run function bingo:pick_item
