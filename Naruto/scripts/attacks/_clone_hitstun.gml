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
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 999999999);
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

//clones can't interrupt incoming projectiles, nor interact with anything else.
//for some reason it still triggers Clairen's counter (though the clones can exist in the plasma field just fine), seemingly no workaround for that.
set_hitbox_value(AT_EXTRA_1, 1, HG_IGNORES_PROJECTILES, 1); 
set_hitbox_value(AT_EXTRA_1, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_PLASMA_SAFE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
