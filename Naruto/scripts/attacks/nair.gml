
//----------------------------------------------------------------------------------------------------
// NAIR
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_NAIR, naruto_attack_group_index];

set_attack_value(this_atk, AG_CATEGORY, 1);
set_attack_value(this_atk, AG_SPRITE, sprite_get("nair"));
set_attack_value(this_atk, AG_NUM_WINDOWS, 4);
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_atk, AG_OFF_LEDGE, 0);
set_attack_value(this_atk, AG_LANDING_LAG, 5);
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));
set_attack_value(this_atk, 18, 2);

set_window_value(this_atk, 1, AG_WINDOW_TYPE, 1);

//clones have their nair startup equal their bair startup. makes fspecial folowups consistent.
if (is_master_player) set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 2);
else {
    var bair_length;
    with (master_player_id) bair_length = get_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH);
    set_window_value(this_atk, 1, AG_WINDOW_LENGTH, bair_length);
}

set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(this_atk, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(this_atk, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(this_atk, 1, AG_WINDOW_VSPEED, -1);


set_window_value(this_atk, 2, AG_WINDOW_TYPE, 2);
set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(this_atk, 3, AG_WINDOW_TYPE, 2);
set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 11);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(this_atk, 4, AG_WINDOW_TYPE, 3);
set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(this_atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//--------------------
// NAIR Hitboxes
//--------------------

set_num_hitboxes(this_atk, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW, 2);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 12);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 30);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -14);
set_hitbox_value(this_atk, 1, HG_WIDTH, 40);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 36);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 5);
set_hitbox_value(this_atk, 1, HG_ANGLE, 45);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(this_atk, 1, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(this_atk, 1, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(this_atk, 1, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(this_atk, 1, HG_FINAL_BASE_KNOCKBACK, 3);


set_hitbox_value(this_atk, 2, HG_WINDOW, 2);
set_hitbox_value(this_atk, 2, HG_LIFETIME, 12);
set_hitbox_value(this_atk, 2, HG_HITBOX_X, -2);
set_hitbox_value(this_atk, 2, HG_HITBOX_Y, -14);
set_hitbox_value(this_atk, 2, HG_WIDTH, 40);
set_hitbox_value(this_atk, 2, HG_HEIGHT, 36);
set_hitbox_value(this_atk, 2, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 2, HG_DAMAGE, 5);
set_hitbox_value(this_atk, 2, HG_ANGLE, 45);
set_hitbox_value(this_atk, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(this_atk, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(this_atk, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_atk, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(this_atk, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(this_atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(this_atk, 2, HG_ANGLE_FLIPPER, 6);
//set_hitbox_value(this_atk, 2, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(this_atk, 2, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(this_atk, 2, HG_FINAL_BASE_KNOCKBACK, 3);
