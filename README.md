# Cops_FiveM v1.0.1
Thanks to FiveM Scripts for their help :

<a href="https://discord.gg/eNJraMf"><img alt="Discord Status" src="https://discordapp.com/api/guilds/285462938691567627/widget.png"></a>

Support Discord (Horizon) :

<a href="https://discord.gg/btQzwvt"><img alt="Discord Status" src="https://discordapp.com/api/guilds/303627262199070720/widget.png"></a>


# Description

Cops_FiveM is a script for RP server mainly. It let servers to have a cops system with loadout, vehicles, inventory check, ...

# Current Features (full version)

* Add and remove cops
* Cops can take their service in the police station
* Cops can take a break in the police station again
* When in service, cops can take/store a cop vehicle
* They can check the inventory of someone (it also remove all illegal items while checking)
* They can give fines (negative account is possible)
* They can cuff (credits to Marxy : https://forum.fivem.net/t/release-simple-cuff-script-and-example-resource/4200)
* They can force a cuffed player to enter in a vehicle

# Current Features (lite version)

* Add and remove cops
* Cops can take their service in the police station
* Cops can take a break in the police station again
* When in service, cops can take/store a cop vehicle
* They can cuff (credits to Marxy : https://forum.fivem.net/t/release-simple-cuff-script-and-example-resource/4200)
* They can force a cuffed player to enter in a vehicle

# Changelog
You can find the changelog [here](CHANGELOG.md)

# Contribute
if you are a developer and  would like to contribute any help is welcome!   
The contribution guide can be found [here](CONTRIBUTING.md).

(Readme, Contributing and Changelog files from by [FiveM Script](https://github.com/FiveM-Scripts/), thanks ^^)

# Support
* Before posting, please read if your problem was'nt resolved earlier in this thread
* If not, give me your server and client (F8) error
* If you have suggestion, please open a ticket [here](https://github.com/Kyominii/Cops_FiveM/issues/new) 

# Full-version installation

## Requirements

* [Essentialmode](https://forum.fivem.net/uploads/default/original/2X/5/54a507970838cfa65eee3b13e9c388676c831a45.zip)
* [es_freeroam](https://github.com/FiveM-Scripts/es_freeroam)
* [Vdk_recolt](https://forum.fivem.net/t/release-recolt-treatment-selling-jobs-system-v1-1/15465)
* [Vdk_inventory](https://forum.fivem.net/t/release-inventory-system-v1-4/14477)
* [Simple Banking](https://forum.fivem.net/t/release-simple-banking-2-0-now-with-gui/13896)
* [JobSystem](https://forum.fivem.net/t/release-jobs-system-v1-0-and-paycheck-v2-0/14054)
* [Skin Customization](https://forum.fivem.net/t/release-skin-customization-v1-0/16491)

## Installation

* Install requirements
* Download police folder from this git
* Put this folder to resources folder in your server
* Add this piece of code in server.lua (Simple Banking)
```lua
RegisterServerEvent('bank:withdrawAmende')
AddEventHandler('bank:withdrawAmende', function(amount)
    TriggerEvent('es:getPlayerFromId', source, function(user)
        local player = user.identifier
        local bankbalance = bankBalance(player)
		withdraw(player, amount)
		local new_balance = bankBalance(player)
		TriggerClientEvent("es_freeroam:notify", source, "CHAR_BANK_MAZE", 1, "Maze Bank", false, "New Balance: ~g~$" .. new_balance)
		TriggerClientEvent("banking:updateBalance", source, new_balance)
		TriggerClientEvent("banking:removeBalance", source, amount)
		CancelEvent()
    end)
end)
```
(it's just a copy of withdraw event but we remove give money to the player)
* Please following all this vdk_recolt modifications or use complete package:

   [Modification #1 : Blips per job and hidding illegal blips](https://pastebin.com/H3J4B9q8)
 
   [Modification #2 : Change name of blips](https://pastebin.com/PDtfeYDP)
 
   [Modification #3 : Add limitations](https://pastebin.com/0a91wkPh)
 
   ### OR
 
   [Complete Package](https://forum.fivem.net/uploads/default/original/2X/1/19557c770f7e6caaf0f1c3ccce037b9b02bc351e.zip), don't forget to add a limitation INT NOT NULL (greater than 0) column in your items table
* Add your illegal job ID line 41 in server.lua (police)
* Add police.sql to your database
* Add police to your .yml file in AutoStartResource section

# Lite-version installation

## Requirements

* [Essentialmode](https://forum.fivem.net/uploads/default/original/2X/5/54a507970838cfa65eee3b13e9c388676c831a45.zip)
* [es_freeroam](https://github.com/FiveM-Scripts/es_freeroam)

## Installation

* Install requirements
* Download police-lite folder from this git
* Put this folder to resources folder in your server
* Add police.sql to your database
* Add police to your .yml file in AutoStartResource section


# Commands

Admin commands :
* /copadd (ID) : add a cop to bdd
* /coprem (ID) : remove a cop

Cop commands :
* /check : check the player inventory (you have to be stick to him)
* /cuff : cuff a player (also stick to the player)
* /fines (ID) (Amount) : force a player to pay a fine
* /forceEnter : make the player look at the vehicle and stick to it, cuff the player, use the command to force the player to enter in the vehicle
For forceEnter, the player MUST be close to the vehicle and look at it

# Special Thanks
* Xtas3 for helping me to have policer uniform
* The whole community of FiveM which help to improve this script by giving me example (devs) or ideas (users)
