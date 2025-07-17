if (get_player_color(player) == 0){
	set_ui_element(UI_CHARSELECT, sprite_get("hud_default_charselect"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_default_portrait"));
	draw_sprite(sprite_get("hud_belt_default"),0,x + 8,y + 8);
}
else{
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt1_charselect"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt1_portrait"));
	draw_sprite(sprite_get("hud_belt_alt1"),0,x + 8,y + 8);
}

muno_event_type = 6;
user_event(14);



sprite_change_offset("hud_base", 0, -2);
set_ui_element(UI_HUD_ICON, sprite_get("hud_base"));
set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt_base"));
set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_base"));

if(!instance_exists(cursor_id)) exit;
//Button Location
if player == 0{ // player online
	var tmp_xl = 16
	var tmp_yl = 48
}else{
	if get_player_hud_color(player) == 8421504 { //if CPU offline
		var tmp_xl = 58
		var tmp_yl = 178
	}else{ //if player offline
		var tmp_xl = 74
		var tmp_yl = 178
	}

}
var tmp_bw = 30 // button width
var tmp_bh = 26
var tmp_xl1 = x+tmp_xl
var tmp_xl2 = tmp_xl1+tmp_bw
var tmp_yl1 = y+tmp_yl
var tmp_yl2 = tmp_yl1+tmp_bh
draw_set_halign(fa_left);

if get_synced_var(player) > 2 {
	set_synced_var( player, 0)
}
if("cssframes" not in self){cssframes = 0;}
if("voiced" not in self){voiced = get_synced_var(player);}
if("voicebutton" not in self){voicebutton = voiced * 3;}
if("voicebuttoncurrent" not in self){voicebuttoncurrent =  voiced * 3;}
if voicebutton == 2 || voicebutton == 5 || voicebutton == 8 {
	if cssframes == 0{
	sound_stop(sound_get("vcEN_vgkn600"));
	sound_stop(sound_get("vcJP_vgkn600"));
		if voicebutton == 2{
			sound_play(sound_get("vcEN_vgkn600"));
			voiced = 1;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 5{
			sound_play(sound_get("vcJP_vgkn600"));
			voiced = 2;
			voicebuttoncurrent = voicebutton;
		}
		if voicebutton == 8{
			voiced = 0;
			voicebuttoncurrent = voicebutton;
		}

	}
	cssframes++;
	if cssframes == 5{
		cssframes = 0;
		voicebutton += 1;
		if voicebutton > 8 {
			voicebutton -= 9;
		}
		voicebuttoncurrent = voicebutton;
	}
}
var x_temp = get_instance_x(cursor_id);
var y_temp = get_instance_y(cursor_id);
if (x_temp>tmp_xl1 && x_temp<tmp_xl2 && y_temp>tmp_yl1 && y_temp<tmp_yl2){ 	
	if voicebutton == voicebuttoncurrent {
		if voicebutton == 0 || voicebutton == 3 || voicebutton == 6 {
			voicebutton += 1;
		}
	}
}else{
	if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
		voicebutton -= 1;
	}
	voicebuttoncurrent = voicebutton;
}
if voicebutton == 1 || voicebutton == 4 || voicebutton == 7 {
	if menu_a_pressed{
		voicebutton += 1;
		voicebuttoncurrent = voicebutton;
	}	
}
set_synced_var( player, voiced)
draw_sprite_ext(sprite_get("cssvoice_button"), 0+voicebutton, x + tmp_xl, y + tmp_yl, 1, 1, 0, c_white, 1);

var height_offset = round(sin(get_gameplay_time() / 8)) * 2;
var x_off = x + 110;
var y_off = y + 188 + height_offset;
var col = c_white;

// draw_rectangle_color(x_off, y_off - 2, x_off + 29, y_off + 27, col, col, col, col, false);
// draw_sprite_ext(sprite_get("_info_alert"), 0, x_off, y_off, 2, 2, 0, c_white, 1);

// draw_sprite_ext(sprite_get("_info_outline"), 0, x_off-2, y_off-12-height_offset, 2, 2, 0, c_white, sin(get_gameplay_time() / 8) + 1);

// draw_debug_text(round(x+70), round(y+188 + height_offset), "!!! ->")
// draw_debug_text(round(x+70), round(y+186 + height_offset), "!!! ->")





#define rectDraw(x1, y1, width, height, color)
draw_rectangle_color(x1, y1, x1 + width, y1 + height, color, color, color, color, false);
