//----------------------------------------------------------------------------------------------------
// UAIR
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_UAIR, naruto_attack_group_index];

set_attack_value(this_atk, AG_CATEGORY, 1);
set_attack_value(this_atk, AG_SPRITE, sprite_get("uair"));
set_attack_value(this_atk, AG_NUM_WINDOWS, 3);
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_atk, AG_LANDING_LAG, 6);
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 9);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(this_atk, 1, AG_WINDOW_VSPEED, -1);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 11); // 12
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(this_atk, 1);

set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -56);
set_hitbox_value(this_atk, 1, HG_WIDTH, 48);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 96);
set_hitbox_value(this_atk, 1, HG_SHAPE, 2);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 5);
set_hitbox_value(this_atk, 1, HG_ANGLE, 75);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_atk, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(this_atk, 1, HG_HIT_LOCKOUT, 10);