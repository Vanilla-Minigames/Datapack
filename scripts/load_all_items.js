const excluded = [
	"dragon_breath",
	"dragon_head",
	"dragon_egg",
	"spawner",
	"air",
	"barrier"
]
const excludedFunctions = [
	str => str.startsWith("end_"),
	str => str.includes("_wall_"),
	str => str.includes("command_block"),
	str => str.includes("_spawn_egg"),
	str => str.includes("shulker_"),
	str => str.includes("structure_")
]

const fs = require("fs")

async function main() {
	const res = await fetch("https://raw.githubusercontent.com/Ersatz77/mcdata/1.19.4/processed/datapacks/mcdata.all_tags/data/mcdata/tags/items/all.json")
	const json = await res.json()

	const data = json.values.map(id => id.replace("minecraft:", "")).filter(id => !excluded.includes(id) && !excludedFunctions.some(f => f(id)))
	const formatted =
		"data modify storage bingo:data all set value []\n" +
		data.map((id, i) => "data modify storage bingo:data all append value {id:" + i + ",name:\"" + id + "\",detect:\"execute if score #bingochecking temp matches " + i + " as @a[tag=bingo,scores={bingoitem=0}] store result score @s bingoitem run clear @s " + id + " 0\"}").join("\n")
	fs.writeFileSync(process.cwd() + "/data/bingo/functions/load_items.mcfunction", formatted)

	fs.writeFileSync(
		process.cwd() + "/data/bingo/loot_tables/random_num.json",
		"{\"pools\":[{\"rolls\":{\"min\":0,\"max\":" + data.length + "},\"entries\":[{\"type\":\"item\",\"name\":\"minecraft:stone\",\"weight\":1,\"functions\":[{\"function\":\"set_count\",\"count\":0}]}]}]}"
	)
}
main()
