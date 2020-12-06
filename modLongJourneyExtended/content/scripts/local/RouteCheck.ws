function isFastTravelBlocked(location_to : name, is_discovered_to: bool, is_known_to : bool ) : bool
{
	var location_from  : name;

	location_from = thePlayer.getLastUsedSignpost();

	/* Vyzima <-> Novigrad nilfgaard big camp on south */
	if (location_from == 'Vyzima castle entrance' && location_to == 'novigrad_garrison') return false;
	if (location_from == 'novigrad_garrison' && location_to == 'Vyzima castle entrance') return false;
 
	/* Vyzima <-> White orchard Sawmill	*/
	if (location_from == 'Vyzima castle entrance' && location_to == 'woodcutters_lodge') return false;
	if (location_from == 'woodcutters_lodge' && location_to == 'Vyzima castle entrance') return false;
 
	/* White orchard Sawmill <-> Novigrad nilfgaard big camp on south (skip Vyzima) */
	if (location_from == 'woodcutters_lodge' && location_to == 'novigrad_garrison') return false;
	if (location_from == 'novigrad_garrison' && location_to == 'woodcutters_lodge') return false;

	/* White orchard cackler bridge <-> Kaer Morhen */
	if (location_from == 'bridge_gate' && location_to == 'morhen_mine_dam') return false;
	if (location_from == 'morhen_mine_dam' && location_to == 'bridge_gate') return false;
	
	/* Mulbrydale <-> Hangman Tree (to preserve main quest checkpoint) */
	if (location_from == 'poppystone' && location_to == 'nml_hangman_tree') return false;
	if (location_from == 'nml_hangman_tree' && location_to == 'poppystone') return false;

	/* Novigrad nilfgaard big camp on south <-> Hangman Tree (to preserve main quest checkpoint) */
	if (location_from == 'novigrad_garrison' && location_to == 'nml_hangman_tree') return false;
	if (location_from == 'nml_hangman_tree' && location_to == 'novigrad_garrison') return false;
	
	if (location_from == 'barons_yard' || ( (location_to == 'barons_yard') && (is_discovered_to || is_known_to)))
	{
		/* Crow's Perch <-> Novigrad nilfgaard big camp on south */
		if (location_from == 'barons_yard' && location_to == 'novigrad_garrison') return false;
		if (location_from == 'novigrad_garrison' && location_to == 'barons_yard') return false;
	 
	}

	if (location_from == 'craite_harbor' || ( (location_to == 'craite_harbor') && (is_discovered_to || is_known_to)))
	{
		/* Novigrad docks <-> Skellige (Craite Harbor) */
		if (location_from == 'novigrad_piers' && location_to == 'craite_harbor') return false;
		if (location_from == 'craite_harbor' && location_to == 'novigrad_piers') return false;
	 
	}

	if (location_from == 'ep1_wedding_village' || ( (location_to == 'ep1_wedding_village') && (is_discovered_to || is_known_to)))
	{
		/* Brunwich village (HS) <-> Kaer Morhen  */
		if (location_from == 'ep1_wedding_village' && location_to == 'morhen_mine_dam') return false;
		if (location_from == 'morhen_mine_dam' && location_to == 'ep1_wedding_village') return false;
	}

	if (location_from == 'feet_of_lebioda_ft' || ( (location_to == 'feet_of_lebioda_ft') && (is_discovered_to || is_known_to)))
	{
		/* Toussaint Lebioda Statue Harbor <-> Vyzima */
		if (location_from == 'feet_of_lebioda_ft' && location_to == 'Vyzima castle entrance') return false;
		if (location_from == 'Vyzima castle entrance' && location_to == 'feet_of_lebioda_ft') return false;
		
		/* Toussaint Lebioda Statue Harbor <-> Novigrad nilf big camp on south */
		if (location_from == 'feet_of_lebioda_ft' && location_to == 'novigrad_garrison') return false;
		if (location_from == 'novigrad_garrison' && location_to == 'feet_of_lebioda_ft') return false;

		/* Toussaint Lebioda Statue Harbor <-> Toussaint Beauclair Harbor */
		if (location_from == 'feet_of_lebioda_ft' && location_to == 'beauclair_harbor_ft') return false;
		if (location_from == 'beauclair_harbor_ft' && location_to == 'feet_of_lebioda_ft') return false;

 	}

	/* Ferry on the Pontar */
	if (location_from == 'bayors_ferry_station' || ( (location_to == 'bayors_ferry_station') && (is_discovered_to || is_known_to)))
	{
		/* Bayors Ferry Station <-> White orchard Nilfgaard camp */
		if (location_from == 'bayors_ferry_station' && location_to == 'Nilfgaard_camp') return false;
		if (location_from == 'Nilfgaard_camp' && location_to == 'bayors_ferry_station') return false;
	}

	if (location_from == 'oxenfurt_harbor' || ( (location_to == 'oxenfurt_harbor') && (is_discovered_to || is_known_to)))
	{
		/* Oxenfurt Harbor <-> White orchard Nilfgaard camp */
		if (location_from == 'oxenfurt_harbor' && location_to == 'Nilfgaard_camp') return false;
		if (location_from == 'Nilfgaard_camp' && location_to == 'oxenfurt_harbor') return false;
	}

	if (location_from == 'novigrad_piers' || ( (location_to == 'novigrad_piers') && (is_discovered_to || is_known_to)))
	{
		/* Novigrad Piers <-> White orchard Nilfgaard camp  */
		if (location_from == 'novigrad_piers' && location_to == 'Nilfgaard_camp') return false;
		if (location_from == 'Nilfgaard_camp' && location_to == 'novigrad_piers') return false;

		/* Novigrad Piers <-> Oxenfurt Harbor */
		if (location_from == 'oxenfurt_harbor' && location_to == 'novigrad_piers') return false;
		if (location_from == 'novigrad_piers' && location_to == 'oxenfurt_harbor') return false;
	}


	return true;
}