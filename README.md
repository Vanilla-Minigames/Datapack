# Vanilla Minigames Data pack
The data pack source code of the Vanilla Minigames Minecraft server,
playable at `vanillaminigames.net` using the latest Minecraft Java version.

Feel free to join our Discord server to chat with other German/English speaking developers:
[![](https://discord.com/api/guilds/608640398595719170/widget.png?style=banner2)](https://discord.gg/JXVDQFf)

## No self-hosting support
While you're able to self-host the data pack, we do not offer support for self-hosting.
We will provide a way for developers and players to create a temporary development server, with all systems set up like on the main server, but with more permissions and (S)FTP access.

## Development
First, clone or download the repository. You can also directly create a fork of the repository and clone that one.

### Setting up the api for player stats & friend and party system
In case you need the api, open a terminal and run `python scripts/api/generate.py`, which will generate the files needed for reading/storing/deleting data.
Check [the docs for the api](data/api/docs/ReadMe.md) for more information on how to use it.

### Other setup
If you're developing in a single player world, you likely want to run `/tag @s add gm` to be able to switch your gamemode without restrictions.
If you're using our development server, that's already done for you.

| Tag | Description
| - | -
| gm | Allows you to switch your gamemode without restrictions
| debug | Displays error messages from the api
| tps | Displays the current tps in a bossbar
| joinme | Allows you to create JoinMes

## Commands

| Command | Description
| - | -
| /trigger l | Leaves the current game and joins the lobby
| /trigger Party | Shows all party commands and invites someone to your party
| /trigger gm | Switches your gamemode (1 = creative, 2 = adventure, 3 = spectator)
| /trigger joinme | Create a JoinMe for the current game
| /trigger spec | Without arguments, leaves the current game and switches your gamemode to spectator. With arguments, leaves the game teleports you to the player with the specified ID.

## Credits
This data pack uses the following libraries:
- API for storing data per player by [Meierschlumpf](https://github.com/Meierschlumpf)
They're modified to fit the needs of this data pack.
