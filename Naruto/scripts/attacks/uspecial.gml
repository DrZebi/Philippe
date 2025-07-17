
//----------------------------------------------------------------------------------------------------
// USPECIAL
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// startup 1: grab a clone
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

//summon clone if there isn't one yet, transition to next window or at_uspecial_ground
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//startup 2
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 1);

//initial hit
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 2);

//rising hit
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -22);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);

//recovery 1
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);

//recovery 2 (enter pratfall)
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);

//extra kick startup
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -3);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 1);

//active
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 1);

//recovery
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 1);

//--------------------
// USPECIAL Hitboxes
//--------------------

set_num_hitboxes(AT_USPECIAL, 3);

//set_hitbox_value(AT_USPECIAL, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");


//initial hit
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, get_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2); // 2
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

//rising hit
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, get_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

//kick
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, get_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 5); 
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);
