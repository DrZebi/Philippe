//----------------------------------------------------------------------------------------------------
// NSPECIAL_2
//----------------------------------------------------------------------------------------------------

//attack performed by a Naruto clone as Naruto charges Rasengan.

set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_clone"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("empty_pixel"));
set_attack_value(AT_NSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_2, AG_LANDING_LAG, 14);

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 5);

//startup 1 (this window is skipped if naruto uses nspecial near an existing clone)
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);

//startup 2 (this window is skipped if naruto uses nspecial near an existing clone)
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//charge window
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_TYPE, 9); //infinitely repeating window
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

//stop charging 1
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//stop charging 2
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 2);