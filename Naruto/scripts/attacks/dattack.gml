//----------------------------------------------------------------------------------------------------
// DASH ATTACK
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_DATTACK, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("dattack"));
set_attack_value(this_atk, AG_AIR_SPRITE, sprite_get("dattack"));

set_attack_value(this_atk, AG_NUM_WINDOWS, 4);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 1, AG_WINDOW_HSPEED, 4);
set_window_value(this_atk, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 8);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(this_atk, 2, AG_WINDOW_HSPEED, 10);
set_window_value(this_atk, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_atk, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_atk, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(this_atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(this_atk, 2, AG_WINDOW_SFX_FRAME, 7);

set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 3, AG_WINDOW_HSPEED, 4);
set_window_value(this_atk, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_atk, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);


set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 9);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_atk, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(this_atk, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);

//--------------------
// DATTACK Hitboxes
//--------------------

set_num_hitboxes(this_atk, 8);

set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 0);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 1, HG_WIDTH, 35);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 1, HG_SHAPE, 2);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 1, HG_ANGLE, 45);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 1, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 1, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 1, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 2, HG_WINDOW, 2);
set_hitbox_value(this_atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 2, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 2, HG_HITBOX_X, 35);
set_hitbox_value(this_atk, 2, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 2, HG_WIDTH, -35);
set_hitbox_value(this_atk, 2, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 2, HG_SHAPE, 2);
set_hitbox_value(this_atk, 2, HG_PRIORITY, 2);
set_hitbox_value(this_atk, 2, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 2, HG_ANGLE, 45);
set_hitbox_value(this_atk, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(this_atk, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 2, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 2, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 2, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 3, HG_WINDOW, 2);
set_hitbox_value(this_atk, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(this_atk, 3, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 3, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 3, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 3, HG_WIDTH, 61);
set_hitbox_value(this_atk, 3, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 3, HG_SHAPE, 2);
set_hitbox_value(this_atk, 3, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 3, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 3, HG_ANGLE, 45);
set_hitbox_value(this_atk, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(this_atk, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 3, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 3, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 3, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 4, HG_WINDOW, 2);
set_hitbox_value(this_atk, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(this_atk, 4, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 4, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 4, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 4, HG_WIDTH, 61);
set_hitbox_value(this_atk, 4, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 4, HG_SHAPE, 2);
set_hitbox_value(this_atk, 4, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 4, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 4, HG_ANGLE, 45);
set_hitbox_value(this_atk, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_atk, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 4, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 4, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 4, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 4, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 4, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 5, HG_WINDOW, 2);
set_hitbox_value(this_atk, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(this_atk, 5, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 5, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 5, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 5, HG_WIDTH, 61);
set_hitbox_value(this_atk, 5, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 5, HG_SHAPE, 2);
set_hitbox_value(this_atk, 5, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 5, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 5, HG_ANGLE, 45);
set_hitbox_value(this_atk, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_atk, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 5, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 5, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 5, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 5, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 6, HG_WINDOW, 2);
set_hitbox_value(this_atk, 6, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(this_atk, 6, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 6, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 6, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 6, HG_WIDTH, 61);
set_hitbox_value(this_atk, 6, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 6, HG_SHAPE, 2);
set_hitbox_value(this_atk, 6, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 6, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 6, HG_ANGLE, 45);
set_hitbox_value(this_atk, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_atk, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 6, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 6, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 6, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 6, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 6, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 7, HG_WINDOW, 2);
set_hitbox_value(this_atk, 7, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(this_atk, 7, HG_LIFETIME, 1);
set_hitbox_value(this_atk, 7, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 7, HG_HITBOX_Y, -10);
set_hitbox_value(this_atk, 7, HG_WIDTH, 61);
set_hitbox_value(this_atk, 7, HG_HEIGHT, 26);
set_hitbox_value(this_atk, 7, HG_SHAPE, 2);
set_hitbox_value(this_atk, 7, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 7, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 7, HG_ANGLE, 45);
set_hitbox_value(this_atk, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(this_atk, 7, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 7, HG_VISUAL_EFFECT, 1);
set_hitbox_value(this_atk, 7, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(this_atk, 7, HG_HITBOX_GROUP, 1);
set_hitbox_value(this_atk, 7, HG_TECHABLE, 1);
set_hitbox_value(this_atk, 7, HG_DRIFT_MULTIPLIER, 0.01);
set_hitbox_value(this_atk, 7, HG_SDI_MULTIPLIER, 0.01);

set_hitbox_value(this_atk, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 8, HG_WINDOW, 3);
set_hitbox_value(this_atk, 8, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 8, HG_LIFETIME, 2);
set_hitbox_value(this_atk, 8, HG_HITBOX_X, 20);
set_hitbox_value(this_atk, 8, HG_HITBOX_Y, -30);
set_hitbox_value(this_atk, 8, HG_WIDTH, 30);
set_hitbox_value(this_atk, 8, HG_HEIGHT, 78);
set_hitbox_value(this_atk, 8, HG_SHAPE, 2);
set_hitbox_value(this_atk, 8, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 8, HG_ANGLE, 80);
set_hitbox_value(this_atk, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_atk, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(this_atk, 8, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(this_atk, 8, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(this_atk, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(this_atk, 8, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(this_atk, 8, HG_SDI_MULTIPLIER, 1);