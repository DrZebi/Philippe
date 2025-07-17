
//----------------------------------------------------------------------------------------------------
// FTILT
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_FTILT, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(this_atk, AG_AIR_SPRITE, sprite_get("ftilt"));
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(this_atk, AG_HURTBOX_AIR_SPRITE, sprite_get("ftilt_hurt"));

set_attack_value(this_atk, AG_NUM_WINDOWS, 3);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_HSPEED, 5);
set_window_value(this_atk, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 12);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(this_atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//--------------------
// FTILT Hitboxes
//--------------------

set_num_hitboxes(this_atk, 1);
set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 45);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -40);
set_hitbox_value(this_atk, 1, HG_WIDTH, 90);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 75);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 6);
set_hitbox_value(this_atk, 1, HG_ANGLE, 45);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_atk, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(this_atk, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(this_atk, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(this_atk, 1, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(this_atk, 1, HG_PROJECTILE_UNBASHABLE, 1);