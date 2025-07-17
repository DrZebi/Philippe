
if (is_master_player) {
    //play death sfx
    if (prev_state == PS_HITSTUN || prev_state == PS_TUMBLE) voice_play(VB_DEATH);
    
    //destroy clones
	dspecial_clone_out = 0;
    user_event(4);
}
else {
    //for clones that somehow get KO'd, just disable the clone.
    user_event(5);
}


//voice_play script by Muno
#define voice_play(idx)
cur_vc = idx;
user_event(13);