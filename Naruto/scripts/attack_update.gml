//B - Reversals
switch(attack) {
	case AT_NSPECIAL:
	//case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}


//sound
user_event(12);

// per-attack logic


if (hitpause) exit;

if (is_end_of_window()) {
	switch(attack) {
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
	case AT_FTILT:
	case AT_DTILT:
		if window == 1 {

		}
		break;
	case AT_UTILT:
		if window == 1 {

		}
		break;
	case AT_FSTRONG:
	case AT_DSTRONG:
		if window == 2 {

		}
		break;
	case AT_USTRONG:
		if window == 2 {

		}
		break;
		
	case AT_DAIR:
		if window == 2 {

		}
		break;
	}
}


//attack logic


switch(attack) {	
	
	case AT_USTRONG:
		if (instance_exists(naruto_spawned_clone_reference) && window_timer > 1) {
			naruto_spawned_clone_reference.strong_charge = strong_charge;
		}
		
		if (window_timer != 1) break;
		
		switch (window) {
			case 1:
				naruto_spawned_clone_reference = spawn_clone(x, y);
				if (instance_exists(naruto_spawned_clone_reference)) {
					var move_dist = spr_dir * c_naruto_ustrong_clone_spawn_distance + ceil(hsp * 2);
					
					with (naruto_spawned_clone_reference) {
						set_attack(AT_USTRONG_2);
						
						//move as far forward as possible
						hsp = other.hsp * 2;
						
						//var floor_obj = asset_get("par_block")
						//for(var i = 4; i > 0; i--) {
						//	var move_dist_fraction = round(move_dist / i);
						//	if place_meeting(x + move_dist_fraction + spr_dir * 48, y + 1, floor_obj) && !place_meeting(x + move_dist_fraction + spr_dir * 48, y, floor_obj) {
						//		x += move_dist_fraction;
						//	}
						//	move_dist -= move_dist_fraction;
						//}
					}
				}
				//if a clone could not be spawned, skip the attack charge window.
				else {
					window = 2;
					window_timer = 0;
				}
			break;
			case 2:
				hsp *= 0.5;
				
				//make this clone's charge power = naruto's charge power
				
				
			break;
			
			case 3:
			
			
			break;
		}
	break;
	
	case AT_USTRONG_2: //clone attack for ustrong.
		//adjust this attack's jump height and etc in the grid indexes.
		//initially the clone has no hurtbox until it starts rising. this is handled in update.gml.
		switch (window) {
			case 1:
				//snap a fixed distance forwards, without sliding off of ledges.
				if (window_timer == 2) {
					hsp += spr_dir * master_player_id.c_naruto_ustrong_clone_spawn_distance;
					break;
				}
				
				//if the master player isn't using ustrong, end this attack and destroy this clone.
				with (master_player_id) {
					if (attack != AT_USTRONG || state != PS_ATTACK_GROUND) {
					other.naruto_clone_destroy = true;
					}

					//if the master player is no longer charging, progress to the next window.
					else if (window >= 3) {
						other.window += 1;
						other.window_timer = 0;
					}
					//move the clone relative to the direction the player is holding in.
					else {
						var holding_dir = right_down - left_down;
						if (holding_dir == other.spr_dir) {
							other.hsp = holding_dir * c_naruto_ustrong_clone_horizontal_speed_forwards;
						}
						else if (-holding_dir == other.spr_dir) {
							other.hsp = holding_dir * c_naruto_ustrong_clone_horizontal_speed_backwards;
						}
						else {
							other.hsp = 0;
						}
					}
				}
			break;
		
			case 2:
				with (master_player_id) {
					if (attack != AT_USTRONG || state != PS_ATTACK_GROUND) {
					other.naruto_clone_destroy = true;
					}
				}
			break;
			
			case 3:
				if (window_timer == 1) {
					spawn_hit_fx_2x(x, y, master_player_id.vfx_ustrong_ground_erupt);	
				}
			break;
		}
	break;
	
	case AT_DSTRONG:
		switch (window) {
			case 2:
				//if the leader, spawn a clone double
				if (window_timer == 2 && is_master_player) {
					
					naruto_spawned_clone_reference = spawn_clone(x, y);
					
					var new_clone_exists = instance_exists(naruto_spawned_clone_reference);
					
					//var hsp_boost = get_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED);
					
					//clone attack direction is opposite the direction the player is holding in.
					if (left_down - right_down == spr_dir) { spr_dir *= -1; hsp *= -1; }
					else if (new_clone_exists) { naruto_spawned_clone_reference.spr_dir *= -1; }
					
					if (new_clone_exists) {
						//spawn_hit_fx_2x(x, y, vfx_clone_smoke).depth = depth+1;
						
						with naruto_spawned_clone_reference {
							//set_state(PS_ATTACK_GROUND);
							safely_set_attack(AT_DSTRONG);
							window = 2;
							window_timer = 2;
							hsp = other.hsp * -1;
							strong_charge = other.strong_charge;
						}
					}
					else {
						hsp = 0;
					}
					
					
				}
				//cancel clone attack if the leader somehow isn't using the same attack
				if (!is_master_player) {
					if (master_player_id.attack != AT_DSTRONG || master_player_id.state != PS_ATTACK_GROUND) {
						was_parried = true;
						set_state(PS_PRATLAND);
					}
					else {
						if (master_player_id.window <= 2) window_timer = 0;

					}
				}
			break;
			case 3:
			case 4:
			case 5:
				//sync hitpause and on-hit variables.
				var other_dstrong_user = is_master_player ? naruto_spawned_clone_reference : master_player_id;
				if (!instance_exists(other_dstrong_user)
					|| other_dstrong_user.attack != AT_DSTRONG
					|| other_dstrong_user.state != PS_ATTACK_GROUND) break;
				
				has_hit 		= max(has_hit,			other_dstrong_user.has_hit);
				has_hit_player	= max(has_hit_player,	other_dstrong_user.has_hit_player);
				was_parried 	= max(was_parried,		other_dstrong_user.was_parried);
				
				if (other_dstrong_user.hitpause && other_dstrong_user.hitstop >= 1) {
					window = other_dstrong_user.window;
					window_timer = other_dstrong_user.window_timer;
					activate_hitpause(other_dstrong_user.hitstop);
				}
			break;
		}
	
	break;
	
	case AT_NSPECIAL:
		//rasengan
		
		
		
		can_move = false;
		//slow down movement if in the air
		if (free) hsp *= 0.99;
		
		switch (window) {
			
			case 2: //startup
				if (window_timer != 1) break;
				//if at full charge, skip this window
				//if (naruto_nspecial_charge >= c_naruto_nspecial_max_charge) {
				//	window++;
				//	window_timer = 0;
				//	break;
				//}
				
				//if a clone is nearby, use that clone instead of summoning a new one.
				naruto_spawned_clone_reference = get_nearest_clone(c_naruto_clone_teamup_max_distance);
				if (naruto_spawned_clone_reference != noone) {
					//if a clone was found, set this clone's attack to AT_NSPECIAL_2.
					clone_teamup_effect();
					with (naruto_spawned_clone_reference) {
						safely_set_attack(AT_NSPECIAL_2);
						//skip startup window.
						window++;
						window_timer = 0;
					}
				}
				else {
					//if no clone was found, spawn a new clone, with the default startup time.
					naruto_spawned_clone_reference = spawn_clone(x - spr_dir * 30, y);
					if instance_exists(naruto_spawned_clone_reference) {
						with (naruto_spawned_clone_reference) { safely_set_attack(AT_NSPECIAL_2);  }
						spawn_hit_fx_2x(naruto_spawned_clone_reference.x, y, vfx_clone_smoke).depth = depth-1;
					}
				}
			break;
			
			case 3: //wait for clone
				//cycle this window until the clone is ready to help charge.
				//skip ahead if this move is at max charge.
				//if (naruto_nspecial_charge >= c_naruto_nspecial_max_charge && !special_down) {
				//	window += 3;
				//	window_timer = 0;
				//	break;
				//}
				
				//cancel this attack if the clone has gone away, or isn't using the right attack
				if (!clone_exists_and_is_using_attack(naruto_spawned_clone_reference, AT_NSPECIAL_2)) {
					window = 9;
					window_timer = 0;
					break;
				}
				//when the clone reaches window 3 of at_nspecial_2, transition the player to the next window of at_nspecial.
				if (naruto_spawned_clone_reference.window >= 3) {
					window++;
					window_timer = 0;
					//clear the relevant button buffers, so that you can't cancel the attack -before- the charge window starts.
					//clear_button_buffer(PC_LEFT_HARD_PRESSED);
					//clear_button_buffer(PC_RIGHT_HARD_PRESSED);
					clear_button_buffer(PC_SHIELD_PRESSED);
					
				}
			break;
			
			case 5: //charge window
				vsp = min(vsp, c_naruto_nspecial_max_fall_speed);
				
				//cancel this attack with a hard left/right press, or with the shield button
				//var hard_press_dir = left_hard_pressed - right_hard_pressed;
				//if (left_hard_pressed - right_hard_pressed != 0 || shield_pressed || jump_pressed) {
				
				//cancel this attack with a dodge.
				if (shield_pressed) {
					
					print("shield pressed")
					if (!free) {
						//on the ground: cancel into a roll.
						//clear_button_buffer(PC_SHIELD_PRESSED);
						
						switch ((right_down - left_down) * spr_dir) {
							
							case 1: 
								set_state(PS_ROLL_FORWARD);
							break;
							case -1: 
								
								set_state(PS_ROLL_BACKWARD);
							break;
							default:
								window = 9;
								window_timer = 0;
							break;
						}
					}
					else {
						//in the air: cancel into an airdodge if possible.
						if (has_airdodge) {
							has_airdodge = 0;
							set_state(PS_AIR_DODGE);
							//clear_button_buffer(PC_SHIELD_PRESSED);
						}
						//if no airdodge, cancel into nspecial's recovery.
						else {
							window = 9;
							window_timer = 0;
						}
					}
				}

				//stop charging if the special button is not held
				else if (!special_down) {
					window++;
					window_timer = 0;
					break;
				}
				
				//charging sfx
				if (naruto_nspecial_charge == 1 && naruto_nspecial_charge != c_naruto_nspecial_max_charge) {
					voice_play(VB_RASENGAN_CHARGING);
					naruto_nspecial_sound = sound_play(sound_get("snd_rasenganstartcharge"), 0, noone, 0.8, 1)
				}
				
				//charge up
				var check_full_charge = (naruto_nspecial_charge >= c_naruto_nspecial_max_charge);
				naruto_nspecial_charge = min(naruto_nspecial_charge + 1, c_naruto_nspecial_max_charge);
				if (!check_full_charge && naruto_nspecial_charge >= c_naruto_nspecial_max_charge) {
					voice_play(VB_RASENGAN_FULLCHARGE);
				}
			break;
			
			case 6:
				//limit fall speed
				vsp = min(vsp, c_naruto_nspecial_max_fall_speed);
				
				//play voice sfx at end of window
				if (!is_end_of_window()) break;
				if (naruto_nspecial_charge >= c_naruto_nspecial_max_charge) voice_play(VB_RASENGAN_MAX);
				else voice_play(VB_RASENGAN);
			break;
			
		}
	break;
	
	case AT_NSPECIAL_2:
		//'clone' part of nspecial.
		var master_is_using_nspecial;
		
		with (master_player_id) {
			master_is_using_nspecial = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_NSPECIAL && window <= 5);
		}
		
		depth = master_player_id.depth + 1;
		
		switch (window) {
			case 1:
			case 2:
				//magnet to the master player
				if (master_is_using_nspecial) {
					x = round((x + master_player_id.x - spr_dir * 30) * 0.5);
					y = round((y + master_player_id.y) * 0.5);
					spr_dir = master_player_id.spr_dir;
				}
			break;
			case 3:
				//attach to the master player
				if (master_is_using_nspecial) {
					x = master_player_id.x - spr_dir * 30;
					y = master_player_id.y;
				}	
				//end the attack if the leader isn't using nspecial
				else {
					window = 4;
					window_timer = 0;
				}
			break;
		}
			
	break;
	
	
	
	case AT_FSPECIAL:
		can_move = false;
		can_fast_fall = false;
		
		switch (window) {
			case 1:
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
				if (window_timer == 1) {
					//if a clone is nearby, use that clone instead of summoning a new one.
					naruto_spawned_clone_reference = get_nearest_clone(c_naruto_clone_teamup_max_distance);
					if (naruto_spawned_clone_reference != noone) {
						clone_teamup_effect();
						with (naruto_spawned_clone_reference) {
							set_state(PS_IDLE_AIR);
							attack = AT_FTILT; //set this variable to something that isn't AT_FSPECIAL_2, so that bugs don't occur
						}
					}
				}
				
				if (window_timer == window_length - 2) {
					//if necessary, free up enough clone slots to use this attack
					if (naruto_spawned_clone_reference == noone) cap_maximum_clones(1);
				}
				
				else if (window_timer == window_length) {
					//attack starts - spawn a naruto clone if there is not one nearby
					if (!instance_exists(naruto_spawned_clone_reference)) naruto_spawned_clone_reference = spawn_clone(x, y);
					//if there was already a clone, tell this clone to use the powered-up version of the attack
					else naruto_spawned_clone_reference.naruto_clone_teamup_active = true;
					
					//if a clone couldn't be spawned, exit here.
					if (!instance_exists(naruto_spawned_clone_reference)) {
						window = 4;
						window_timer = 0;
						break;
					}
					
					naruto_spawned_clone_reference.spr_dir = spr_dir;
					
					//on special button release: throw the clone.
					if (!special_down && !shield_down && !shield_pressed) {
						with (naruto_spawned_clone_reference) {
							y = other.y-20;
							free = true;
							safely_set_attack(AT_FSPECIAL_2);
						}
						window = 2;
					}
					//on special button held: make the clone throw the original.
					else {
						
						with (naruto_spawned_clone_reference) {
							safely_set_attack(AT_FSPECIAL);
							window = 3;
							window_timer = 0;
							sprite_index = other.sprite_index;
							image_index = other.image_index;
							vsp = other.vsp;
							hsp = other.hsp;
						}
						y -= 20;
						free = true;
						safely_set_attack(AT_FSPECIAL_2);
					}
				}
				else {
					//if a clone is nearby, pull that clone towards the player
					if (instance_exists(naruto_spawned_clone_reference)) {
						with naruto_spawned_clone_reference {
							//set_state(PS_IDLE_AIR);
							x = round((x + other.x) * 0.5);
							y = round((y + other.y) * 0.5);
						}
					}
				}

			break;
			case 2:
				hsp *= 0.9;
				vsp *= 0.9;
				vsp = min(vsp, 4)
			break;
			
			case 3:
			case 4:
			//if successfully thrown, set this move's cooldown.
			with (master_player_id) move_cooldown[AT_FSPECIAL] = c_naruto_fspecial_cooldown;
		}
	break;
	
	case AT_FSPECIAL_2:
		//attack for when naruto or a clone is thrown.
		if (window >= 3) can_wall_jump = true;
		
		switch (window) {
			case 1:
				//count how long naruto spends using this attack.
				naruto_special_timer = 0;
			
				var tele_reference;
				if (is_master_player) tele_reference = naruto_spawned_clone_reference;
				else tele_reference = master_player_id;
				
				//if the referenced unit is using fspecial, teleport into the right place.
				if (instance_exists(tele_reference) && tele_reference.attack == AT_FSPECIAL && (tele_reference.state == PS_ATTACK_GROUND || tele_reference.state == PS_ATTACK_AIR)) {
					spr_dir = tele_reference.spr_dir;
					x = tele_reference.x - 30 * spr_dir;
					y = tele_reference.y - 30;
					depth = tele_reference.depth + 0.5;
					vsp = -6 * (!(tele_reference.free));
				}
				//if the referenced unit has 'dropped' this unit for some reason, enter pratfall.
				else {
					set_state(PS_PRATFALL);
				}
				if (window_timer >= 6) {
					if (window_timer < 12) {
						if (instance_exists(tele_reference) && tele_reference.attack == AT_FSPECIAL && (tele_reference.state == PS_ATTACK_GROUND || tele_reference.state == PS_ATTACK_AIR)) {
							spr_dir = tele_reference.spr_dir;
							x = tele_reference.x - 10 * spr_dir;
							y = tele_reference.y - 70;
							depth = tele_reference.depth + 0.5;
							vsp = -6 * (!(tele_reference.free));
						}
					}
				}
				if (window_timer == 12) {
						if (instance_exists(tele_reference) && tele_reference.attack == AT_FSPECIAL && (tele_reference.state == PS_ATTACK_GROUND || tele_reference.state == PS_ATTACK_AIR)) {
						spr_dir = tele_reference.spr_dir;
						x = tele_reference.x - -10 * spr_dir;
						y = tele_reference.y - 10;
						depth = tele_reference.depth + 0.5;
						vsp = -6 * (!(tele_reference.free));
					}

				}
			break;
			
			case 2:

			case 3:
				//the real naruto can cancel this attack after 30 frames. he can also cancel it on hit.
				naruto_special_timer++;
				if (is_master_player) {
					
					if (!was_parried && (naruto_special_timer >= 30 || has_hit)) {
						iasa_script();
					}
					break;
				}
				
				
				//if the clones hit, automatically use a follow-up attack.
				if (has_hit_player) {
					//do something
					//vsp = -3;
					hsp *= 0.5;
					
					if (naruto_clone_teamup_active) {
						safely_set_attack(AT_BAIR);
					}
					else {
						spr_dir *= -1;
						//activate_hitpause(5);
						safely_set_attack(AT_NAIR);
					}
				}
				else if (has_hit) {
					hsp = 0;
				}
				else {
					//the clones can jump-cancel it after 50 frames.
					can_jump = (naruto_special_timer >= 50);
				}
			break;
		}
	break;
	
	
	case AT_USPECIAL_2:
		//'clone' part of nspecial.
		var uspecial_active;
		
		if (is_master_player) {
			with (naruto_spawned_clone_reference) {
				uspecial_active = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window <= 6);
			}
		}
		else {
			with (master_player_id) {
				uspecial_active = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_USPECIAL && window <= 6);
			}
		}

		if (window < 2 && !uspecial_active) {
			set_state(PS_PRATFALL);
		}
		
		depth = master_player_id.depth + 1;
		
		can_wall_jump = (window >= 2);
	break;
	
	case AT_USPECIAL:
		can_move = true;
		can_fast_fall = false;
		can_wall_jump = (window >= 6);
		//fall_through = true;
		
		switch (window) {
			case 1: // startup 1: grab a clone
				
				if (window_timer == 1) {
					naruto_spawned_clone_reference = get_nearest_clone(c_naruto_clone_teamup_max_distance);
					if (naruto_spawned_clone_reference != noone) {
						clone_teamup_effect();
						with (naruto_spawned_clone_reference) {
							set_state(PS_IDLE_AIR);
							attack = AT_FTILT; //set this variable to something that isn't AT_USPECIAL_2, so that bugs don't occur
						}
					}
				}
				
				else {
					//if a clone is nearby, pull that clone towards the player
					if (instance_exists(naruto_spawned_clone_reference)) {
						with naruto_spawned_clone_reference {
							set_state(PS_IDLE_AIR);
							x = round((x + other.x) * 0.5);
							y = round((y + other.y) * 0.5);
							vsp = min(vsp, 0);
						}
					}
				}
				
				//stop falling
				vsp = min(vsp, 0);
				
				//allow 'walking' during this move's startup
				if (!free) {
					if (abs(hsp) <= walk_speed || sign(hsp) == left_down - right_down )
						hsp = clamp(hsp + (right_down - left_down) * walk_accel, -walk_speed, walk_speed);
				}
				
				//at the end of this window, if a clone hasn't been found, try to make room to summon one next window
				if (is_end_of_window()) {
					if (naruto_spawned_clone_reference == noone) cap_maximum_clones(1);
					//if a clone was found, do the teamup and skip window 2.
					else {
						window = 3;
						window_timer = 0;
					}
				}
			break;
			
			case 2: //summon clone if there isn't one yet, transition to next window or at_uspecial_ground
				//allow 'walking' during this move's startup
				if (!free) {
					if (abs(hsp) <= walk_speed || sign(hsp) == left_down - right_down )
						hsp = clamp(hsp + (right_down - left_down) * walk_accel, -walk_speed, walk_speed);
					//summon clone
				}
				
				if (instance_exists(naruto_spawned_clone_reference)) {
					with naruto_spawned_clone_reference {
						set_state(PS_IDLE_AIR);
						x = round((x + other.x) * 0.5);
						y = round((y + other.y) * 0.5);
						vsp = min(vsp, 0);
					}
				}

				
			break;
			
			case 3: //startup 2
				if (is_end_of_window()) {
					spawn_hit_fx(x, y, 301);
					sound_play(asset_get("sfx_blow_light1"), false, noone, 0.5, 0.8);
				}
				if (window_timer != 1 || !is_master_player) break;
				//attack starts - spawn a naruto clone if there is not one nearby
				if (!instance_exists(naruto_spawned_clone_reference)) {
					naruto_spawned_clone_reference = spawn_clone(x, y - 1);
					if (naruto_spawned_clone_reference > 0) spawn_hit_fx_2x(x, y, vfx_clone_smoke).depth = depth+1;
				}
				else {
					naruto_spawned_clone_reference.y -= 1;
				}
				
				if (instance_exists(naruto_spawned_clone_reference)) {
					if (shield_pressed || shield_down) {
						with (naruto_spawned_clone_reference) {
							safely_set_attack(AT_USPECIAL);
							window = other.window;
							window_timer = other.window_timer;
						}
						
						//swap positions
						var xx = x;
						var yy = y;
						x = naruto_spawned_clone_reference.x;
						y = naruto_spawned_clone_reference.y;
						naruto_spawned_clone_reference.x = xx;
						naruto_spawned_clone_reference.y = yy;
						
						//make the player fall
						safely_set_attack(AT_USPECIAL_2);
					}
					else {
						with (naruto_spawned_clone_reference) {
							safely_set_attack(AT_USPECIAL_2);
						}
					}
				}

			break;
			
			case 4: //initial hit
			break;
			
			case 5: //rising hit
				if (window_timer == 1) {
					hsp *= master_player_id.c_naruto_uspecial_hspeed_multiplier;
				}
			break;
			
			case 6: //recovery 1
				if (window_timer == 1) {
					hsp /= master_player_id.c_naruto_uspecial_hspeed_multiplier;
				}
			break;
			case 7: //recovery 2
				if (is_special_pressed(DIR_ANY)) {
					window = 8;
					window_timer = 0;
				}
				else if (is_end_of_window()) {
					attack_end();
					destroy_hitboxes();
					set_state(PS_PRATFALL);
				}
			break;

		}
	break;
	

	
	
	case AT_DSPECIAL:
		can_fast_fall = false;
		can_move = false;
		
		//if dspecial's cooldown becomes active, cancel this and transition straight to dspecial_2.
		if (move_cooldown[AT_DSPECIAL] > 0) {
			safely_set_attack(AT_DSPECIAL_2);
		}
		
		switch (window) {
			case 1:
				if (window_timer != 1) break;
				user_event(5);
			break;
				
			case 2:
				if (window_timer == 1 && naruto_currently_has_dspecial_clone_active == 0) { //get_window_value(attack, window, AG_WINDOW_LENGTH) - 2) {
					cap_maximum_clones(1);
				}
			
			case 3:
				//if the player has dspecial clones summoned, unsummon them and transition to dspecial_2.
				if (naruto_currently_has_dspecial_clone_active > 0) {
					dspecial_clone_out = 0;
					user_event(4);
					safely_set_attack(AT_DSPECIAL_2);
					break;
				}
				
				//summon 1 clone if the player is not charging dspecial.
				dspecial_clone_out = 1;
				dspecial_clones_out = 1;
				if (special_down || down_stick_down) break;
				var new_clone = spawn_clone(x, y);
				
				if (instance_exists(new_clone)) {
					spawn_hit_fx_2x(x, y, vfx_clone_smoke).depth = depth-1;
					//position swap based on held direction
					var slide_dir = (right_down - left_down);
					if (slide_dir == 0) slide_dir = spr_dir;

					hsp = slide_dir * 6;
					
					with (new_clone) {
						safely_set_attack(AT_DSPECIAL_2);
						hsp = -slide_dir * 6;
					}
					sound_play(sound_get("snd_clonespawn"));
					
				}
				
				safely_set_attack(AT_DSPECIAL_2);

				
				
			break;
			
			case 4:
				//dspecial is fully charged; summon 2 clones.

				var new_clone1 = spawn_clone(x, y);
				var new_clone2 = spawn_clone(x, y);
				var clone_successful = (new_clone1 != noone || new_clone2 != noone);
				
				if (clone_successful) {
					dspecial_clone_out = 2;
					dspecial_clones_out = 2;
					switch (right_down - left_down) {
						case -1:
							hsp = -8;
							if (instance_exists(new_clone2)) new_clone2.hsp = 8;
							break;
						case 1:
							hsp = 8;
							if (instance_exists(new_clone2))  new_clone2.hsp = -8;
							break;
						default:
							hsp = 0;
							if (instance_exists(new_clone1))  new_clone1.hsp = 8;
							if (instance_exists(new_clone2))  new_clone2.hsp = -8;
							break;
						
					}
				

					with (new_clone1) safely_set_attack(AT_DSPECIAL_2);
					with (new_clone2) safely_set_attack(AT_DSPECIAL_2);
					
					sound_play(sound_get("snd_clonespawn"))
					spawn_hit_fx_2x(x, y, vfx_clone_smoke).depth = depth-1;
				}
				else {
					//if no clones were spawned, despawn all existing clones instead.
					dspecial_clone_out = 0;
					user_event(4);
					//sound_play(sound_get("snd_clonedespawn"))
				}
				
				safely_set_attack(AT_DSPECIAL_2);
			break;
		}
		
	break;
	
	case AT_DSPECIAL_2:
		can_move = false;
		//if a clone is using this (indicating it was summoned with dspecial), give it the buffs listed in user_event6.gml.
		if (is_master_player || state_timer != 1 || !instance_exists(master_player_id)) break;
		user_event(6);
	break;
	
	case AT_DAIR:
	case AT_DSPECIAL_AIR: 
	case 47:
		if (window > 2) {
			if (window == 3) can_move = false;
			//kunai can be used once per airtime.
			move_cooldown[AT_DAIR] = 99999;
		}
	break;
	
	case AT_EXTRA_1:
		//attack used when a clone is 'in hitstun'.
		//on the final window, set this clone to be destroyed.
		if (window == 1 && window_timer == 1) {
			spawn_hit_fx(x, y, 301);
		}
		
		if (window != 3) break; 
		naruto_clone_destroy = true;
		//set maximum clone lifetime.
		naruto_clone_lifetime = naruto_clone_max_lifetime - 1; //max(1, naruto_clone_max_lifetime - get_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH));
	break;
	
	case AT_EXTRA_3:
		//attack used when a clone is deactivated.
		//simply stick it behind the player.
		x = master_player_id.x;
		y = master_player_id.y - 1;
		draw_indicator = 0;
		
	break;
	
	case AT_TAUNT_2:
		//slow-fall during this taunt.
		vsp = min(vsp, 1);
		
		switch (window) {
			case 1:
		
			
			
			//only the master player needs to do the following, and only once:
			if (window_timer != 5 || !is_master_player) break;
			//determine which taunt sprite to use.
			var taunt_spr;
			var taunt_x;
			
			//if there's no target, default male.
			if (!instance_exists(naruto_last_hit_opponent)) {
				taunt_spr = sprite_get("taunt_sexyjutsu_male");
				taunt_x = x;
			}
			
			//if the target has compatibility, use the sprite they specified.
			else {
				//face towards the target.
				taunt_x = naruto_last_hit_opponent.x;
				var new_spr_dir = sign(taunt_x - x);
				if (new_spr_dir != 0) spr_dir = new_spr_dir;
				
				if ("naruto_sexyjutsu_sprite" in naruto_last_hit_opponent) {
					switch (naruto_last_hit_opponent.naruto_sexyjutsu_sprite) {
						case 1: 
						case noone:
							taunt_spr = sprite_get("taunt_sexyjutsu_female");
						break;
						case 2:
							taunt_spr = sprite_get("taunt_sexyjutsu_male");
						break;
						default:
							taunt_spr = naruto_last_hit_opponent.naruto_sexyjutsu_sprite;
					}
				}
				else {
					//try to solve the target's gender, then set the sprite accordingly.
					var target_gender = guess_gender(naruto_last_hit_opponent);
					switch (target_gender) {
						case 2:
							taunt_spr = sprite_get("taunt_sexyjutsu_male");
						break;
						default:
							taunt_spr = sprite_get("taunt_sexyjutsu_female");
						break;
					}
				}
			}
			
			naruto_taunt_spr = taunt_spr;
			
			//set all clones to use this same taunt, wherever they are.
			with (oPlayer) {
				//set for all of naruto's clones who are not in hitstun or deactivated. 
				if (!custom_clone || clones_player_id != other || ( (attack == AT_EXTRA_1 || attack == AT_EXTRA_3) && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) ) ) continue;
				
				safely_set_attack(AT_TAUNT_2);
				hitpause = 0;
				hitstop = 0;
				vsp = 0;
				hsp = 0;
				window = other.window;
				window_timer = random_func(naruto_clone_lifetime % 20, other.window_timer, true);
				
				//face towards the target.
				var clone_new_spr_dir = sign(taunt_x - x);
				if (new_spr_dir != 0) spr_dir = clone_new_spr_dir;
				
			}
			sound_play(sound_get("snd_clonespawn"));
		
		break;
		
		
		case 2: //window 2
			if (is_master_player) {
				//for naruto: end taunt when the taunt button is released.
				if (!taunt_down) {
					window++;
					window_timer = 0;
				}
			}
			else {
				//for clones: end taunt when naruto is no longer taunting.
				if (is_end_of_window() && (master_player_id.state != PS_ATTACK_GROUND || master_player_id.attack != AT_TAUNT_2) ) {
					window++;
					window_timer = 0;
				}
			}
		break;
		case 3:
			if (window_timer != 1) break;
				spawn_hit_fx_2x(x, y, master_player_id.vfx_clone_smoke).depth = depth-1;
				if (is_master_player) sound_play(sound_get("snd_clonedespawn"));
		break;
	}
	break;
}



