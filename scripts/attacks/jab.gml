set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 11);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_JAB, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 4, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_JAB, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 4);

set_window_value(AT_JAB, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 6, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 7, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_JAB, 8, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_JAB, 8, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_JAB, 8, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_JAB, 8, AG_WINDOW_CANCEL_FRAME, 10);

set_window_value(AT_JAB, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 9, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_JAB, 9, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_JAB, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 10, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_JAB, 11, AG_WINDOW_LENGTH, 15);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 11, AG_WINDOW_ANIM_FRAME_START, 16);


set_num_hitboxes(AT_JAB, 5);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 5);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 24);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 55);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 20);
set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_JAB, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 3, HG_WINDOW, 8);
set_hitbox_value(AT_JAB, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_X, 12);
set_hitbox_value(AT_JAB, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_JAB, 3, HG_WIDTH, 74);
set_hitbox_value(AT_JAB, 3, HG_HEIGHT, 72);
set_hitbox_value(AT_JAB, 3, HG_SHAPE, 1);
set_hitbox_value(AT_JAB, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 3, HG_ANGLE, 73);
set_hitbox_value(AT_JAB, 3, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_JAB, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_JAB, 3, HG_EFFECT, 11);
set_hitbox_value(AT_JAB, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_JAB, 3, HG_HIT_SFX, sfx_clairen_hit_weak);
set_hitbox_value(AT_JAB, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 3, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_JAB, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 4, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 4, HG_LIFETIME, 20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_JAB, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_JAB, 4, HG_WIDTH, 68);
set_hitbox_value(AT_JAB, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_JAB, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 4, HG_ANGLE, 125.53767779197437);
set_hitbox_value(AT_JAB, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 4, HG_KNOCKBACK_SCALING, 2);
set_hitbox_value(AT_JAB, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_JAB, 4, HG_VISUAL_EFFECT, 2);
set_hitbox_value(AT_JAB, 4, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 4, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 4, HG_PROJECTILE_UNBASHABLE, 1);

set_hitbox_value(AT_JAB, 5, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 5, HG_WINDOW, 11);
set_hitbox_value(AT_JAB, 5, HG_LIFETIME, 20);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_X, 17);
set_hitbox_value(AT_JAB, 5, HG_HITBOX_Y, -72);
set_hitbox_value(AT_JAB, 5, HG_WIDTH, 54);
set_hitbox_value(AT_JAB, 5, HG_HEIGHT, 72);
set_hitbox_value(AT_JAB, 5, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_JAB, 5, HG_DAMAGE, 10);
set_hitbox_value(AT_JAB, 5, HG_ANGLE, 124);
set_hitbox_value(AT_JAB, 5, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_JAB, 5, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_JAB, 5, HG_EFFECT, 8);
set_hitbox_value(AT_JAB, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_JAB, 5, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_JAB, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_JAB, 5, HG_HIT_SFX, sfx_kragg_spike);
set_hitbox_value(AT_JAB, 5, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 5, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_JAB, 5, HG_PROJECTILE_UNBASHABLE, 1);

