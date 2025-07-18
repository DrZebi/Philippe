// Hurtbox sprites
hurtbox_spr         = sprite_get("hurtbox");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory_background")); // victory_background.png
set_victory_theme(sound_get("victory_theme")); // victory_theme.ogg

// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_nspecial_charge = sprite_get("vfx_rasengancharge");
spr_nspecial_fire = sprite_get("vfx_rasenganfire");
spr_empty_pixel = sprite_get("empty_pixel");

// SFX
sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");
sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");
sfx_enhanced_teamup = noone; //sound that plays when naruto 'teams up' with an existing clone

// VFX
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12); // actually for nspecial, not ftilt
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);
vfx_clone_smoke = hit_fx_create(sprite_get("vfx_smoke"), 18);
vfx_ustrong_ground_erupt = hit_fx_create(sprite_get("ustrong_clone_vfx"), 18);
vfx_log = hit_fx_create(sprite_get("vfx_log"), 15);

vfx_enhanced_teamup = 194; //visual fx that appears when naruto 'teams up' with an existing clone
enhanced_teamup_effect_y_offset = -30; //offset for the above visual fx
