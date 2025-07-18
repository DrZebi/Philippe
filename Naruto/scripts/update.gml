
if (is_master_player) {
		dspecial_clones_out = naruto_currently_has_dspecial_clone_active * dspecial_clone_out;
	if hitpause{
	}else{
		if dspecial_clones_out == 0 {
			knockback_adj       = 1;
		}else if dspecial_clones_out == 1{
			knockback_adj       = 1.75;
		}else if dspecial_clones_out == 2{
			knockback_adj       = 2.5;
		}
		damage_scaling = knockback_adj;
		
	}
	
}

if get_player_color(player) == 0 {
	set_ui_element(UI_HUD_ICON, sprite_get("hud_default_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_default_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_default_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_default_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_default_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_default_portrait"));
}else if get_player_color(player) == 10{
	set_ui_element(UI_HUD_ICON, sprite_get("hud_alt1_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_alt1_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_alt1_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt10_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_alt10_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt10_portrait"));
}else if get_player_color(player) == 11{
	set_ui_element(UI_HUD_ICON, sprite_get("hud_alt1_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_alt1_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_alt1_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt11_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_alt11_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt11_portrait"));
}else{
	set_ui_element(UI_HUD_ICON, sprite_get("hud_alt1_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_alt1_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_alt1_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt1_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_alt1_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt1_portrait"));
}
//update script for naruto.
if (is_master_player) {
	//initiate
    if (!initialize_unit_players) {
    	user_event(3); //user_event3.gml - initialize master player instance.
    }
	
	//if the clone removal article doesn't exist, create it
	if (!instance_exists(naruto_clone_despawn_article)) {
		//spawn the article that will safely despawn clones.
    	naruto_clone_despawn_article = instance_create(0, 99999999, "obj_article_solid");
	}
	
	//if on the ground or has been hit, reset the kunai.
	if (!free || state == PS_WALL_JUMP || state == PS_RESPAWN || state_cat == SC_HITSTUN) {
		move_cooldown[AT_DAIR] = 0;
	}
	
	//make the nspecial charging sound end when naruto is not using nspecial.
	if (naruto_nspecial_sound != noone && (attack != AT_NSPECIAL || window != 5 || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR))) {
		sound_stop(naruto_nspecial_sound);
		naruto_nspecial_sound = noone;
	}
	
	// MunoPhone Touch code - don't touch
	// should be at TOP of file


	exit;
}



//update script for naruto's clones.
else {
	
	var is_not_performing_attack = (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR && state != PS_PRATFALL);
	
	if (!is_not_performing_attack && (attack == AT_EXTRA_1 || attack == AT_EXTRA_3))  {
		
	}
	
	else {
		visible = true;
		
		//initiate the clone's hitbox.
		//exclude AT_USTRONG_2 - the clone is invulnerable during that move's startup.
		if (naruto_clone_hitbox == -1 && (attack != AT_USTRONG_2 || state != PS_ATTACK_GROUND || window >= 3)) {
			with (master_player_id) var new_hitbox = create_hitbox(AT_EXTRA_1, 1, other.x, other.y);
			naruto_clone_hitbox = new_hitbox;
		}
		
		//if the hitbox is destroyed, have the clone 'fake' being hit and then disappear.
		else if (!instance_exists(naruto_clone_hitbox)) {
			
			//face towards the ai target, if there is one.
			if (instance_exists(ai_target) && x != ai_target.x) {
				spr_dir = sign(ai_target.x - x);
			}
			
			//lift off the floor.
			y -= 4;
			vsp = -1;
			free = true;
			
			//make the clone pretend to get hit and then disappear. 'at_extra_1' is an "attack" set to a hurt sprite.
			set_attack(AT_EXTRA_1);
			
			//assign a new hitbox.
			with (master_player_id) var new_hitbox = create_hitbox(AT_EXTRA_1, 1, other.x, other.y);
			naruto_clone_hitbox = new_hitbox;
			
		}
		else {
			//if the hitbox still exists, make it snap to the hitbox's location.
			//snap the hitbox to the clone's location.
			naruto_clone_hitbox.x = x;
			naruto_clone_hitbox.y = y;
		}
		
		//start counting the clone's lifetime after it finishes its first 'attack'.
		if (naruto_clone_lifetime > 0 || is_not_performing_attack) {
			naruto_clone_lifetime++;
			
			//straight after finishing its first attack, initiate setting the clone's base stats.
			if (naruto_clone_lifetime == 1) user_event(1);
			
		}
		
		//if the clone is about to be KO'd, destroy it.
		if (y > get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 32 || x < get_stage_data(SD_LEFT_BLASTZONE_X) + 32 ||  x > get_stage_data(SD_RIGHT_BLASTZONE_X) - 32 ) {
			naruto_clone_destroy = true;
		}	
		
		//if at the end of its lifetime, wait for any attacks to finish, then disappear.
		if (naruto_clone_lifetime > naruto_clone_max_lifetime && is_not_performing_attack) {
			naruto_clone_destroy = true;
		}
	
	}
	
}





// ----------


// ----------


#define spawn_hit_fx_2x(arg_x, arg_y, arg_vfx)  // written by Mawral
var new_hit_fx = spawn_hit_fx(arg_x, arg_y, arg_vfx);
new_hit_fx.image_yscale *= 2;
new_hit_fx.spr_dir *= 2;
return new_hit_fx;


#define is_clone_active
//returns true if a clone is currently active
return ((attack != AT_EXTRA_3) || (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR));