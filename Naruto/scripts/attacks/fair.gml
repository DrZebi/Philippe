//----------------------------------------------------------------------------------------------------
// FAIR
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_FAIR, naruto_attack_group_index];

set_attack_value(this_atk, AG_CATEGORY, 1);
set_attack_value(this_atk, AG_SPRITE, sprite_get("fair"));
set_attack_value(this_atk, AG_NUM_WINDOWS, 4);
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_atk, AG_OFF_LEDGE, 0);
set_attack_value(this_atk, AG_LANDING_LAG, 8);
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(this_atk, 18, 10);


set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 8);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(this_atk, 1, AG_WINDOW_VSPEED, -1);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 28);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//--------------------
// FAIR Hitboxes
//--------------------

set_num_hitboxes(this_atk, 4);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 17);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -61);
set_hitbox_value(this_atk, 1, HG_WIDTH, 66);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 67);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 8);
set_hitbox_value(this_atk, 1, HG_ANGLE, 45);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, 5);
//set_hitbox_value(this_atk, 1, HG_DRIFT_MULTIPLIER, 1);
//set_hitbox_value(this_atk, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(this_atk, 1, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(this_atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 2, HG_WINDOW, 2);
set_hitbox_value(this_atk, 2, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 2, HG_HITBOX_X, 28);
set_hitbox_value(this_atk, 2, HG_HITBOX_Y, -45);
set_hitbox_value(this_atk, 2, HG_WIDTH, 15);
set_hitbox_value(this_atk, 2, HG_HEIGHT, 15);
set_hitbox_value(this_atk, 2, HG_PRIORITY, 8);
set_hitbox_value(this_atk, 2, HG_DAMAGE, 9);
set_hitbox_value(this_atk, 2, HG_ANGLE, 280);
set_hitbox_value(this_atk, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_atk, 2, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(this_atk, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_atk, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT, 305);
//set_hitbox_value(this_atk, 2, HG_DRIFT_MULTIPLIER, 1);
//set_hitbox_value(this_atk, 2, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(this_atk, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(this_atk, 2, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(this_atk, 3, HG_WINDOW, 3);
set_hitbox_value(this_atk, 3, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 3, HG_HITBOX_X, 7);
set_hitbox_value(this_atk, 3, HG_HITBOX_Y, -18);
set_hitbox_value(this_atk, 3, HG_WIDTH, 71);
set_hitbox_value(this_atk, 3, HG_HEIGHT, 60);
set_hitbox_value(this_atk, 3, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 3, HG_DAMAGE, 8);
set_hitbox_value(this_atk, 3, HG_ANGLE, 30);
set_hitbox_value(this_atk, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_atk, 3, HG_KNOCKBACK_SCALING, 0.55);
set_hitbox_value(this_atk, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(this_atk, 3, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(this_atk, 3, HG_VISUAL_EFFECT_X_OFFSET, 32);
//set_hitbox_value(this_atk, 3, HG_VISUAL_EFFECT_Y_OFFSET, 5);
//set_hitbox_value(this_atk, 3, HG_DRIFT_MULTIPLIER, 1);
//set_hitbox_value(this_atk, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(this_atk, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
//set_hitbox_value(this_atk, 3, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(this_atk, 4, HG_WINDOW, 3);
set_hitbox_value(this_atk, 4, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 4, HG_HITBOX_X, -7);
set_hitbox_value(this_atk, 4, HG_HITBOX_Y, -05);
set_hitbox_value(this_atk, 4, HG_WIDTH, 15);
set_hitbox_value(this_atk, 4, HG_HEIGHT, 15);
set_hitbox_value(this_atk, 4, HG_PRIORITY, 8);
set_hitbox_value(this_atk, 4, HG_DAMAGE, 9);
set_hitbox_value(this_atk, 4, HG_ANGLE, 280);
set_hitbox_value(this_atk, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_atk, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(this_atk, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(this_atk, 4, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(this_atk, 4, HG_VISUAL_EFFECT, 305);
set_hitbox_value(this_atk, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(this_atk, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(this_atk, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(this_atk, 4, HG_IGNORES_PROJECTILES, 0);