#define spawn_clone(var_x, var_y)
//var spawned_clone =  instance_create(var_x, var_y, "oPlayer");
//spawned_clone.x = var_x;
//spawned_clone.y = var_y;
//spawned_clone.master_player_id = id;
//return spawned_clone;

//don't allow clones to be spawned in testing.
if (object_index == oTestPlayer) return noone;

var new_clone = noone;

if (c_naruto_clone_mode == 0) {
	//clone mode 0
	//create a clone
	new_clone = instance_create(x, y, "oPlayer");
}
else {
	//clone mode 1
	//activate a clone
	for (var i = 0; i < c_naruto_maximum_clones; i++) {
        var this_clone = unit_player_id_array[i];
        
        //if this clone was somehow destroyed, spawn a new one.
        if (!instance_exists(this_clone)) {
            new_clone = instance_create(x, y, "oPlayer");
            new_clone.master_player_id = id;
            unit_player_id_array[i] = new_clone;
            break; //end the loop
        }

        //if this clone is inactive, select and activate it.
        var this_clone_is_active;
        with (this_clone) { this_clone_is_active = (is_clone_active()); }
        if (this_clone_is_active) continue;
        
        new_clone = this_clone;
            
        with (new_clone) {
            state = PS_IDLE;
            state_timer = 0;
            attack = AT_FTILT;
            naruto_clone_hitbox = -1 //this variable tells the clone's update.gml to generate a new clone-hitbox
            naruto_clone_lifetime = 0;
            naruto_clone_max_lifetime = other.c_naruto_clone_active_time;
            draw_indicator = 1;
            visible = true;
        }
        
        break; //end the loop
	
    }
}

