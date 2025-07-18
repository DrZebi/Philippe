//user_event5.gml
//handles destroying or deactivating a clone.

//if called in the main player, updates whether the player currently has dspecial clones active.



if (!custom_clone) { 
	//if this is the main player, just update the clone count.
	update_dspecial_cooldown();
    //print("Error - tried to deactivate the main instance instead of a clone");
    exit;
}

//destroy the 'hitbox'
if (instance_exists(naruto_clone_hitbox)) naruto_clone_hitbox.destroyed = true;

switch (master_player_id.c_naruto_clone_mode) {
    //clone mode 0: destroy the clone.
    case 0:
		if (is_dspecial_clone){
			master_player_id.dspecial_clone_out = master_player_id.dspecial_clone_out - 1;
		}
    	//make fx
	    spawn_hit_fx_2x(x, y, master_player_id.vfx_clone_smoke).depth = depth-1;
    	is_dspecial_clone = false
    	//if there are no other dspecial clones active, put the master player's dspecial on cooldown.
		update_dspecial_cooldown();
    	
		//destroy the clone
		instance_destroy();
	break;
	
	
	//clone mode 1: deactivate the clone.
	case 1:
		if (is_dspecial_clone){
			master_player_id.dspecial_clone_out = master_player_id.dspecial_clone_out - 1;
		}
		//skip if already deactivated
		naruto_clone_destroy = false;
		if (attack == AT_EXTRA_3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) break;
		
	    //deactivate the clone
	    //attack_end();
	    destroy_hitboxes();
	    set_state(PS_ATTACK_AIR);
	    attack = AT_EXTRA_3;
	    window = 0;
	    state_timer = 0;
	    window_timer = 0;
	    naruto_clone_hitbox = -1;
	    naruto_clone_lifetime = 0;
	    naruto_clone_teamup_active = 0;
	    //if this was a dspecial clone, reset its lifetime and ai.
		if (naruto_clone_max_lifetime == master_player_id.c_naruto_dspecial_clone_active_time) {
			
			clear_ai_move_array();
			is_dspecial_clone = false
			
			//if there are no other dspecial clones active, put the master player's dspecial on cooldown.
			update_dspecial_cooldown();
			
			//reset this clone's lifetime back to normal.
			naruto_clone_max_lifetime = master_player_id.c_naruto_clone_active_time;
		}
	    
	    //make fx
	    if (master_player_id.state != PS_SPAWN && master_player_id.state != PS_DEAD) {
		    spawn_hit_fx_2x(x, y, master_player_id.vfx_clone_smoke).depth = depth-1;
		    sound_play(sound_get("snd_clonedespawn"));
	    }
	    
	    x = master_player_id.x;//round(room_width / 2);
	    y = master_player_id.y;//-10000;
	    
	    draw_indicator = false;
	    visible = false;
	    
    break;
}


#define spawn_hit_fx_2x(arg_x, arg_y, arg_vfx)  // written by Mawral
var new_hit_fx = spawn_hit_fx(arg_x, arg_y, arg_vfx);
new_hit_fx.image_yscale *= 2;
new_hit_fx.spr_dir *= 2;
return new_hit_fx;


#define clear_ai_move_array

far_down_attacks	= array_create(1, 0);
far_side_attacks	= array_create(1, 0);
mid_side_attacks	= array_create(1, 0);
close_up_attacks	= array_create(1, 0);
close_down_attacks	= array_create(1, 0);
close_side_attacks	= array_create(1, 0);
neutral_attacks		= array_create(1, 0);

#define update_dspecial_cooldown

//if (master_player_id.c_naruto_dspecial_cooldown_time > 0) {
var still_clones_active = 0;
with (oPlayer) {
	//exclude all oPlayers who are not Naruto's Dspecial clones, also exclude any clones on cooldown.
	if (!custom_clone || player != other.player || id == other
	|| (attack == AT_EXTRA_3 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND))
	|| naruto_clone_max_lifetime != master_player_id.c_naruto_dspecial_clone_active_time) continue;
	
	still_clones_active = 1;
	break;
}

//if dspecial clones still exist, update the master player to reflect this
with (master_player_id) {
	naruto_currently_has_dspecial_clone_active = still_clones_active;
	if (master_player_id != other.id && !naruto_currently_has_dspecial_clone_active) move_cooldown[AT_DSPECIAL] = c_naruto_dspecial_cooldown_time;
}
	
//}
