//destroy clones when stunned.
if (state_cat == SC_HITSTUN && is_master_player) {
	dspecial_clone_out = 0;
    user_event(4);
    //play hurt sound
    if (enemy_hitboxID.damage > 0 && enemy_hitboxID.kb_value > 4) voice_play(VB_HURT);
}

//voice_play script by Muno
#define voice_play(idx)
cur_vc = idx;
user_event(13);