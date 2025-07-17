//init_shader.gml
var alt_clr = get_player_color("online_css" in self ? 0 : player);

switch (alt_clr) {
	case 0:
		if ("state" not in self || state != PS_PARRY || image_index != 1) {
		set_character_color_slot(1, 102, 102, 102, 1);
		set_character_color_slot(2, 221, 92, 0, 1);
		set_character_color_slot(3, 51, 51, 51, 1);
	}
	break;
}
 if get_player_color(player) == 10{
	set_character_color_shading(0, 0.5);
	set_character_color_shading(1, 0.5);
	set_character_color_shading(2, 0.5);
	set_character_color_shading(3, 0.5);
	set_character_color_shading(4, 0.5);
	set_character_color_shading(5, 0.5);
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 0.5);
}else if get_player_color(player) == 11{
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
}