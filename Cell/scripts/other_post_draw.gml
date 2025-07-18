if !("goku_ability_id" in self && goku_ability_id == other_player_id && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3){
	exit;
}

var phone_window_end = floor(get_window_value(attack, window, AG_WINDOW_LENGTH) * ((get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG) && !has_hit) ? 1.5 : 1));

if window == clamp(window, 4, 6){
	if beam_clash_buddy != noone && state_timer % 60 < 30{
		textDraw(x, y + 16, "fName", c_white, 100, 1000, fa_center, 1, true, 1, "Mash Special!!", false);
	}
	
	var spr1;
	var spr2;
	var spr3;
	
	with other_player_id{
		var spr1 = sprite_get("nspecial_beam_start");
		var spr2 = sprite_get("nspecial_beam_loop");
		var spr3 = sprite_get("nspecial_beam_end");
	}
	
	var length = beam_length;
	var strength = clamp(floor(beam_juice / 50), 0, 2);
	var frame = state_timer % 6 < 3;
	var angle = beam_angle;
	
	var x1 = x + 72 * spr_dir;
	var y1 = y - 26 + lengthdir_y(32, angle);
	
	switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
		case 1: // down
			x1 = x + 74 * spr_dir;
			y1 = y - 6;
			break;
		case -1: // up
			x1 = x + 60 * spr_dir;
			y1 = y - 72;
			break;
	}
	
	var cur_x = x1;
	var cur_y = y1;
	
	var ld_x = lengthdir_x(32, angle);
	var ld_y = lengthdir_y(32, angle);
	
	for (var i = 0; i * 32 < length && cur_x == clamp(cur_x, 0, room_width); i++){
		draw_sprite_ext(spr2, strength * 8 + ((i + state_timer) % 8), cur_x, cur_y, 1, 1, angle, c_white, 1);
		cur_x += ld_x;
		cur_y += ld_y;
	}
	// draw_sprite_part_ext(spr2, strength, 0, 0, length / 2, 128, x1, y1 - 64, spr_dir * 2, 1, c_white, 1);
	draw_sprite_ext(spr1, strength * 2 + frame, x1, y1, 1, 1, angle, c_white, 1);
	draw_sprite_ext(spr3, strength * 2 + frame, x1 + lengthdir_x(length, angle), y1 + lengthdir_y(length, angle), 1, 1, angle, c_white, 1);
}
else if window == 7{
	
	var spr4;
	
	with other_player_id{
		var spr4 = sprite_get("nspecial_beam_fade");
	}
	
	var x1 = x + 72 * spr_dir;
	var y1 = y - 26 + lengthdir_y(32, beam_angle);
	
	switch((abs(lengthdir_y(1, beam_angle)) > abs(lengthdir_y(1, 15))) * sign(lengthdir_y(1, beam_angle))){
		case 1: // down
			x1 = x + 74 * spr_dir;
			y1 = y - 6;
			break;
		case -1: // up
			x1 = x + 60 * spr_dir;
			y1 = y - 72;
			break;
	}
	
	var length = beam_length / 2;
	var frame = min(floor(6 * window_timer / phone_window_end), 5);
	var angle = beam_angle;
	
	x1 -= lengthdir_x(40, angle)
	y1 -= lengthdir_y(40, angle)
	
	draw_sprite_ext(spr4, frame, x1, y1, length, 1, angle, c_white, 1)
}



#define textDraw(x1, y1, font, color, lineb, linew, align, scale, outline, alpha, text, array_bool)

draw_set_font(asset_get(font));
draw_set_halign(align);

if outline {
    for (i = -1; i < 2; i++) {
        for (j = -1; j < 2; j++) {
            draw_text_ext_transformed_color(x1 + i * 2, y1 + j * 2, text, lineb, linew, scale, scale, 0, c_black, c_black, c_black, c_black, alpha);
        }
    }
}

if alpha draw_text_ext_transformed_color(x1, y1, text, lineb, linew, scale, scale, 0, color, color, color, color, alpha);

if array_bool return [string_width_ext(text, lineb, linew), string_height_ext(text, lineb, linew)];
else return;