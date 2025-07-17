if (object_index == asset_get("draw_result_screen")){
	if get_player_color(player) == 0 {
		set_ui_element(UI_CHARSELECT, sprite_get("hud_default_charselect"));
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_default_portrait"));
	}else{
		set_ui_element(UI_CHARSELECT, sprite_get("hud_alt1_charselect"));
		set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt1_portrait"));
	}
}

if object_index != oPlayer exit;

//Fix Shading
if get_player_color(player) == 0{
	if ssj == 0{
		set_character_color_shading(3, 1);
	}else if ssj == 1 || ssj == 2{
		set_character_color_shading(3, 1);
	}else if ssj == 3{
		set_character_color_shading(3, 1.25);
	}else if ssj == 4{
		set_character_color_shading(3, 1.5);
	}else if ssj == 5{
		set_character_color_shading(3, 1.25);
	}else if ssj == 6{
		set_character_color_shading(3, 1);
	}
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
	set_character_color_slot(4, 76, 97, 255 ); //Belt
	set_character_color_slot(5, 255, 124, 76 ); //Pants
	set_character_color_slot(6, 76, 97, 255 ); //Shoes1
} else if get_player_color(player) == 16{
	if ssj == 0{
		set_character_color_shading(3, 1);
	}else{
		set_character_color_shading(3, 1);
	}
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
} else if get_player_color(player) == 19{
	set_character_color_shading(0, 0.5);
	set_character_color_shading(1, 0.5);
	set_character_color_shading(2, 0.5);
	set_character_color_shading(3, 0.5);
	set_character_color_shading(4, 0.5);
	set_character_color_shading(5, 0.5);
	set_character_color_shading(6, 0.5);
	set_character_color_shading(7, 0.5);
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
} else if get_player_color(player) == 20{
	set_character_color_shading(0, 0);
	set_character_color_shading(1, 0);
	set_character_color_shading(2, 0);
	set_character_color_shading(3, 0);
	set_character_color_shading(4, 0);
	set_character_color_shading(5, 0);
	set_character_color_shading(6, 0);
	set_character_color_shading(7, 0);
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
}else{
	if ssj == 0{
		set_character_color_shading(3, 1);
	}else if ssj == 1 || ssj == 2{
		set_character_color_shading(3, 1);
	}else if ssj == 3{
		set_character_color_shading(3, 1.25);
	}else if ssj == 4{
		set_character_color_shading(3, 1.25);
	}else if ssj == 5{
		set_character_color_shading(3, 1.25);
	}else if ssj == 6{
		set_character_color_shading(3, 1);
	}
	if ("crystalized_damage_remaining" in self && crystalized_damage_remaining != 0 || "state" in self && state == 40) exit;
}

var col = ssjs[ssj].color;

set_character_color_slot(3, color_get_red(col), color_get_green(col), color_get_blue(col));
set_article_color_slot(3, color_get_red(col), color_get_green(col), color_get_blue(col));