if (new_clone == noone) return noone;
new_clone.x = var_x;
new_clone.y = var_y;
new_clone.spr_dir = spr_dir;
new_clone.strong_charge = 0;

//sound_play(sound_get("snd_clonespawn"));

return new_clone;







#define cap_maximum_clones(arg_leeway)

if (c_naruto_clone_auto_despawn_when_using_specials) return;

var clone_count = 0;
var clone_max = min(11, c_naruto_maximum_clones - arg_leeway);
if (c_naruto_clone_mode == 1) {
		with (oPlayer) {
		//if in clone mode 1, first remove clones that are currently in hitstun
	    if (custom_clone && player == other.player && attack == AT_EXTRA_1) {
	    	clone_count++;
	    	if (clone_count > clone_max) naruto_clone_destroy = true;
	    	else return;
	    }
	}
	//return;
}

//then, destroy clones in  destroy extra clones
with (oPlayer) {
    if (custom_clone && player == other.player) {
    	clone_count++;
    	if (clone_count > clone_max) naruto_clone_destroy = true;
    	else return;
    }
}




#define beam_clash_logic

if !beam_clash_buddy.doing_goku_beam{
	beam_clash_buddy.beam_clash_buddy = noone;
	beam_clash_buddy = noone;
}
else{
	if beam_clash_timer >= beam_clash_timer_max{
		var winner = noone;
		if beam_length > beam_clash_buddy.beam_length{
			winner = self;
		}
		if beam_length < beam_clash_buddy.beam_length{
			winner = beam_clash_buddy;
		}
		if winner == self{
			window = 5;
			window_timer = 0;
		}
		else{
			beam_juice = 0;
		}
		if winner == beam_clash_buddy{
			
		}
		else{
			beam_clash_buddy.beam_juice = 0;
		}
	}
	else{
		beam_clash_timer++;
		if special_pressed{
			clear_button_buffer(PC_SPECIAL_PRESSED);
			beam_length += 32;
			beam_clash_buddy.beam_length -= 32;
			beam_juice = min(beam_juice + 20, beam_juice_max);
			beam_clash_buddy.beam_juice = max(beam_clash_buddy.beam_juice - 10, 10);
			sound_play(sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
		}
	}
}






#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;

#define safely_set_attack
/// safely_set_attack(attack_index)
//Sets the player's attack 'safely', accounting for any lingering hitboxes, hurtboxes or interactions from any previous attack. 
destroy_hitboxes();
attack_end();
has_hit = false;
has_hit_player = false;
//attack = argument0;
//user_event(7); //use a clone attack index if necessary
set_attack(argument0);
hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
return;

#define spawn_hit_fx_2x(arg_x, arg_y, arg_vfx)  // written by Mawral
var new_hit_fx = spawn_hit_fx(arg_x, arg_y, arg_vfx);
new_hit_fx.image_yscale *= 2;
new_hit_fx.spr_dir *= 2;
return new_hit_fx;

#define activate_hitpause(arg_hitpause_time)

hitpause = true;
hitstop = arg_hitpause_time;
old_hsp = hsp;
old_vsp = vsp;
hsp = 0;
vsp = 0;

#define clone_exists(arg_clone_reference)
//returns whether a given clone 'exists'.
//returns false if the clone has been destroyed -or- deactivated.
return instance_exists(arg_clone_reference) && is_clone_active();

#define clone_is_using_attack(arg_attack_index)
return arg_clone_reference.attack == arg_attack_index && (arg_clone_reference.state == PS_ATTACK_GROUND || arg_clone_reference.state == PS_ATTACK_AIR);

#define clone_exists_and_is_using_attack(arg_clone_reference, arg_attack_index)
return instance_exists(arg_clone_reference) && arg_clone_reference.attack == arg_attack_index && (arg_clone_reference.state == PS_ATTACK_GROUND || arg_clone_reference.state == PS_ATTACK_AIR);

#define get_nearest_clone(arg_max_distance)
//returns the clone that is nearest to the player.
//assumes that the main player is the one calling this argument.
//if the nearest clone's distance is further than arg_max_distance pixels away, this function returns noone.
var return_clone = noone;
var return_clone_distance = c_naruto_clone_teamup_max_distance;
with (oPlayer) {
	if (!custom_clone || player != other.player || !is_clone_active() ) continue;
	
	var this_clone_distance = point_distance(x, y, other.x, other.y);
	if (this_clone_distance > return_clone_distance) continue;
	
	return_clone = id;
	return_clone_distance = this_clone_distance;
}
return return_clone;

#define is_end_of_window
return (window_timer > get_window_value(attack, window, AG_WINDOW_LENGTH) - 1);


#define is_clone_active
//returns true if a clone is currently active
return ((attack != AT_EXTRA_1 && attack != AT_EXTRA_3) || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR));


