//user_event3.gml - master initialization.
//called at the start of update.gml

//failsafe to prevent one particularly odd crash bug:
down_down = false;

//confirm that this initialization code has been performed.
initialize_unit_players = true;

//set the 'default' target player to the first existing player who isn't Naruto or on Naruto's team.
with (oPlayer) {
    if (player == other.player || get_player_team(other.player) == get_player_team(player) || clone || custom_clone) continue;
    other.naruto_last_hit_opponent = self;
    break;
}

//exit here if this is a test player
if (object_index == oTestPlayer) exit;

//run compatibility script
user_event(8);

//if clone mode = 1, spawn all of the clone instances on this frame.
if (c_naruto_clone_mode != 1) exit;

for (var i = 0; i < c_naruto_maximum_clones; i++) {
    //spawn clone
    var new_unit = instance_create(x, y, "oPlayer");
    //unit_player_id_array[i] = 
    
    //deactivate the clone and make it invisible
    //with (unit_player_id_array[i]) {
    with (new_unit) {
        user_event(5);
    }
}
