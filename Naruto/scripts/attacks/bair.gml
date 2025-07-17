
//----------------------------------------------------------------------------------------------------
// BAIR
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_BAIR, naruto_attack_group_index];

set_attack_value(this_atk, AG_CATEGORY, 1);
set_attack_value(this_atk, AG_SPRITE, sprite_get("bair"));
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_atk, AG_LANDING_LAG, 10);

set_attack_value(this_atk, AG_NUM_WINDOWS, 3);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 9);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(this_atk, 1, AG_WINDOW_VSPEED, -1);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 18);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//--------------------
// BAIR Hitboxes
//--------------------

set_num_hitboxes(this_atk, 1);
set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, -20);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -30);
set_hitbox_value(this_atk, 1, HG_WIDTH, 70);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 55);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 8);
set_hitbox_value(this_atk, 1, HG_ANGLE, 135);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(this_atk, 1, HG_FINAL_BASE_KNOCKBACK, 5);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_X_OFFSET, -20);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(this_atk, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(this_atk, 1, HG_HITSTUN_MULTIPLIER, 0);
