# TW3-LongJourneyExtendedPatch
Extension of the Long Journey Extended mod for The Witcher 3

I studied the [Long Journey Extended mod for The Witcher 3](https://www.nexusmods.com/witcher3/mods/1630/?tab=description&BH=1) to adapt it to something I wanted to do for a second playthrough of the Witcher 3 - disable the teleport straight to the Hangman Tree and instead go from Vizyma / White Orchard to the Nilfgaard garisson in the south of Velen.  I wanted to have to ride up to the Hangman tree.

I ended up with a few tweaks:

- a solution to the issue of fast traveling to unknown/undiscovered signposts

- conditional routes that unlock after a certain destination is known (a ferry on the Pontar from Oxenfurt to the Nilfgaard camp in White Orchard for example).

- fast travel to the outskirt of Kaer Morhen in addition to the main entrance 

## Installation

- Install the original Long Journey mod first
- Install the files in this GitHub repo inside "The Witcher 3\Mods\modLongJourneyExtended\" folder
- Run TheWitcher3ModManager.exe to merge the changes with your mods

## Changes to the Fast Travel system

Outside of Fast Travel, the map will show you all known Sign posts as landscape markers.
When attempting Fast Travel, the map will show you only Sign posts unlocked for travel to or from the Sign post you are currently using.

## Detailed Fast Travel routes available

Routes available by default:

- Vyzima <-> Novigrad nilfgaard big camp on south
- Vyzima <-> White orchard Sawmill
- White orchard Sawmill <-> Novigrad nilfgaard big camp on south (skip Vyzima)
- White orchard cackler bridge <-> Kaer Morhen
- Mulbrydale <-> Hangman Tree (to preserve main quest checkpoint)
- Novigrad nilf big camp on south <-> Hangman Tree (to preserve main quest checkpoint)

Unlocked routes when the destination is known or discovered during quests:

- Crow's Perch <-> Novigrad nilfgaard big camp on south
- Novigrad docks <-> Skellige (Craite Harbor)
- Brunwich village (HS) <-> Kaer Morhen
- Toussaint Lebioda Statue Harbor <-> Vyzima 
- Toussaint Lebioda Statue Harbor <-> Novigrad nilf big camp on south
- Toussaint Lebioda Statue Harbor <-> Toussaint Beauclair Harbor

Ferry on the Pontar - Unlock the routes by discovering the destinations first.

- White orchard Nilfgaard camp <-> Bayors Ferry Station (ferry shortcut along the Pontar)
- Oxenfurt Harbor <-> White orchard Nilfgaard camp
- Novigrad Piers <-> White orchard Nilfgaard camp
- Novigrad Piers <-> Oxenfurt Harbor
