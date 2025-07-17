if (!is_master_player) exit;

sprite_change_offset("idle", 50, 70);
sprite_change_offset("crouch", 50, 70);
sprite_change_offset("walk", 50, 70);
sprite_change_offset("walkturn", 50, 70);
sprite_change_offset("dash", 50, 70);
sprite_change_offset("dashstart", 50, 70);
sprite_change_offset("dashstop", 50, 70);
sprite_change_offset("dashturn", 50, 70);

sprite_change_offset("jumpstart", 50, 70);
sprite_change_offset("jump", 50, 70);
sprite_change_offset("doublejump", 50, 70);
sprite_change_offset("doublejump_hurt", 100, 140);
sprite_change_offset("walljump", 50, 70);
sprite_change_offset("pratfall", 50, 70);
sprite_change_offset("land", 50, 70);
sprite_change_offset("landinglag", 50, 70);

sprite_change_offset("hurt", 50, 70);
sprite_change_offset("hurtground", 50, 70);
sprite_change_offset("bighurt", 50, 70);
sprite_change_offset("uphurt", 50, 70);
sprite_change_offset("downhurt", 50, 70);
sprite_change_offset("bouncehurt", 50, 70);
sprite_change_offset("spinhurt", 50, 70);

sprite_change_offset("parry", 50, 70);
sprite_change_offset("roll_forward", 50, 70);
sprite_change_offset("roll_backward", 50, 70);
sprite_change_offset("airdodge", 50, 70);
sprite_change_offset("waveland", 50, 70);
sprite_change_offset("tech", 50, 70);

sprite_change_offset("jab", 50, 70);
sprite_change_offset("jab_hurt", 100, 140);
sprite_change_offset("dattack", 50, 70);
sprite_change_offset("dattack_hurt", 100, 140);
sprite_change_offset("ftilt", 50, 70);
sprite_change_offset("ftilt_hurt", 100, 140);
sprite_change_offset("dtilt", 50, 70);
sprite_change_offset("dtilt_hurt", 100, 140);
sprite_change_offset("utilt", 50, 70);
sprite_change_offset("utilt_hurt", 100, 140);
sprite_change_offset("nair", 50, 70);
sprite_change_offset("nair_hurt", 100, 140);
sprite_change_offset("fair", 50, 70);
sprite_change_offset("fair_hurt", 100, 140);
sprite_change_offset("bair", 50, 70);
sprite_change_offset("bair_hurt", 100, 140);
sprite_change_offset("uair", 50, 70);
sprite_change_offset("uair_hurt", 100, 140);
sprite_change_offset("dair", 50, 70);
sprite_change_offset("dair_hurt", 100, 140);
sprite_change_offset("kunai", 100, 140);
sprite_change_offset("fstrong", 50, 70);
sprite_change_offset("fstrong_hurt", 100, 140);
sprite_change_offset("ustrong", 50, 70);
sprite_change_offset("ustrong_hurt", 100, 140);
sprite_change_offset("dstrong", 50, 70);
sprite_change_offset("dstrong_hurt", 100, 140);
sprite_change_offset("nspecial", 50, 70);
sprite_change_offset("nspecial_hurt", 100, 140);
sprite_change_offset("nspecial_beam_start", 50, 70);
sprite_change_offset("nspecial_beam_end", 50, 70);
sprite_change_offset("nspecial_beam_loop", 50, 70);
sprite_change_offset("nspecial_beam_fade", 50, 70);
sprite_change_offset("vfx_nspecial_fire", 50, 70);
sprite_change_offset("vfx_ftilt_destroy", 50, 70); // actually for nspecial, not ftilt
sprite_change_offset("fspecial", 50, 70);
sprite_change_offset("fspecial_hurt", 100, 140);
sprite_change_offset("uspecial", 50, 70);
sprite_change_offset("uspecial_hurt", 100, 140);
sprite_change_offset("dspecial", 50, 70);
sprite_change_offset("dspecial_hurt", 100, 140);
sprite_change_offset("taunt", 50, 70);
sprite_change_offset("taunt_sexyjutsu_male", 50, 70);
sprite_change_offset("taunt_sexyjutsu_female", 50, 70);
sprite_change_offset("taunt_sexyjutsu_custom", 50, 70);
sprite_change_offset("phone_open", 50, 70);

sprite_change_offset("hurtbox", 50, 70);
sprite_change_offset("plat", 50, 70);

sprite_change_offset("nspecial_clone", 50, 70);
sprite_change_offset("ustrong_clone", 50, 70);
sprite_change_offset("nspecial_proj", 50, 70);
sprite_change_offset("vfx_rasengan", 100, 100);
sprite_change_offset("vfx_rasenganfire", 50, 70);
sprite_change_offset("vfx_rasengancharge", 50, 70);
sprite_change_offset("kunai", 50, 70);

sprite_change_offset("vfx_log", 50, 70);
sprite_change_offset("vfx_smoke", 50, 70);
sprite_change_offset("ustrong_clone_vfx", 50, 70);

sprite_change_offset("hud_default_hud", 0, -2);
sprite_change_offset("hud_alt1_hud", 0, -2);
sprite_change_offset("hud_default_hurt", 0, -2);
sprite_change_offset("hud_alt1_hurt", 0, -2);
sprite_change_offset("hud_default_offscreen", 16, 18);
sprite_change_offset("hud_alt1_offscreen", 16, 18);
var alt_clr = get_player_color("online_css" in self ? 0 : player);
if get_player_color(player) == 0 {
	set_ui_element(UI_HUD_ICON, sprite_get("hud_default_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_default_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_default_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_default_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_default_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_default_portrait"));
}else{
	set_ui_element(UI_HUD_ICON, sprite_get("hud_alt1_hud"));
	set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_alt1_hurt"));
	set_ui_element(UI_OFFSCREEN, sprite_get("hud_alt1_offscreen"));
	set_ui_element(UI_CHARSELECT, sprite_get("hud_alt1_charselect"));
	set_ui_element(UI_WIN_SIDEBAR, sprite_get("hud_alt1_result_small"));
	set_ui_element(UI_WIN_PORTRAIT, sprite_get("hud_alt1_portrait"));
}