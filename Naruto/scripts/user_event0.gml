//user_event0.gml
//constants

//====================
// clone constants
//====================

//the 'mode' for spawning clones. 
// Mode 0: clones objects are created and destroyed as needed. This allows for a large number of clones, but each individual clone causes a small lag spike.
// Mode 1: clones are all created at game start, then activated and deactivated as needed. This causes more lag overall with large numbers of clones, but doesn't incur lag spikes.
c_naruto_clone_mode = 1;

//the maximum mount of clones that Naruto can have on-screen at once.
c_naruto_maximum_clones = 2;

//if set to true, moves that spawn clones will automatically despawn existing clones when close to the clone limit.
c_naruto_clone_auto_despawn_when_using_specials = true;

//amount of time, in frames, that naruto's clones linger for after performing an attack that summons them. 60 frames = 1 second.
c_naruto_clone_active_time = 200;

//amount of time, in frames, that naruto's dspecial clones stay active for. 
c_naruto_dspecial_clone_active_time = 500;

//distance, in pixels, that naruto can initiate a special move using one of his existing clones.
c_naruto_clone_teamup_max_distance = 80;

//amount of time, in frames, that naruto's dspecial clones stay active for. 
c_naruto_dspecial_cooldown_time = 300;


//====================
// nspecial constants
//====================

//maximum falling speed while charging nspecial.
c_naruto_nspecial_max_fall_speed = 4;

//maximum time, in frames, that NSpecial can be charged for. 
c_naruto_nspecial_max_charge = 100;

//---

//number of hits that nspecial deals at minimum charge.
c_naruto_nspecial_hit_count_minimum = 2;
//add between 0 and this many hits, depending on how long naruto charged nspecial.
c_naruto_nspecial_hit_count_charge_bonus = 3;
//if nspecial is charged to the max, add on this amount to the final hit count as well.
c_naruto_nspecial_hit_count_full_charge_bonus = 4;
//the maximum number of hits equals the total of these three values.

//---

//add between 0 and this much knockback to the final hit of nspecial, depending on how long naruto charged for.
c_naruto_nspecial_final_kb_charge_bonus = 2;
//if nspecial is charged to the max, add on this amount to the final hit knockback as well.
c_naruto_nspecial_final_kb_full_charge_bonus = 2;

//---

//if nspecial is charged to the max, add on this amount to the final hit's damage as well.
c_naruto_nspecial_damage_full_charge_bonus = 0;

//---

//after the multihit projectile's hitpause, the projectile will hit again after this many frames.
c_naruto_nspecial_multihit_time_between_hits = 6; 
//amount by which the multihit projectile 'magnetizes' the opponent into it. 0 = no magnet, 1 = perfect magnet. choose a value in-between for something that looks more natural.
c_naruto_nspecial_multihit_magnet_strength = 10; 

//for altering damage and hitpause, just change the nspecial grid indexes like usual.

//====================
// other constants
//====================

//fspecial cooldown
c_naruto_fspecial_cooldown = 40;

//amount by which naruto's horizontal speed is altered while rising with uspecial.
c_naruto_uspecial_hspeed_multiplier = 1.5;


//distance, in pixels, that the ustrong clone appears ahead of the player.
c_naruto_ustrong_clone_spawn_distance = 48;

//speed that naruto can move the clone spawned by up-strong. 
c_naruto_ustrong_clone_horizontal_speed_forwards = 4;
c_naruto_ustrong_clone_horizontal_speed_backwards = 4;

