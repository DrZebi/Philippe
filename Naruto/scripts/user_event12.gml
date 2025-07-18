//user_event12.gml
//voice attack_update script
//called in attack_update.gml
//code modified from Muno


// voice

//only play sound clips at the end of a window
if (window_timer != get_window_value(attack, window, AG_WINDOW_LENGTH) - 1 || hitpause) exit;

switch(attack){
	case AT_JAB:
		//voice_window(1, VB_ATK_SMALL);
		voice_window(4, VB_ATK_SMALL);
		//voice_window(7, VB_ATK_MED);
		break;
		
	case AT_FTILT:
	case AT_NAIR:
		voice_window(1, VB_ATK_SMALL);
		//voice_window(4, VB_ATK_MED);
		break;
		
	case AT_UTILT:
	case AT_DTILT:
		voice_window(1, VB_ATK_MED);
		break;
		
	case AT_DATTACK:
	case AT_FAIR:
	case AT_BAIR:
	case AT_UAIR:
		voice_window(1, VB_ATK_MED);
	break;
	
	case AT_DAIR:
		voice_window(2, VB_ATK_MED);
	break;
	
	case AT_FSPECIAL:
		voice_window(3, VB_ATK_BIG);
	break;	

	case AT_FSTRONG:
	case AT_USTRONG:
		voice_window(2, VB_ATK_BIG);
	break;
	
	case AT_DSTRONG:
		if (is_master_player) voice_window(2, VB_ATK_BIG);
	break;
	
	case AT_TAUNT:
		voice_window(1, VB_TAUNT);
	break;
}

#define voice_window(wdw, idx)
if window == wdw {
	voice_play(idx);
}

#define voice_play(idx)
cur_vc = idx;
user_event(13);