#define clone_teamup_effect
if (sfx_enhanced_teamup > 0) sound_play(sfx_enhanced_teamup);
if (vfx_enhanced_teamup > 0) spawn_hit_fx(x, y + enhanced_teamup_effect_y_offset, vfx_enhanced_teamup).depth = depth-1;

#define voice_play(idx)
//voice_play script by Muno
cur_vc = idx;
user_event(13);

#define voice_stop
sound_stop(voice_playing_sound);



#define guess_gender
//script that tries to guess which version of the special taunt that Naruto should use.
//returns 1 if boy, 2 if girl, 1 again by default if it's unclear.

//first, check if we've already figured out this character's gender, or if the character's creator has kindly specified it
if ("naruto_sexyjutsu_gender" in argument0 && is_real(argument0.naruto_sexyjutsu_gender)) {
	return argument0.naruto_sexyjutsu_gender;
}





//second, if the target is a base cast character, default to the male version.
if ("url" in argument0) {
	if (is_string(url)) {
		if real(url) < 100 {
			argument0.naruto_sexyjutsu_gender = 1; return 1;
		}
	}
	else if (is_real(url)) {
		if url < 100 {
			argument0.naruto_sexyjutsu_gender = 1; return 1;
		}
	}
}


//third, check for Adventure Mode variables. Would be nice if AM made it simple, but alas

