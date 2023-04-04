data modify storage api:players default set value {id: 0, uuid: [], name: "", lastOnline: 0, rankId: 0}
data modify storage api:players default.display set value {white: "", rank: ""}
data modify storage api:players default.friend set value {list: [], requests: [], invites: []}
data modify storage api:players default.party set value {id: 0, requests: [], invites: [], members: [], temp_members: []}

# statistics
data modify storage commandmc:players default.statistics set value {}
data modify storage commandmc:players default.statistics.lobby set value {play: 0}
# more statistics can be added when needed