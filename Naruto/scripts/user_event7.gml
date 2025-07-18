//user_event7.gml
//swaps the 'index' of this attack to use a special clone-attack index if necessary.
//this fixes bugs with overlapping attacks.
//called in both set_attack.gml, and the safely_set_attack() function in attack_update.gml.



switch(attack) {
    case AT_JAB:
    case AT_FTILT:
    case AT_UTILT:
    case AT_DTILT:
    case AT_DATTACK:
    case AT_NAIR:
    case AT_BAIR:
    case AT_FAIR:
    case AT_UAIR:
    case AT_DAIR:
    case AT_FSTRONG:
        //print("clone: " + string(naruto_attack_group_index) + " / using attack:" + string(attack));
        //if (!is_master_player) { print("print this before crashing: group index" + string(naruto_attack_group_index) + ", attack index " + string(attack)); }
        attack = master_player_id.c_naruto_attack_index_array[attack, naruto_attack_group_index];
        //print("final attack: " + string(attack))
    break;
}
