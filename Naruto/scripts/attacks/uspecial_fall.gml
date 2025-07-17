

//----------------------------------------------------------------------------------------------------
// USPECIAL_2 (fall)
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("downhurt"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 15);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, hurtbox_spr);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
//set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);


set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7); //pratfall
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);