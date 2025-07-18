//hitbox_update.gml


//keep track of the last player that the real Naruto successfully hit. If the player is on the same team, don't count it.
if (is_master_player && hit_player_obj.state_cat == SC_HITSTUN && get_player_team(hit_player_obj.player) != get_player_team(player)) {
	naruto_last_hit_opponent = hit_player_obj;
}







switch (my_hitboxID.attack) {
	
case AT_DAIR:
	 if (state != PS_ATTACK_AIR || attack != AT_DAIR || was_parried) break;
	 //has no whifflag if it hits.
	//has_hit = true;
	
	//if it hits early, naruto can hitfall it.
	if (my_hitboxID.hitbox_timer > 5 || hitpause) break;
	old_vsp = vsp;
	old_hsp = hsp;
	vsp = 0;
	hsp = 0;
	hitpause = true;
	hitstop = 10;
break;


case AT_FSPECIAL_2:
	//if this hit was not a trade, teleport behind the opponent.
	//code for the followup happens in attack_update.
	if (state != PS_ATTACK_AIR || attack != AT_FSPECIAL_2 || was_parried) break;
	
	//slow down movement speed. also jump a little.
	old_hsp *= 0.5;
	old_vsp = -3;
	
	//if (window < 3) {
		window = 3;
		window_timer = 1;
	//}
	
	//if this is a clone, make it teleport behind the opponent.
	if (!is_master_player) {
		x = hit_player_obj.x + spr_dir * 30;
		y = hit_player_obj.y - 16;
	}
	//if the opponent was stunned, jump up with the opponent's trajectory.
	//if (hit_player_obj.state_cat != SC_HITSTUN) break;
	//old_vsp = clamp(hit_player_obj.vsp, -4, -1)
break;

case AT_NSPECIAL:
	if (my_hitboxID.hit_priority == 1) break;
	switch (my_hitboxID.hbox_num) {
		case 1:
			//when the initial projectile hits, spawn a multihit projectile.
			if (has_hit) exit;
			has_hit = true;
			var rasen = create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x, my_hitboxID.y);
			rasen.spr_dir = my_hitboxID.spr_dir;
			hit_player_obj.x += rasen.spr_dir * 10;
			//pass on the charge strength of this projectile.
			rasen.proj_nspecial_charge = my_hitboxID.proj_nspecial_charge;
		//break;
		case 2:
			//multihit projectile: drag player towards projectile.
			
			
			if (hit_player_obj.state_cat == SC_HITSTUN) {
				hit_player_obj.x += round((my_hitboxID.x - hit_player_obj.x) * my_hitboxID.proj_magnet_strength);
				var half_height = clamp(round(hit_player_obj.char_height / 2), 20, 50);
				hit_player_obj.y += round(((my_hitboxID.y + half_height) - hit_player_obj.y) * my_hitboxID.proj_magnet_strength);
			}
		break;
	}

}

