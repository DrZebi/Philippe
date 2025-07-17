//----------------------------------------------------------------------------------------------------
// NSPECIAL
//----------------------------------------------------------------------------------------------------

//rasengan

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 10);
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));


//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//summon clone if necessary
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//; wait until clone is ready
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9); //infinitely-repeating window
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);

//startup 2
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);

//charge rasengan
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_TYPE, 9); //infinitely-repeating window
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);

//fire rasengan startup
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));

//fire rasengan active
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 3);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);

//recovery 1  (hold pose)
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 2);

//recovery 2
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 13);

//recovery 3
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 14);


//--------------------
// NSPECIAL Hitboxes
//--------------------


set_num_hitboxes(AT_NSPECIAL, 3);

//rasengan - initial hitbox

set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 8); //must be higher than 1
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0); //important
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 0.01); //prevent too much wiggling out of multihits

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("vfx_rasengan"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, 0.5); 
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'

set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 15); 
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0); 
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1); 
set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1); 
set_hitbox_value(AT_NSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1); //inflict extended parry stun
set_hitbox_value(AT_NSPECIAL, 1, HG_TECHABLE, 1); //can't ground tech

//rasengan - travelling multihit hitbox - spawned in hit_player.gml
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 20);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 5); //must be higher than 1
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 9); //hit in direction of projectile
set_hitbox_value(AT_NSPECIAL, 2, HG_SDI_MULTIPLIER, 0.01); //prevent too much wiggling out of multihits

set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("vfx_rasengan"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, 0.33); 
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'

set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 5); 
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_VSPEED, 0); 
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1); 
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1); //goes through players - important 
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 0);

set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, get_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED)); //knockback speed = travel speed
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0); //important
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1); 
set_hitbox_value(AT_NSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1); //inflict extended parry stun
set_hitbox_value(AT_NSPECIAL, 2, HG_TECHABLE, 1); //can't ground tech

//rasengan - final hitbox - spawned in hitbox.gml upon hitbox #2's final hit
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 20);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 8); 
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 8); //hit towards projectile
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 8); //adjust as needed
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.9); //important
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_SDI_MULTIPLIER, 1); 

set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("vfx_rasengan"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 1); 
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, -1);

set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 14); //14 = 'smoke small'
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_HSPEED, 8); 
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_VSPEED, 0); 
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1); 
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1); //inflict extended parry stun
