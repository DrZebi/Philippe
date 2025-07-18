//Character init code.
naruto_sexyjutsu_gender = 1;
// for Normal Sexy jutsu put this code inside init.gml: 
// naruto_sexyjutsu_gender = 1;
// 
// for Sexy Reverse Jutsu put this code inside init.gml:
// naruto_sexyjutsu_gender = 2;
// 
// 
// for Custom Sexy jutsu or Custom Transforming jutsu put this code inside init.gml: 
// sprite_change_offset("taunt_sexyjutsu_custom", 50, 70);
// naruto_sexyjutsu_sprite = sprite_get("taunt_sexyjutsu_custom");
// 
// and get the taunt_sexyjutsu_custom_strip20.png sprite for use as template for custom transform jutsu inside naruto´s sprite 
// workshop folder and put it inside yours character´s sprite folder
/*
//user events index:

'edit these':
0: Naruto-specific constants.
1: Init.gml stats.
2: Init.gml sprites, sfx and vfx.

'naruto-specific functionality':
3: Naruto 'master' player initialization, called on only the first frame in update.gml.
4: Function script that destroys all clones on-screen, called from the 'master' player
5: Function script that destroys a clone, called from that clone in animation.gml
6: Function script that turns a normal clone into a powered-up dspecial clone, called from that clone
7: Function script that swaps the 'index' of an attack to use a special clone-attack index if necessary. Called in set_attack and attack_update

'voiceline functionality':
11: voiceline initialization, called in init.gml
12: attack voiceline script, called in attack_update.gml
13: Function script that plays voicelines

'munophone':
14: Munophone
15: Munophone 2: 2 Phone 2 Muno 
*/

//Naruto-specific stats are set in user_event0.gml. 
//General Rivals stats are in user_event1.gml.
//Character sprites, sfx and vfx are set in user_event2.gml

//everything below is for setting up oPlayer clones.

//check for oTestPlayer (a special version of oPlayer objects used in the character preview screen. clones of oTestPlayer cause a crash, so it has to be checked for.) 
is_test_player = (object_index == asset_get("oTestPlayer"));

//set both the master player and the clone to use small_sprites
small_sprites = true;

//char_height is the only variable that the clone also needs on frame 0
char_height = 80;

//mark all players as 'not the master oPlayer' by default
is_master_player = false;

//do the following with the master player
dspecial_clones = 0 
if (!custom_clone) {
	
    //set constants in user_event0.gml.
    user_event(0);
    
    //set base stats in user_event1.gml.
    user_event(1);
    
    //set sprites, sounds, vfx and other assets in user_event2.gml. clones don't need these.
    user_event(2);
    
    //mark this oPlayer as the 'master' oPlayer object.
    is_master_player = true;
    master_player_id = id;
    
    //this variable is used at the top of update.gml to initialize all of the clones.
    initialize_unit_players = false; 
    
    for (var i = 0; i < c_naruto_maximum_clones; i++) {
        unit_player_id_array[i] = noone;
    }
    
    
    //naruto_specific variables
    naruto_last_hit_opponent = noone;       //the last opponent that naruto hit. the AIs will target this player.
    naruto_spawned_clone_reference = noone; //used for some special moves to track a clone that naruto has spawned.
    naruto_special_timer = 0;               //
    naruto_nspecial_charge = 0;             //stores the amount of time that rasengan has been charged for.
    naruto_nspecial_sound = noone;          //stores the reference of the rasengan charging sound, so that it can be stopped when interrupted.
    naruto_taunt_spr = sprite_get("taunt_sexyjutsu_male");               //stores the reference of the sprite used for the special taunt, which varies depending on the opponent.
    naruto_attack_group_index = 0; //used to determine which set of attack indexes this clone will use.
    naruto_currently_has_dspecial_clone_active = 0; //counts how many dspecial clones naruto has. Updates in user_event5.gml and user_event6.gml.
	dspecial_clones_out = 0;
	dspecial_clone_out = 0;
    naruto_clone_despawn_article = noone; //reference of the article that will safely despawn clones. spawned in user_event3.gml.
    
    //move index constants. 
    //each clone needs their own index for certain moves.
    //since there's only 50 moveslots, they have to be spread out rather haphazardly like this.
    c_naruto_attack_index_array[AT_JAB]     = [AT_JAB, 2, 2];
    c_naruto_attack_index_array[AT_FTILT]   = [AT_FTILT, AT_FTHROW, 3];
    c_naruto_attack_index_array[AT_DTILT]   = [AT_DTILT, AT_DTHROW, 39];
    c_naruto_attack_index_array[AT_UTILT]   = [AT_UTILT, AT_UTHROW, 40];
    c_naruto_attack_index_array[AT_DATTACK] = [AT_DATTACK, AT_NTHROW, AT_NTHROW];
    c_naruto_attack_index_array[AT_NAIR]    = [AT_NAIR, 42, 43];
    c_naruto_attack_index_array[AT_BAIR]    = [AT_BAIR, AT_NSPECIAL_AIR, 44];
    c_naruto_attack_index_array[AT_FAIR]    = [AT_FAIR, AT_FSPECIAL_AIR, 45];
    c_naruto_attack_index_array[AT_UAIR]    = [AT_UAIR, AT_USPECIAL_GROUND, 46];
    c_naruto_attack_index_array[AT_DAIR]    = [AT_DAIR, AT_DSPECIAL_AIR, 47];
    c_naruto_attack_index_array[AT_FSTRONG] = [AT_FSTRONG, 48, 49];
    
    
    
    //exit the script here if this is a test oPlayer
    //if (!is_test_player) exit;
    
    //set constants in user_event0.gml.
    user_event(0);
    
    
}
else {
    //for clones specifically:
    
    //hide any buddies.
    if (instance_exists(pet_obj)) {
        with (pet_obj) { visible = false; }
    }
    
    //when attack_update.gml spawns a oPlayer clone, it will assign a 'hitbox' to this oPlayer straight after. 
    //if the hitbox is attacked, the oPlayer acts as if it took the hit and is destroyed.
    naruto_clone_hitbox = -1;
    
    //get the master player's id; store it in a more memorable variable
    is_master_player = false;
    master_player_id = clones_player_id;
    
    //clone_specific init variables.
    naruto_clone_activated = false;
    naruto_clone_init = 0;
    naruto_clone_lifetime = 0;
    naruto_clone_max_lifetime = master_player_id.c_naruto_clone_active_time;
    naruto_clone_destroy = false;
    naruto_clone_teamup_active = false; //gets set to 'true' when the main Naruto reuses this clone for a special attack.
    naruto_attack_group_index = 0; //used to determine which set of attack indexes this clone will use.
    
    
    //remove hurtbox
    hurtbox_spr = master_player_id.spr_empty_pixel;//asset_get("empty_sprite");
    
    //add this clone to naruto's clone array.
    with (master_player_id) {
        var array_slot_found = false;
        
        for(var i = 0; !array_slot_found; i++) {
        	if (!instance_exists(unit_player_id_array[i])) {
        	   unit_player_id_array[i] = other;
        	   other.naruto_attack_group_index = min(i + 1, 2);
        	   array_slot_found = true;
        	
            }
        }
    }
}

//for both: 
//set voice constants in user_event_11.gml.
user_event(11);
if (get_synced_var( player ) == 0) {
	voice = VC_NONE;
}
if (get_synced_var( player ) == 1) {
	voice = VC_EN;
}
if (get_synced_var( player ) == 2) {
	voice = VC_JP;
}


//I think these stats need to be here.
// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// 

// Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("snd_victorymusic"));



// ai_draw = ds_list_create();







