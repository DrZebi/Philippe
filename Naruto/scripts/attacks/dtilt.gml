//----------------------------------------------------------------------------------------------------
// DTILT
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_DTILT, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(this_atk, AG_AIR_SPRITE, sprite_get("dtilt"));
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(this_atk, AG_HURTBOX_AIR_SPRITE, sprite_get("dtilt_hurt"));

set_attack_value(this_atk, AG_NUM_WINDOWS, 4);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 15);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


//--------------------
// DTILT Hitboxes
//--------------------

set_num_hitboxes(this_atk, 2);

set_hitbox_value(this_atk, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, -11);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -60);
set_hitbox_value(this_atk, 1, HG_WIDTH, 60);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 75);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 5);
set_hitbox_value(this_atk, 1, HG_ANGLE, 90);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(this_atk, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(this_atk, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(this_atk, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(this_atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 2, HG_WINDOW, 3);
set_hitbox_value(this_atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 2, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 2, HG_HITBOX_X, 31);
set_hitbox_value(this_atk, 2, HG_HITBOX_Y, -17);
set_hitbox_value(this_atk, 2, HG_WIDTH, 40);
set_hitbox_value(this_atk, 2, HG_HEIGHT, 40);
set_hitbox_value(this_atk, 2, HG_PRIORITY, 2);
set_hitbox_value(this_atk, 2, HG_DAMAGE, 8);
set_hitbox_value(this_atk, 2, HG_ANGLE, 290);
set_hitbox_value(this_atk, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_atk, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(this_atk, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(this_atk, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(this_atk, 2, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(this_atk, 2, HG_SDI_MULTIPLIER, 1);

//set_hitbox_value(this_atk, 3, HG_PARENT_HITBOX, 3);
//set_hitbox_value(this_atk, 3, HG_HITBOX_TYPE, 1);
//set_hitbox_value(this_atk, 3, HG_WINDOW, 3);
//set_hitbox_value(this_atk, 3, HG_WINDOW_CREATION_FRAME, 0);
//set_hitbox_value(this_atk, 3, HG_LIFETIME, 2);
//set_hitbox_value(this_atk, 3, HG_HITBOX_X, 25);
//set_hitbox_value(this_atk, 3, HG_HITBOX_Y, -39);
//set_hitbox_value(this_atk, 3, HG_WIDTH, 52);
//set_hitbox_value(this_atk, 3, HG_HEIGHT, 50);
//set_hitbox_value(this_atk, 3, HG_PRIORITY, 1);
//set_hitbox_value(this_atk, 3, HG_DAMAGE, 5);
//set_hitbox_value(this_atk, 3, HG_ANGLE, 80);
//set_hitbox_value(this_atk, 3, HG_BASE_KNOCKBACK, 7);
//set_hitbox_value(this_atk, 3, HG_KNOCKBACK_SCALING, .5);
//set_hitbox_value(this_atk, 3, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(this_atk, 3, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(this_atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//set_hitbox_value(this_atk, 3, HG_DRIFT_MULTIPLIER, 1);
//set_hitbox_value(this_atk, 3, HG_SDI_MULTIPLIER, 1);//