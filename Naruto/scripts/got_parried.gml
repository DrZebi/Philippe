//destroy all clones when the real Naruto's melee attacks get parried.
//if a clone was parried, destroy just that clone.
if (is_master_player) {
	dspecial_clone_out = 0;
}
if (!is_master_player) {
    
    //for these 'team-up' moves in particular, also stun naruto.
    switch (attack) {
        case AT_FSPECIAL_2:
        case AT_USTRONG_2:
        case AT_USPECIAL:
            naruto_clone_destroy = true;
			
            with (master_player_id) {
                was_parried = true;
                parry_lag = other.parry_lag;
                if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
                    set_state(PS_PRATFALL)
                    parry_lag += 10;
                }
            }
        break;
        case AT_DSTRONG:
            master_player_id.was_parried = true;
            master_player_id.parry_lag = parry_lag;
        break;
        //for Jab, always stun the clone.
        case AT_JAB:
        case 2:
        case 3:
            was_parried = true;
            parry_lag = 40;
        break;
    }
    
    //make the clone expire immediately after the attack
    naruto_clone_lifetime = naruto_clone_max_lifetime;
    
    //naruto_clone_destroy = true;
    exit;
}

if (my_hitboxID.type != 2) { user_event(4); exit; }

//destroy nspecial projectiles on parry.
if (my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hit_priority != 1) {
    my_hitboxID.destroyed = 1;
}




/*

var reverse_proj = my_hitboxID;
if (my_hitboxID.attack == AT_NSPECIAL) {
    switch (my_hitboxID.hbox_num) {
        case 1:
        //mark as having hit the opponent - but spawn the rasengan multi-hit projectile going the opposite way.
        
        if (has_hit) exit;
        has_hit = true;
        var orig_proj = reverse_proj;
        orig_proj.destroyed = true;
        reverse_proj = create_hitbox(AT_NSPECIAL, 2, my_hitboxID.x, my_hitboxID.y);
        reverse_proj.spr_dir = -(orig_proj.spr_dir);
        
        
        //don't break;
        
        case 2:
            //reverse this projectile.
        break;
    }
}
*/