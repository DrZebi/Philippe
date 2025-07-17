//----------------------------------------------------------------------------------------------------
// DAIR
//----------------------------------------------------------------------------------------------------
var this_atk = master_player_id.c_naruto_attack_index_array[AT_DAIR, naruto_attack_group_index];

set_attack_value(this_atk, AG_CATEGORY, 1);
set_attack_value(this_atk, AG_SPRITE, sprite_get("dair"));
set_attack_value(this_atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(this_atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(this_atk, AG_LANDING_LAG, 10);
//set_attack_value(this_atk, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(this_atk, AG_NUM_WINDOWS, 4);
//startup
set_window_value(this_atk, 1, AG_WINDOW_LENGTH, 4);
set_window_value(this_atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(this_atk, 1, AG_WINDOW_VSPEED, -1);

//startup 2
set_window_value(this_atk, 2, AG_WINDOW_LENGTH, 7);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(this_atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(this_atk, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(this_atk, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(this_atk, 2, AG_WINDOW_SFX_FRAME, 6);

//throw
set_window_value(this_atk, 3, AG_WINDOW_LENGTH, 6);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(this_atk, 3, AG_WINDOW_HSPEED, -2);
set_window_value(this_atk, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(this_atk, 3, AG_WINDOW_VSPEED, -2);
set_window_value(this_atk, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(this_atk, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

//cooldown
set_window_value(this_atk, 4, AG_WINDOW_LENGTH, 12);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(this_atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(this_atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1); //since this attack is a projectile, we set can_hit variables manually in hit_player.gml.
set_window_value(this_atk, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//--------------------
// DAIR Hitboxes
//--------------------

set_num_hitboxes(this_atk, 1);

set_hitbox_value(this_atk, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(this_atk, 1, HG_WINDOW, 3);
set_hitbox_value(this_atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(this_atk, 1, HG_LIFETIME, 30);
set_hitbox_value(this_atk, 1, HG_HITBOX_X, 0);
set_hitbox_value(this_atk, 1, HG_HITBOX_Y, -30);
set_hitbox_value(this_atk, 1, HG_WIDTH, 32);
set_hitbox_value(this_atk, 1, HG_HEIGHT, 32);
set_hitbox_value(this_atk, 1, HG_SHAPE, 0);
set_hitbox_value(this_atk, 1, HG_PRIORITY, 1);
set_hitbox_value(this_atk, 1, HG_DAMAGE, 5);
set_hitbox_value(this_atk, 1, HG_ANGLE, 60);
set_hitbox_value(this_atk, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(this_atk, 1, HG_KNOCKBACK_SCALING, .4); // .5, then .9, then .8
set_hitbox_value(this_atk, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(this_atk, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(this_atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(this_atk, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(this_atk, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(this_atk, 1, HG_HIT_LOCKOUT, 1);

set_hitbox_value(this_atk, 1, HG_PROJECTILE_SPRITE, sprite_get("kunai"));
set_hitbox_value(this_atk, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(this_atk, 1, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'

set_hitbox_value(this_atk, 1, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'
set_hitbox_value(this_atk, 1, HG_PROJECTILE_HSPEED, 8); 
set_hitbox_value(this_atk, 1, HG_PROJECTILE_VSPEED, 8); 

//set_hitbox_value(this_atk, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 8); 
//set_hitbox_value(this_atk, 1, HG_PROJECTILE_VSPEED, 8); 
