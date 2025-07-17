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