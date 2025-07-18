switch(state){
	case PS_WALK:
		sound_stop(sfx_dbfz_energyfield_chrg);
		sound_stop(sfx_dbfz_energyfield_fire);
		if("walkingsound" not in self){walkingsound = 0;}
		walkingsound += 1;
		if walkingsound == 7 || walkingsound == 30 {
			sound_play(sfx_walk);
		}
		if walkingsound == 46{
			walkingsound = 0;
		}
		break;
	case PS_IDLE:
	case PS_CROUCH:
	case PS_JUMPSQUAT:
	case PS_WALK_TURN:
	case PS_DASH_START:
	case PS_ROLL_FORWARD:
	case PS_WALL_JUMP:
		move_cooldown[AT_USPECIAL] = 0;
		move_cooldown[AT_DSTRONG] = 0;
		sound_stop(sfx_dbfz_energyfield_chrg);
		sound_stop(sfx_dbfz_energyfield_fire);
		walkingsound = 0;
		break;
}

var phone_hud_hidden = !(get_local_setting(SET_HUD_SIZE) || get_local_setting(SET_HUD_NAMES));
var phone_attacking = state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND
var phone_window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

init_shader();

//misc code bits
if state == PS_SPAWN && taunt_down ssj = 2;

if move_cooldown[AT_DSTRONG] && free move_cooldown[AT_DSTRONG] = 5;

if phone_arrow_cooldown > 0 phone_arrow_cooldown--;

if get_player_color(player) == 0 {
	set_ui_element(UI_HUD_ICON, sprite_get("hud_default_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_default_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_default_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_default_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_default_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_default_portrait"));
}else{
	set_ui_element(UI_HUD_ICON, sprite_get("hud_alt1_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_alt1_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_alt1_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt1_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_alt1_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt1_portrait"));
}

if move_cooldown[AT_FSPECIAL_AIR] >= 60 && free move_cooldown[AT_FSPECIAL_AIR]++;



if (funny_broken_mode || has_rune("J")) && ssj{
	switch(state){
		case PS_ATTACK_AIR:
		case PS_ATTACK_GROUND:
			var valid = false;
			switch(attack){
				case AT_NAIR:
				case AT_FAIR:
				case AT_BAIR:
				case AT_UAIR:
				case AT_DAIR:
				case AT_NSPECIAL:
					valid = true;
			}
			if !valid break;
		case PS_IDLE_AIR:
		case PS_FIRST_JUMP:
		case PS_DOUBLE_JUMP:
			if shield_down || true{
				if !(phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6)) vsp -= gravity_speed;
				
				if (!joy_pad_idle){
					hsp += lengthdir_x(1, joy_dir);
					vsp += lengthdir_y(1, joy_dir);
				} else {
					hsp *= .6;
					vsp *= .6;
				}
				var fly_dir = point_direction(0, 0, hsp, vsp);
				var fly_dist = point_distance(0, 0, hsp, vsp);
				var max_speed = 8;
				if (fly_dist > max_speed){
					hsp = lengthdir_x(max_speed, fly_dir);
					vsp = lengthdir_y(max_speed, fly_dir);
				}
			}
			break;
	}
}



if (state == PS_ROLL_BACKWARD || state == PS_ROLL_FORWARD) && state_timer == 0 || (state == PS_TECH_BACKWARD || state == PS_TECH_FORWARD) && state_timer == 0{
	var h = spawn_hit_fx(x, y, vfx_afterimage);
	h.spr_dir = -spr_dir;
	h.goku_id = self;
}

else{
	old_spr_dir = spr_dir;
}



with asset_get("hit_fx_obj") if "goku_id" in self && goku_id == other{
	x += hsp;
	var fric = 0.3;
	if abs(hsp) > fric hsp -= fric * sign(hsp);
	else hsp = 0;
}



doing_goku_beam = (phone_attacking && attack == AT_NSPECIAL && window == clamp(window, 4, 6));

