//draw_hud.gml
//update script 


if (is_master_player) {
			if dspecial_clones_out == 0 {
				if (move_cooldown[AT_DSPECIAL] > 0){
					draw_debug_text( temp_x + 0, temp_y - 15, "  Dspecial Cooldown: " + string(move_cooldown[AT_DSPECIAL]));
				}
			}else if dspecial_clones_out == 1{
				draw_debug_text( temp_x + 0, temp_y - 15, "    Dspecial Clones: " + string(dspecial_clones_out));

			}else if dspecial_clones_out == 2{
				draw_debug_text( temp_x + 0, temp_y - 15, "    Dspecial Clones: " + string(dspecial_clones_out));

}


// prevents draw_hud from running a frame too early and spitting an error

//draw_debug_text( temp_x + 0, temp_y - 15, "  Dspecial Cooldown: " + string(move_cooldown[AT_DSPECIAL]));
//draw_debug_text( temp_x + 0, temp_y - 15, "Dspecial Clones Out: " + string(dspecial_clones_out]));


if (c_naruto_dspecial_cooldown_time > 0) {
	
    switch (get_player_color(player)) {
        
        case 0:
            draw_sprite_ext(sprite_get("clonehudfix"), 0, temp_x + 174, temp_y - 26, 2, 2, 0, 
            (move_cooldown[AT_DSPECIAL] > 0 || naruto_currently_has_dspecial_clone_active > 0) ? c_dkgray : c_white, 1);
        break;
        
        default:
            shader_start();
            draw_sprite_ext(sprite_get("clonehud"), 0, temp_x + 174, temp_y - 26, 2, 2, 0, 
            (move_cooldown[AT_DSPECIAL] > 0 || naruto_currently_has_dspecial_clone_active > 0) ? c_dkgray : c_white, 1);
            shader_end();
        break;
    }
    
}


}