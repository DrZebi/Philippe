//user_event6.gml
//runs in attack_update.gml. powers up a clone spawned with AT_DSPECIAL.


//extend the clone's lifetime.
naruto_clone_max_lifetime = master_player_id.c_naruto_dspecial_clone_active_time;

//enable the clone to attack by enabling its attack AI.

// far_down_attacks[0] = AT_DAIR;
// far_down_attacks[1] = AT_DAIR;
// far_down_attacks[2] = AT_FAIR;
// far_down_attacks[3] = AT_DTILT;
// far_down_attacks[4] = AT_NAIR;
// far_down_attacks[5] = AT_NAIR;
// far_side_attacks[0] = AT_DATTACK;
// far_down_attacks[1] = AT_DAIR;
// far_side_attacks[2] = AT_FAIR;
// mid_side_attacks[1] = AT_FTILT;
// mid_side_attacks[2] = AT_FSTRONG;
// mid_side_attacks[3] = AT_BAIR;
// mid_side_attacks[4] = AT_FAIR;
// mid_side_attacks[5] = AT_NAIR;
// close_up_attacks[0] = AT_DTILT;
// close_up_attacks[1] = AT_UTILT;
// close_up_attacks[2] = AT_UAIR;
// close_up_attacks[3] = AT_NAIR;
// close_down_attacks[1] = AT_DTILT;
// close_down_attacks[2] = AT_DAIR;
// close_down_attacks[3] = AT_FAIR;
// close_down_attacks[4] = AT_NAIR;
// close_side_attacks[0] = AT_JAB;
// close_side_attacks[1] = AT_NAIR;
// close_side_attacks[2] = AT_FAIR;
// close_side_attacks[3] = AT_BAIR;
// close_side_attacks[4] = AT_FTILT;



//tell the master player that it currently has a dspecial clone active.
master_player_id.naruto_currently_has_dspecial_clone_active = 1;



// print(ai_attacks)
print("it ran")

if(!is_master_player){ 
	is_dspecial_clone = true
	temp_level = 9
}
//neutral_attacks[0] = AT_JAB;
//neutral_attacks[1] = AT_NAIR;