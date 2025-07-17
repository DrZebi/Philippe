
//animation.gml

switch (state) {
	case PS_ATTACK_AIR:
	case PS_ATTACK_GROUND:
		switch(attack) {
			case AT_NSPECIAL:
			//depth -= 0.5;
			break;
			
			case AT_FSPECIAL_2:
			case AT_NSPECIAL_2:
			case AT_USPECIAL_2:
			if (!is_master_player) depth = master_player_id.depth + 1;
			break;
			
			case AT_DSPECIAL:
			case AT_DSPECIAL_2:
			if (hsp != 0) depth = master_player_id.depth + 0.5;//depth += 0.5;
			break;
			
			case AT_TAUNT_2:
				//set custom sprite to use.
				var img_index = image_index;
				sprite_index = master_player_id.naruto_taunt_spr;
				image_index = img_index;
			break;
		}
	break;
	
	case PS_ROLL_BACKWARD:
	case PS_TECH_BACKWARD:
		if (hitpause) break;
		
		if (state_timer == 0) {
			spawn_hit_fx(x, y - 30, 14);
			instance_create(x, y - 10, "obj_article1").spr_dir = -spr_dir;
			//spawn_hit_fx_2x(x, y, vfx_log).spr_dir *= -1;
		}
		else if (state_timer == 18) {
			spawn_hit_fx(x, y - 20, 13).depth = depth - 1;
		}
		else if (state_timer < 18 && state_timer > 4) draw_indicator = 0;
	break;
	
	case PS_ROLL_FORWARD:
	case PS_TECH_FORWARD:
		if (hitpause) break;
		
		if (state_timer == 0) {
			spawn_hit_fx(x, y - 30, 14);
			instance_create(x, y - 10, "obj_article1").spr_dir = -spr_dir;
			//spawn_hit_fx_2x(x, y, vfx_log).spr_dir *= -1;
		}
		else if (state_timer == 18) {
			spawn_hit_fx(x, y - 20, 13).depth = depth - 1;
		}
		else if (state_timer < 18 && state_timer > 4) draw_indicator = 0;
	break;
	
	case PS_HITSTUN:
	case PS_HITSTUN_LAND:
	case PS_FROZEN:
	case PS_WRAPPED:
	case PS_DEAD:
	case PS_SPAWN:
	case PS_RESPAWN:
		//destroy all clones.
		if (is_master_player && state_timer <= 1) {
			user_event(4);
		}
	break;
}



/*



// fix weird jittering that can happen when it tries to return to 0
if abs(hud_offset) < 1{
	hud_offset = 0;
}
*/




#define spawn_hit_fx_2x(arg_x, arg_y, arg_vfx)  // written by Mawral
var new_hit_fx = spawn_hit_fx(arg_x, arg_y, arg_vfx);
new_hit_fx.image_yscale *= 2;
new_hit_fx.spr_dir *= 2;
return new_hit_fx;