if aerial_pratfall_timer aerial_pratfall_timer--;



if meter_full_splash_timer{
	meter_full_splash_timer++;
	if meter_full_splash_timer > 30{
		meter_full_splash_timer = 0;
	}
}

if meter_full_alpha < 0.01 && ki >= ki_max && !meter_full_splash_timer{
	meter_full_splash_timer = 1;
	sound_play(asset_get("mfx_star"));
	voice_play(VB_METER_FULL);
}

meter_full_alpha = lerp(meter_full_alpha, ki >= ki_max, 0.3);



if swallowed {
	swallowed = 0
	var ability_spr = sprite_get("kirby");
	var kirby_icon = sprite_get("kirby_icon");
	
	with enemykirby {
		has_goku_beam = true;
		doing_goku_beam = false;
		beam_newest_hbox = noone;
		
		newicon = kirby_icon;
		goku_ability_id = other;
		
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
		set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
		set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
		set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 4);
		set_attack_value(AT_EXTRA_3, AG_OFF_LEDGE, 1);
		set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, hurtbox_spr);
		
		// startup
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
		set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
		
		// charge loop
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 9);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
		
		// post-charge
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 4);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
		
		// beam overshoot
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 3);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 6);
		
		// beam loop
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 9);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 12);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
		set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 7);
		
		// last hit
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 5);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
		set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 7);
		
		// endlag
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 16);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
		set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 10);
		
		set_num_hitboxes(AT_EXTRA_3, 0);
		
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 4);
		set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 64);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 64);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 70);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 1);
		set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 3);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 0);
		set_hitbox_value(AT_EXTRA_3, 1, HG_SDI_MULTIPLIER, 0.00001);
		set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, other.sfx_dbfz_hit_weak);
		set_hitbox_value(AT_EXTRA_3, 1, HG_EXTENDED_PARRY_STUN, 1);
		
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1); // also change these stats in hit_player.gml
		set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 6);
		set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 64);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 64);
		set_hitbox_value(AT_EXTRA_3, 2, HG_SHAPE, 2);
		set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 4);
		set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 45);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 7);
		set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, 0.8);
		set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 9);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, 0.5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT, 304);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_LOCKOUT, 5);
		set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, other.sfx_dbfz_hit_jab3);
		set_hitbox_value(AT_EXTRA_3, 2, HG_EXTENDED_PARRY_STUN, 1);
	}
}

