//article that handles clone despawns.
//added as a last measure to prevent despawns.



//print("article - user event start")
with (oPlayer) {
    if (!custom_clone || clones_player_id != other.player_id) continue;
    
    //clones can't take damage traditionally.
	initial_invince = 2; // <- abuses a respawn invul. variable, to get invincibility without the white glow effect 
	//hurtboxID.sprite_index = asset_get("empty_sprite");
	
	//destroy the clone if its 'destroy' variable equals true.
	if (naruto_clone_destroy) {
		//destroy script
		user_event(5);
		//print("article - user event ran")
	}
}

