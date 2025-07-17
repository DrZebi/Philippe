//----------------------------------------------------------------------------------------------------
// FSTRONG
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_FSTRONG, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(this_atk, AG_NUM_WINDOWS, 5);
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 3);
set_attack_value(this_atk, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 10);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(this_atk, 2, AG_WINDOW_HSPEED, 7);
set_window_value(this_atk, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 3);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 2);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(this_atk, 5, AG_WINDOW_LENGTH, 20);
set_window_value(this_atk, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(this_atk, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//--------------------
// FSTRONG Hitboxes
//--------------------

set_num_hitboxes(this_atk, 1);

set_hitbox_value(this_atk, 1, HG_WINDOW, 3);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 5);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 25);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -31);
set_hitbox_value(this_atk, 1, HG_WIDTH, 70);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 60);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 3);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 10); // 10
set_hitbox_value(this_atk, 1, HG_ANGLE, 45);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(this_atk, 1, HG_HIT_LOCKOUT, 10);