if ("pronouns" in argument0 && is_string(argument0.pronouns)) {
	var pr_lower = string_lower(argument0.pronouns);
	var probably_female = string_count("female", pr_lower) || string_count("she", pr_lower) > 0 || string_count("her", pr_lower) > 0;
	var probably_male = (string_count("male", pr_lower) > 0 && string_count("female", pr_lower) == 0) || (string_count("he", pr_lower) > 0 && string_count("she", pr_lower) == 0) || string_count("him", pr_lower) > 0 || string_count("his", pr_lower) > 0;
	switch (probably_female * 2  + probably_male) {
		case 1: argument0.naruto_sexyjutsu_gender = 1; return 1;
		case 2: argument0.naruto_sexyjutsu_gender = 2; return 2;
		case 3: argument0.naruto_sexyjutsu_gender = 1; return 1; //default
	}
}

//finally, check how the character is described in his/her info pages.
var check_desc = string_lower(get_char_info(argument0.player, INFO_STR_DESCRIPTION));
var probably_female = string_count("she", check_desc) > 0 || string_count("her", check_desc) > 0;
var probably_male = (string_count("he", check_desc) > 0 && string_count("she", check_desc) == 0) || string_count("him", check_desc) > 0 || string_count("his", check_desc) > 0;
switch (probably_female * 2  + probably_male) {
	case 1: argument0.naruto_sexyjutsu_gender = 1; return 1;
	case 2: argument0.naruto_sexyjutsu_gender = 2; return 2;
	default: argument0.naruto_sexyjutsu_gender = 1; return 1; 
}
return 1;
