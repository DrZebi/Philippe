set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,3);

set_hitbox_value(AT_YOURATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_YOURATTACK, 3, HG_HITBOX_TYPE, 1 );
set_hitbox_value(AT_YOURATTACK, 3, HG_WINDOW, 1);
set_hitbox_value(AT_YOURATTACK, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_YOURATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_YOURATTACK, 3, HG_WIDTH, 30);
set_hitbox_value(AT_YOURATTACK, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_YOURATTACK, 3, HG_HITBOX_X, 85);
set_hitbox_value(AT_YOURATTACK, 3, HG_HITBOX_Y, -27);
set_hitbox_value(AT_YOURATTACK, 3, HG_SHAPE, 0 );
set_hitbox_value(AT_YOURATTACK, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_YOURATTACK, 3, HG_DAMAGE, 999);
set_hitbox_value(AT_YOURATTACK, 3, HG_ANGLE, 270);
set_hitbox_value(AT_YOURATTACK, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_YOURATTACK, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_YOURATTACK, 3, HG_FINAL_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_YOURATTACK, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_YOURATTACK, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_YOURATTACK, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_YOURATTACK, 3, HG_EFFECT, 12 );
set_hitbox_value(AT_YOURATTACK, 3, HG_HITSTUN_MULTIPLIER, .3);
set_hitbox_value(AT_YOURATTACK, 3, HG_DRIFT_MULTIPLIER, .2);
set_hitbox_value(AT_YOURATTACK, 3, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_YOURATTACK, 3, HG_ANGLE_FLIPPER, 8 );
set_hitbox_value(AT_YOURATTACK, 3, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_YOURATTACK, 3, HG_IGNORES_PROJECTILES, 1 );
set_hitbox_value(AT_YOURATTACK, 3, HG_HIT_LOCKOUT, 0);
set_hitbox_value(AT_YOURATTACK, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_YOURATTACK, 3, HG_TECHABLE, 0 );
set_hitbox_value(AT_YOURATTACK, 3, HG_FORCE_FLINCH, 0 );
set_hitbox_value(AT_YOURATTACK, 3, HG_THROWS_ROCK, 2 );
set_hitbox_value(AT_YOURATTACK, 3, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);