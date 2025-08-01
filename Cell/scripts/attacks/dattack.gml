set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 6.5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, sfx_dbfz_swipe_weak1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 6.5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sfx_dbfz_swipe_weak1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx_dbfz_hit_weak);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sfx_dbfz_hit_weak);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sfx_dbfz_hit_weak);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DATTACK, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 20);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sfx_dbfz_hit_weak);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_DATTACK, 4, HG_TECHABLE, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITSTUN_MULTIPLIER, 1.5);

set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DATTACK, 5, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 5, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 5, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DATTACK, 5, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 5, HG_HITPAUSE_SCALING, 0.05);
set_hitbox_value(AT_DATTACK, 5, HG_HIT_SFX, sfx_dbfz_hit_medium);
set_hitbox_value(AT_DATTACK, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, 5);