with oPlayer if "goku_ability_id" in self && goku_ability_id == other doing_goku_beam = ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3 && window == clamp(window, 4, 6));
with oPlayer if "goku_ability_id" in self && goku_ability_id == other && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3{
	var phone_window_end = get_window_value(attack, window, AG_WINDOW_LENGTH);
	move_cooldown[attack] = 120;
	var goku = other;
	
	switch(window){
		case 1: // startup
			if window_timer == 1{
				beam_juice = 30; // amt of energy "left" in the beam
				beam_juice_max = 60 * 8;
				beam_length = 0; // current length of beam
				hsp = clamp(hsp, -2, 2);
				vsp = min(vsp, 3);
				has_updated_beam_kb = false;
				beam_clash_buddy = noone;
				beam_clash_timer = 0;
				beam_clash_timer_max = 120;
			}
			can_fast_fall = false;
			break;
		case 2: // charge loop
			if window_timer == 1{
				sound_play(other.sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001);
			}
			if beam_juice > 180{
				shake_camera(floor((beam_juice - 180) / 30), 1);
			}
			beam_angle = point_direction(0, 0, lengthdir_x(1, 0) * spr_dir, lengthdir_y(1, 0));
			if special_down && beam_juice < beam_juice_max{
				beam_juice++;
			}
			else{
				window++;
				window_timer = 0;
			}
			hsp = clamp(hsp, -2, 2);
			vsp = min(vsp, 3);
			can_fast_fall = false;
			
			if window_timer == phone_window_end || window_timer == phone_window_end - 3|| window_timer == phone_window_end - 6{
				spawn_base_dust(x - 20 * spr_dir + sin(window_timer + 2) * 6 * spr_dir, y, beam_juice > 300 ? "dash_start" : (beam_juice > 180 ? "dash" : "walk"));
			}
			break;
		case 3: // post-charge
			hsp *= 0.75;
			vsp *= 0.75;
			can_move = false;
			can_fast_fall = false;
			was_fully_charged = (beam_juice >= beam_juice_max);
			if window_timer == 1{
				spawn_nspecial_hitbox(1);
				sound_play(other.sfx_dbfz_kame_fire);
				spawn_base_dust(x, y, "dash_start");
				
				var x1 = x + 72 * spr_dir;
				var y1 = y - 26 + lengthdir_y(32, beam_angle);
				
				switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
					case 1: // down
						x1 = x + 74 * spr_dir;
						y1 = y - 6;
						break;
					case -1: // up
						x1 = x + 60 * spr_dir;
						y1 = y - 72;
						break;
				}
				
				var h;
				with other{
					h = spawn_hit_fx(x1, y1, vfx_nspecial_fire);
				}
				h.spr_dir = 1;
				h.draw_angle = beam_angle;
				h.depth = depth - 1;
			}
			break;
		case 5: // beam loop
			if beam_juice <= 0{
				window++;
				window_timer = 0;
				spawn_nspecial_hitbox(2);
			}
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
			
			if window_timer % 2{
				spawn_base_dust(x - 26 * spr_dir + sin(window_timer + 2) * 6 * spr_dir, y, "dash");
			}
			shake_camera(1, 1);
		case 4: // beam overshoot
			if beam_clash_buddy != noone{
				beam_clash_logic(goku);
			}
			else if !was_fully_charged && !hitpause && (was_parried || has_hit || place_meeting(x + lengthdir_x(beam_length + 32, beam_angle), y + lengthdir_y(beam_length, beam_angle), asset_get("par_block"))){
				if beam_juice > 0{
					beam_juice -= 10;
				}
			}
			else if !hitpause{
				if beam_juice > 0{
					beam_length += 32 + 64 * was_fully_charged;
					beam_juice -= 10;
				}
			}
			if window != 6{
				spawn_nspecial_hitbox(1);
				
				if beam_clash_buddy == noone{
					var me = self;
					with oPlayer if "has_goku_beam" in self && doing_goku_beam && abs((me.beam_angle + 180) % 360 - beam_angle % 360) < 5 && instance_exists(beam_newest_hbox){
						var him = self;
						with beam_newest_hbox if distance_to_object(me.beam_newest_hbox) < (32 + 64 * (me.was_fully_charged || him.was_fully_charged)){
							me.beam_clash_buddy = him;
							him.beam_clash_buddy = me;
							with me sound_play(goku.sfx_dbfz_hit_broken);
							me.beam_juice = max(me.beam_juice, 30);
							him.beam_juice = max(him.beam_juice, 30);
							me.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
							him.beam_clash_timer_max = max(me.beam_clash_timer_max, him.beam_clash_timer_max);
						}
					}
				}
			}
			
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
			shake_camera(4, 1);
			break;
		case 6: // last hit
			if beam_clash_buddy != noone{
				beam_clash_logic(goku);
			}
			else if window_timer == phone_window_end{
	
				var x1 = x + 72 * spr_dir;
				var y1 = y - 20 + lengthdir_y(32, beam_angle);
				
				switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
					case 1: // down
						x1 = x + 74 * spr_dir;
						y1 = y - 6;
						break;
					case -1: // up
						x1 = x + 60 * spr_dir;
						y1 = y - 72;
						break;
				}
				
				var h;
				with other{
					h = spawn_hit_fx(x1 + lengthdir_x(other.beam_length - 34, other.beam_angle), y1 + lengthdir_y(other.beam_length - 34, other.beam_angle), vfx_ftilt_destroy);
				}
				h.spr_dir = 1;
				h.draw_angle = beam_angle;
				h.depth = depth;
			}
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
			break;
		case 7: // endlag
			hsp = 0;
			vsp = 0;
			can_move = false;
			can_fast_fall = false;
			break;
	}
}

