//----------------------------------------------------------------------------------------------------
// TAUNT_2
//----------------------------------------------------------------------------------------------------

set_attack_value(AT_TAUNT_2, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get("taunt_sexyjutsu_female"));
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

//startup/init
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);

set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 90);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 20);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
//set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get("snd_clonespawn"));
//set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, floor(get_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH) * 0.25 ) );

//end of taunt - loop until cancelled
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 9); //looping window
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 19);

//recovery
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 3, AG_WINDOW_ANIM_FRAME_START, 18);

