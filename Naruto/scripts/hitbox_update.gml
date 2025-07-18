

switch (attack) {
	case AT_EXTRA_1:
		//clone hurtbox 'projectiles'.
		//do a place-meeting check for opponent projectiles.
		//this check is -not- perfectly accurate, and compromises for speed by checking for only one collision. 
		//it is only needed to check for hitboxes that don't normally break projectiles.
		//for an accurate check, use 'instance_place_array()' and check every instance that comes up in the array.
		
		if (instance_number(pHitBox) <= 1) break;
		var detect_hbox = instance_place(x, y, pHitBox);
		if (!instance_exists(detect_hbox)) break;
		
		//check if this hitbox is able to do damage. if it can, destroy this projectile.
		var damaging_hbox;
		with (detect_hbox) {
			//print("hbox detected - damage=" + string(damage) + " kb=" +string(kb_value) + " priority=" + string(hit_priority));
			damaging_hbox = (
				//don't hit your own clones
				player != other.player 
				//make sure the hitbox can actually deal damage or knockback
				&& (damage >= 1 || kb_value != 0) && hit_priority > 0
				//ignore teammate attacks unless team attack is on
				&& (get_match_setting(SET_TEAMATTACK) || get_player_team(player) != get_player_team(other.player) ) 
			);
		}
		
		if (damaging_hbox) destroyed = true;
		
	break;
		
		
	case AT_DAIR:
	case AT_DSPECIAL_AIR:
	case 47:
		//kunai. destroy it when it hits a floor or wall.
		if (vsp == 0 || hsp == 0) destroyed = true;
	break;
	
	case AT_NSPECIAL:
		//rasengan.
		
		//ignore parried Kragg rock shards, which are also marked as AT_NSPECIAL hitboxes.
		if (hit_priority == 1) break;
		
		//make the initial hitbox decelerate.
		if (hbox_num == 1) { 
			hsp *= 0.75; break; 
			
		}
                //specify which nspecial projectile is the multi-hit.
                //ignore hit_priority 1 hitboxes so that Kragg shards don't become multihits lol
                if (hbox_num != 2) break;

                //keep the projectile anchored to Naruto while he charges forward
                if (follow_player) {
                    if (instance_exists(player_id) && player_id.attack == AT_NSPECIAL) {
                        x = player_id.x + follow_offset_x;
                        y = player_id.y + follow_offset_y;
                        depth = player_id.depth - 0.1;
                    } else {
                        follow_player = false;
                    }
                }

                //check for beam clash with other beam-based specials
                if (player_id.beam_clash_buddy == noone) {
                    var me = player_id;
                    with oPlayer if "has_goku_beam" in self && doing_goku_beam && instance_exists(beam_newest_hbox) {
                        var him = self;
                        with beam_newest_hbox if distance_to_object(me.beam_newest_hbox) < 64 {
                            me.beam_clash_buddy = him;
                            him.beam_clash_buddy = me;
                            with me sound_play(sfx_dbfz_hit_broken);
                            me.beam_juice = max(me.beam_juice, 30);
                            him.beam_juice = max(him.beam_juice, 30);
                            me.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
                            him.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
                        }
                    }
                } else {
                    with (player_id) if beam_clash_buddy != noone {
                        beam_clash_logic();
                    }
                }
              //specify which nspecial projectile is the multi-hit.
                //ignore hit_priority 1 hitboxes so that Kragg shards don't become multihits lol
                if (hbox_num != 2) break;

                //check for beam clash with other beam-based specials
                if (player_id.beam_clash_buddy == noone) {
                    var me = player_id;
                    with oPlayer if "has_goku_beam" in self && doing_goku_beam && instance_exists(beam_newest_hbox) {
                        var him = self;
                        with beam_newest_hbox if distance_to_object(me.beam_newest_hbox) < 64 {
                            me.beam_clash_buddy = him;
                            him.beam_clash_buddy = me;
                            with me sound_play(sfx_dbfz_hit_broken);
                            me.beam_juice = max(me.beam_juice, 30);
                            him.beam_juice = max(him.beam_juice, 30);
                            me.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
                            him.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
                        }
                    }
                } else {
                    with (player_id) if beam_clash_buddy != noone {
                        beam_clash_logic();
                    }
                }


                // move the player with the projectile for a dashing effect
                with (player_id) if attack == AT_NSPECIAL && is_master_player {
                    if (window >= 6 && window <= 7) {
                        x = other.x + beam_follow_offset_x;
                        y = other.y + beam_follow_offset_y;
                        hsp = other.hsp;
                    }
                }

		
		//update the total number of hits, based on charge time.
		if (hitbox_timer == 1) {
			var charge_decimal = proj_nspecial_charge / player_id.c_naruto_nspecial_max_charge; 
			maximum_number_of_hits = player_id.c_naruto_nspecial_hit_count_minimum 
									+ floor(player_id.c_naruto_nspecial_hit_count_charge_bonus * charge_decimal)
									+ player_id.c_naruto_nspecial_hit_count_full_charge_bonus * (charge_decimal >= 1);
		}
		
		//bashed trigger.
		if (getting_bashed) {
			bashed_trigger = true;
		}
		
		//handle hitpause.
		if (proj_hitpause) {
			proj_hitstop--;
			if (proj_hitstop <= 0) {
				//hitpause has ended. reset all of the movement and animation variables.
				hsp = proj_old_hsp;
				vsp = proj_old_vsp;
				img_spd = proj_old_img_spd;
				proj_hitpause = false;
				
				//if this projectile has hit its maximum number of times, destroy it.

                                if (hit_counter >= maximum_number_of_hits) {
                                    destroyed = true;
                                    with (player_id) {
                                        doing_goku_beam = false;
                                        beam_newest_hbox = noone;
                                    }
                                }
                                if (hit_counter >= maximum_number_of_hits) {
                                    destroyed = true;
                                    with (player_id) {
                                        doing_goku_beam = false;
                                        beam_newest_hbox = noone;
                                        beam_follow_offset_x = 0;
                                        beam_follow_offset_y = 0;

                                    }
                                }


			}
			else {
				//stop movement and exit here if the projectile is still in hitpause.
				hsp = 0;
				vsp = 0;
				break;
			}
		}
		
		//update hit array when bashed.
		if (bashed_trigger && !getting_bashed) {
			//update array, where 'bashed_id' is now the player who "owns" the projectile
		}
		
		//handle rasengan multihits.
		if (!array_equals(initial_can_hit, can_hit)) {
			
			//even if the projectile hits multiple players, it only enters hitpause once.
			if (!hitpause_inflicted) {
				//give the projectile hitpause, then exit the script.
				hitpause_inflicted	= true;
				proj_hitpause		= true;
				proj_hitstop		= hitpause + max(0, -extra_hitpause);
				proj_old_hsp		= hsp;
				proj_old_vsp		= vsp;
				proj_old_img_spd	= img_spd;
				hsp 				= 0;
				vsp 				= 0;
				img_spd 			= 0;
				
				//if necessary, extend the lifetime of the projectile so that all of the hits can land.
				length = max(length, length - (length - hitbox_timer) + proj_hitstop + time_between_hits);
				
				break;
			}
			
			reset_can_hit_timer++;
			if (reset_can_hit_timer >= time_between_hits) {
				//increase the hit counter.
				hit_counter++;
				
				//reset the can_hit array, allowing the projectile to hit opponents multiple times.
				can_hit = array_clone(initial_can_hit);
				
				//reset variables that detect hits.
				reset_can_hit_timer = 0;
				hitpause_inflicted = false;
				
				//if this is the final hit, and a 'final hitbox' has been specified, destroy this hitbox and spawn the 'final hitbox'.
                                if (hit_counter >= maximum_number_of_hits) {
                                        destroyed = true;
                                        with (player_id) {
                                            doing_goku_beam = false;
                                            beam_newest_hbox = noone;
                                        }

                                        //spawn a 'final hit' hitbox, if specified.
                                if (hit_counter >= maximum_number_of_hits) {
                                        destroyed = true;
                                        with (player_id) {
                                            doing_goku_beam = false;
                                            beam_newest_hbox = noone;
                                            beam_follow_offset_x = 0;
                                            beam_follow_offset_y = 0;
                                        }

                                        //spawn a 'final hit' hitbox, if specified.
					if (final_hit_hbox_num == 0) break;
					var final_hitbox = create_hitbox(attack, final_hit_hbox_num, x, y).spr_dir = spr_dir;
					
					//update its stats based on charge level.
					var charge_dec = proj_nspecial_charge / player_id.c_naruto_nspecial_max_charge; 
					final_hitbox.kb_value += player_id.c_naruto_nspecial_final_kb_charge_bonus * charge_dec;
					if (charge_dec >= 1) {
						final_hitbox.damage += player_id.c_naruto_nspecial_damage_full_charge_bonus;
						final_hitbox.kb_value += player_id.c_naruto_nspecial_final_kb_full_charge_bonus;
					}
					
					break;
				}
				
			}

		}
		

	break;
}