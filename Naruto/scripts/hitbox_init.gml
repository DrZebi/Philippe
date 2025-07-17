//hitbox_init.gml

//initiate rasengan (nspecial)
if (attack != AT_NSPECIAL || hit_priority == 1) exit;


switch (hbox_num) {
    //rasengan initial projectile
case 1:
    //store this move's projectile charge. Then reset naruto's charge.
    proj_nspecial_charge = player_id.naruto_nspecial_charge;
    player_id.naruto_nspecial_charge = 0;
break;

    //rasengan multi-hit projectile
case 2:


    //change this as needed.
    time_between_hits = 6; //after the projectile's hitpause, the projectile will hit again after this many frames.
    final_hit_hbox_num = 3; //index of the 'final hit' hitbox to spawn, after this hitbox has hit a maximum number of times. set to 0 if you don't want a final hitbox.
    proj_magnet_strength = 0.5; //amount by which the projectile draws the opponent into it on hit, like a magnet. 
                                        //0 = no magnet, 1 = instant magnet. set to something in-between for a more natural-looking attack.
       
       
    maximum_number_of_hits = 3; //the total number of hits for this projectile. don't change this here, this gets overwritten in hitbox_update.gml with the constants in user_event0.gml.
       
                                        
    //initiate variable which counts up after a hit is landed
    hit_counter = 0;
    reset_can_hit_timer = 0;
    hitpause_inflicted = 0;
    
    //establish hitstop and hitpause variables
    proj_hitstop = 0;
    proj_hitpause = 0;
    proj_old_hsp = 0;
    proj_old_vsp = 0;
    proj_old_img_spd = 0;
    
    //bashed check
    bashed_trigger = 0;
    
    
    initial_can_hit = array_clone(can_hit); 
    
break;

}