with oPlayer if self != other{
	if cell_grab_t cell_grab_t--;
	else cell_usp_grab = 0;
}
//dialogue buddy

diagchoice = [
    "Bold of you to face me.",
    "You better not bore me.",
    "This should make a good warmup."]
    

if("otherUrl" in self && otherUrl == 2802388684) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "You wish to fight me boy?",
                "I'm not letting you harm anyone else!",
                "Well then, let's see if you have the power to back up your words."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
    
    if("otherUrl" in self && otherUrl == 2801695646) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "WHAT THE?!",
                "You're done cell.",
                "I don't know how you snuck up on me but you're gonna regret challenging me!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
    
     if("otherUrl" in self && otherUrl == 2802530261) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "I hope you have something more threatning than that pea shooter girl.",
                "Computer: weapon systems charging to maximum",
                "Let's get this over with."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
    
     if("otherUrl" in self && otherUrl == 2825520992) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Now, what the hell are you?",
                "BandannaDee sir and i'm here to stop your evil.",
                "Well then, let's see what that spear can do."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }


     if("otherUrl" in self && otherUrl == 2802528159) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "What an antiquated piece of junk. You dare challenge perfection?",
                "* Begins stalking forward",
                "Time to learn your place scrapmetal!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    

     if("otherUrl" in self && otherUrl == 2798199714) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "His energy is incredible.",
                "* Galacta knights sword is glowing",
                "Finally someone who can keep up. Show me what you can do pinky!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    


     if("otherUrl" in self && otherUrl == 2642265963) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "For the last time, leave.",
                "BUT, I CAN PROVIDE THE [Dragon soul] FOR THE LOW, LOW, PRICE OF [Perfection]. ",
                "Only a fool would take that deal. However, if perfection is what you seek then allow me to demonstrate."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
         if("otherUrl" in self && otherUrl == 2606409742) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "A blonde swordsman? How original.",
                "* stares at cell with his shield raised",
                "Wow you even have the same determined stare."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

        if("otherUrl" in self && otherUrl == 2841541558) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "All that's left is to cut down this tree and my arena shall be perfect.",
                "You shall do no such thing bug!",
                "You're alive? Now this will be interesting."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    

    if("otherUrl" in self && otherUrl == 2839808881) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "That power I sensed should be around-",
                "* Tugs on one of Cells wings. * Poyo?",
                "* Leaps away * How could something so cute, have so much energy?!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

    if("otherUrl" in self && otherUrl == 2843385011) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "So you absorb planets in order to increase your strength?",
                "* expression doesn't change",
                "But, what would happen if you were absorbed?"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
        if("otherUrl" in self && otherUrl == 2904134945) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Why is that box on your head?",
                "Uh,beep boop?",
                "..."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
            if("otherUrl" in self && otherUrl == 2842873754) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "A penguin with a hammer. This is strange even by my standards.",
                "I king DDD am here to defeat you Perfect Cell.",
                "Oh ho, Royalty eh? Then allow me to give you a proper welcome."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
    
               if("otherUrl" in self && otherUrl == 2842873754) && (get_player_color(2) == 9) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "I believe there has been a mistake I belong to no one.",
                "No way, N.M.E said you waz on sale. So I bought you.",
                "A sale?! I am the perfect being I am priceless."]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

   if("otherUrl" in self && otherUrl == 2911048812) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Tell me, what exactly is in the walking coffin you call a body?",
                "UNDERNEATH THIS SHELL IS BIOLOGICAL PERFECTION!",
                "Bold claim! I'll have to confirm it by tearing you apart!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

   if("otherUrl" in self && otherUrl == 2876246765) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "What worthless trinkets. * shoots an energy blast at them *",
                "* Absorbs the energy.",
                "This energy, what is happening?!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
   
   if("otherUrl" in self && otherUrl == 2311095319) || ("otherUrl" in self && otherUrl == 2945062156) || ("otherUrl" in self && otherUrl == 2944680077)
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "What would someone like you want with me?",
                "...",
                "Defeat me?! HA, i'd like to see you try plumber boy!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
  
   if("otherUrl" in self && otherUrl == 2946784030) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "The prize? The prize is that everyone on this planet stays alive.",
                "Lame, i'll just beat you up and take your treasure then.",
                "Just try it you disgusting blob!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

   if("otherUrl" in self && otherUrl == 2948285612) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "Huh, my records don't show any plants matching this one.",
                "* Bites cells' left leg",
                "Ow, you little weed!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }
   if("otherUrl" in self && otherUrl == 2904498757) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "You do realize i'm threatining to destroy the planet right?",
                "* Blinks, and gestures towards contract",
                "Alright if you can last more than 5 seconds. I'll sponsor your restaurant"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

   if("otherUrl" in self && otherUrl == 2957312834) 
    {
        with(pet_obj)
        {
            if(variable_instance_exists(id,"diag_text"))
            {
                diag_nrs_p1 = other.player; 
                diag_nrs = true; 
                diag_nrs_diag = [
                "What kind of wretched monstrosity are you?!",
                "I'm the monstrosity that can't die ",
                "We'll see about that you damn corpse!"]
            }
            
            //If your portrait has multiple sprite indexes. You can change them during the interaction!
            switch(diag_nrs_state)
            {
                case 0: //First Message
                    other.diag_index = 1;
                    break;
                case 1: //Second Message
                    other.diag_index = 1;
                    break;
                case 2: //Last Message
                    other.diag_index = 2;
                    break;
            }
        }
    }

