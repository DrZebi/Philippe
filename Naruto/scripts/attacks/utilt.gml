//----------------------------------------------------------------------------------------------------
// UTILT
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_UTILT, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("utilt"));
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_attack_value(this_atk, AG_NUM_WINDOWS, 3);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 10);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 20);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//--------------------
// UTILT Hitboxes
//--------------------

set_num_hitboxes(this_atk, 1);
set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -53);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 5);
set_hitbox_value(this_atk, 1, HG_WIDTH, 55);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 104);
set_hitbox_value(this_atk, 1, HG_SHAPE, 0);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 10);
set_hitbox_value(this_atk, 1, HG_ANGLE, 85);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 8.125);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

