/*
//----------------------------------------------------------------------------------------------------
// TAUNT
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAME_START, 1);


//----------------------------------------------------------------------------------------------------
// TAUNT_2
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt"));

//startup/init
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//----------------------------------------------------------------------------------------------------
// EXTRA_1
//----------------------------------------------------------------------------------------------------

//clone 'hitstun' state.
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("hurt"));
set_attack_value(AT_EXTRA_1, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_1, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_1, AG_LANDING_LAG, 1);

set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 3);

set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 22);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED, -5);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, -9);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_EXTRA_1, 1);


//this projectile is used to detect the clone's collisions with other hitboxes.
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 20);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 9999999);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, -40);

//set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("ex_guy_hurt_box")); //sprite_get("idle"));
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_MASK, asset_get("ex_guy_hurt_box"));

set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DESTROY_EFFECT, 1); //no visual effect when destroyed

set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 0); 

set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1); //clones can't interrupt incoming projectiles.
set_hitbox_value(AT_EXTRA_1, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);




//----------------------------------------------------------------------------------------------------
// EXTRA_3
//----------------------------------------------------------------------------------------------------


//clone 'deactivated' state.
set_attack_value(AT_EXTRA_3, AG_SPRITE, asset_get("empty_sprite"));
set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);

set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 9); //repeating window
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10000);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1); //don't move
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_INVINCIBILITY, 1); //fully invincible



*/


//----------------------------------------------------------------------------------------------------
// MUNOPHONE
//----------------------------------------------------------------------------------------------------
if (!is_master_player) exit;

set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open"));
set_attack_value(AT_PHONE, AG_NUM_WINDOWS, 3);
set_attack_value(AT_PHONE, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_PHONE, AG_CATEGORY, 2);
set_attack_value(AT_PHONE, AG_OFF_LEDGE, 1);
set_attack_value(AT_PHONE, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_PHONE, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_PHONE, AG_MUNO_ATTACK_EXCLUDE, 1);

// NOTE: It is not recommended to change the values for anything except for
// AG_WINDOW_ANIM_FRAMES and AG_WINDOW_ANIM_FRAME_START.

//Opening window

set_window_value(AT_PHONE, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_PHONE, 1, AG_WINDOW_ANIM_FRAMES, 3);

//Looping window

set_window_value(AT_PHONE, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_PHONE, 2, AG_WINDOW_LENGTH, 100);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_PHONE, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Closing window

set_window_value(AT_PHONE, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_PHONE, 3, AG_WINDOW_ANIM_FRAME_START, 4);