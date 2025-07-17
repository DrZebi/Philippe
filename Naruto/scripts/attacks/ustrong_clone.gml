//----------------------------------------------------------------------------------------------------
// USTRONG_2 (ustrong clone attack)
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong_clone"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2); //rises, so needs to be aerial-ok
set_attack_value(AT_USTRONG_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("empty_pixel"));


//loop until player releases
//set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 9); //repeating window
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 120); 
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_VSPEED_TYPE, 1);

//post-charge startup
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 4); 
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_VSPEED_TYPE, 1);

//attack 1
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 1);

//attack 2
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_VSPEED_TYPE, 2);
//recovery + pratfall
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 8); //pratfall window
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);

//--------------------
// USTRONG_2 Hitboxes
//--------------------

set_num_hitboxes(AT_USTRONG_2, 2);

set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2); //frame delay allows this attack to be interrupted
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, get_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH) - 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1); 
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 11); // 8
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, .6); // .5
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTENDED_PARRY_STUN, 1); //inflict extended parry stun

set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);//get_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH)); //frame delay allows this attack to be interrupted
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 1); 
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 10); // 8
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, .6); // .5
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG_2, 2, HG_EXTENDED_PARRY_STUN, 1); //inflict extended parry stun
