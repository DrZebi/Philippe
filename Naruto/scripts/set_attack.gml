//set_attack.gml

//use the index of this attack specific to this clone. this fixes bugs with overlapping attacks.
user_event(7);

if (is_master_player) {
    
    //special taunt
    if (attack == AT_TAUNT && (down_down || down_stick_down)) {
        attack = AT_TAUNT_2;
    }
    

}
else {
    //for some reason clone attacks don't reset has_hit variables by themselves, so do that here.
    has_hit = false;
    has_hit_player = false;
    was_parried = false;
}