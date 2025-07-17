

//----------------------------------------------------------------------------------------------------
// DSTRONG
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//post-startup
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);

//hit 1
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HSPEED_TYPE, 2);

//hit 2
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);


set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 19);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//--------------------
// DSTRONG Hitboxes
//--------------------

set_num_hitboxes(AT_DSTRONG, 2);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -24); 
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 48); 
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 2 + (is_master_player)); //player has more priority over the clone.
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 3); 
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 6); 
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 2); 
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 20); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSTRONG, 2, HG_WIDTH, 80); 
set_hitbox_value(AT_DSTRONG, 2, HG_HEIGHT, 52);
set_hitbox_value(AT_DSTRONG, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 2, HG_PRIORITY, 4 + (is_master_player));
set_hitbox_value(AT_DSTRONG, 2, HG_DAMAGE, 4); 
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 2, HG_KNOCKBACK_SCALING, 0.95); 
set_hitbox_value(AT_DSTRONG, 2, HG_BASE_HITPAUSE, 10); 
set_hitbox_value(AT_DSTRONG, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSTRONG, 2, HG_ANGLE_FLIPPER, 0);

//Hitboxes used to detect the clone range when analysing the attack 
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -24); 
set_hitbox_value(AT_DSTRONG, 3, HG_WIDTH, 160);
set_hitbox_value(AT_DSTRONG, 3, HG_HEIGHT, 48); 
set_hitbox_value(AT_DSTRONG, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, 3, HG_PRIORITY, 2 + (is_master_player)); //player has more priority over the clone.
set_hitbox_value(AT_DSTRONG, 3, HG_DAMAGE, 3); 
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_KNOCKBACK_SCALING, 0); 
set_hitbox_value(AT_DSTRONG, 3, HG_BASE_HITPAUSE, 6); 
set_hitbox_value(AT_DSTRONG, 3, HG_EXTRA_HITPAUSE, 2); 
set_hitbox_value(AT_DSTRONG, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DSTRONG, 3, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSTRONG, 3, HG_ANGLE_FLIPPER, 0);