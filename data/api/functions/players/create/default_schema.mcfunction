data modify storage api:players default set value {id: 0, uuid: [], name: "", lastOnline: 0, rankId: 0}
data modify storage api:players default.display set value {white: "", rank: ""}
data modify storage api:players default.friend set value {list: [], requests: [], invites: []}
data modify storage api:players default.party set value {id: 0, requests: [], invites: [], members: [], temp_members: []}

# statistics
data modify storage api:players default.statistics set value {}
data modify storage api:players default.statistics.lobby set value {playtime: 0, coins: 0}
data modify storage api:players default.statistics.skywars set value {games: 0, wins: 0, kills: 0, deaths: 0}
data modify storage api:players default.statistics.bedwars set value {games: 0, wins: 0, beds: 0, kills: 0, deaths: 0}
# more statistics can be added when needed