#define voice_play(idx)

cur_vc = idx;
user_event(0);



#define beam_clash_logic(goku)

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
			sound_play(goku.sfx_dbfz_kame_charge, false, noone, 1, 1 + beam_juice * 0.001)
		}
	}
}



#define spawn_nspecial_hitbox(num)

if hitpause && num == 1 return;

attack_end();

var x1 = 72;
var y1 = -26 + lengthdir_y(32, beam_angle);

switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
	case 1: // down
		x1 = 74;
		y1 = -6;
		break;
	case -1: // up
		x1 = 60;
		y1 = -72;
		break;
}

// x1 += lengthdir_x(beam_length - 32 * !has_hit, beam_angle) * spr_dir;
// y1 += lengthdir_y(beam_length - 32 * !has_hit, beam_angle);

var cur_x = x1;
var cur_y = y1;

set_hitbox_value(attack, num, HG_WIDTH, 64 + 16 * has_hit);
set_hitbox_value(attack, num, HG_HEIGHT, 64 + 16 * has_hit);

var ld_x = lengthdir_x(32, beam_angle) * spr_dir;
var ld_y = lengthdir_y(32, beam_angle);

for (var i = 0; i * 32 < beam_length && i < 32 && cur_x == clamp(cur_x, -64, room_width + 64); i++){
	if i % 3 == 0 || (i+1) * 32 >= beam_length{
		if (i+1) * 32 >= beam_length{
			set_hitbox_value(attack, num, HG_WIDTH, 64 + 64 * has_hit);
			set_hitbox_value(attack, num, HG_HEIGHT, 64 + 64 * has_hit);
		}
		beam_newest_hbox = create_hitbox(attack, num, round(x + cur_x * spr_dir), round(y + cur_y));
		beam_newest_hbox.x_pos = round(cur_x * spr_dir);
		beam_newest_hbox.y_pos = round(cur_y);
	}
	cur_x += ld_x;
	cur_y += ld_y;
}



#define spawn_base_dust // supersonic
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



#define spawn_form_aura

if ssj return spawn_hit_fx(x, y, vfx_ssj_start);