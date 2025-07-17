

//----------------------------------------------------------------------------------------------------
// JAB
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_JAB, naruto_attack_group_index];

set_attack_value(this_atk, AG_SPRITE, sprite_get("jab"));
set_attack_value(this_atk, AG_NUM_WINDOWS, 6);
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(this_atk, 1, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));

set_window_value(this_atk, 2, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 3);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(this_atk, 3, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 8);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(this_atk, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(this_atk, 3, AG_WINDOW_CANCEL_FRAME, 3);

set_window_value(this_atk, 4, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 4, AG_WINDOW_HSPEED, 3);
set_window_value(this_atk, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(this_atk, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(this_atk, 5, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 5, AG_WINDOW_LENGTH, 3);
set_window_value(this_atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(this_atk, 6, AG_WINDOW_TYPE, 1);
set_window_value(this_atk, 6, AG_WINDOW_LENGTH, 16);
set_window_value(this_atk, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 6, AG_WINDOW_ANIM_FRAME_START, 7);


set_num_hitboxes(this_atk, 2);

set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -40);
set_hitbox_value(this_atk, 1, HG_WIDTH, 70);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 40);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 2);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 4);
set_hitbox_value(this_atk, 1, HG_ANGLE, 361);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(this_atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(this_atk, 2, HG_WINDOW, 5);
set_hitbox_value(this_atk, 2, HG_LIFETIME, 3);
set_hitbox_value(this_atk, 2, HG_HITBOX_X, 40);
set_hitbox_value(this_atk, 2, HG_HITBOX_Y, -40);
set_hitbox_value(this_atk, 2, HG_WIDTH, 75);
set_hitbox_value(this_atk, 2, HG_HEIGHT, 50);
set_hitbox_value(this_atk, 2, HG_PRIORITY, 2);
set_hitbox_value(this_atk, 2, HG_DAMAGE, 6);
set_hitbox_value(this_atk, 2, HG_ANGLE, 361);
set_hitbox_value(this_atk, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(this_atk, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(this_atk, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(this_atk, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT_X_OFFSET, 24);
set_hitbox_value(this_atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_atk, 2, HG_HITBOX_GROUP, 1);