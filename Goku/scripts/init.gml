/*
 * The stats below are taken from Zetterburn, replacing Sandbert's overpowered
 * movement stats. The ATTACKS are still in their overpowered form in this
 * template, so be sure to make the ones for your character weaker.
 * 
 * Base Cast Frame Data:
 * docs.google.com/spreadsheets/d/19UtK7xG2c-ehxdlhCFKMpM4_IHSG-EXFgXLJaunE79I
 */

// STAT NAME		ZETTER VALUE   BASECAST RANGE   NOTES

// Physical size
char_height         = 56;       //                  not zetterburn's. this is just cosmetic anyway
knockback_adj       = 1;		// 0.9  -  1.2

// Ground movement
walk_speed          = 3.25;		// 3    -  4.5
walk_accel          = 0.2;		// 0.2  -  0.5
walk_turn_time      = 6;	    // 6
initial_dash_time   = 10;		// 8    -  16
initial_dash_speed  = 7;		// 4    -  9
dash_speed          = 6.5;		// 5    -  9
dash_turn_time      = 8;		// 8    -  20
dash_turn_accel     = 1.5;		// 0.1  -  2
dash_stop_time      = 6;		// 4    -  6
dash_stop_percent   = 0.35;		// 0.25 -  0.5
ground_friction     = 0.5;		// 0.3  -  1
moonwalk_accel      = 1.3;		// 1.2  -  1.4
    
// Air movement
leave_ground_max    = 6;		// 4    -  8
max_jump_hsp        = 6;		// 4    -  8
air_max_speed       = 5;  		// 3    -  7		prepatch: 4
jump_change         = 3;		// 3
air_accel           = 0.3;		// 0.2  -  0.4
prat_fall_accel     = 0.85;		// 0.25 -  1.5
air_friction        = 0.04;		// 0.02 -  0.07
max_fall            = 9;		// 6    -  11
fast_fall           = 13;		// 11   -  16
gravity_speed       = 0.55;		// 0.3  -  0.6
hitstun_grav        = 0.5;		// 0.45 -  0.53

// Jumps
jump_start_time     = 5;		// 5                this stat is automatically decreased by 1 after init.gml (dan moment), so its "real value" is 4. if you change this during a match, 4 is the value you should reset it to
jump_speed          = 11;		// 7.6  -  12       okay, zetter's is actually 10.99 but... come on
short_hop_speed     = 6;		// 4    -  7.4
djump_speed         = 11;		// 6    -  12       absa's is -1 because of her floaty djump
djump_accel         = 0;        // -1.4 -  0        absa's is -1.4, all other chars are 0. only works if the   djump_accel_end_time   variable is also set. floaty djumps should be adjusted by feel based on your char's gravity
djump_accel_end_time= 0;        //                  the amount of time that   djump_accel   is applied for
max_djumps          = 1;		// 0    -  3        the 0 is elliana because she has hover instead
walljump_hsp        = 7;		// 4    -  7
walljump_vsp        = 8;		// 7    -  10
land_time           = 4;		// 4    -  6
prat_land_time      = 24;		// 3    -  24       zetterburn's is 3, but that's ONLY because his uspecial is so slow. safer up b (or other move) = longer pratland time to compensate

// Shield-button actions
wave_friction       = 0.15;		// 0    -  0.15
roll_forward_max    = 9;        // 9    -  11
roll_backward_max   = 9;        // 9    -  11       always the same as forward
wave_land_time      = 12;		// 6    -  12
wave_land_adj       = 1.2;		// 1.2  -  1.5      idk what zetterburn's is
air_dodge_speed     = 7.5;      // 7.5  -  8
techroll_speed      = 10;       // 8    -  11



// Character-specific assets init

//Sprites
spr_nspecial_proj = sprite_get("nspecial_proj");
spr_example = sprite_get("example"); // sprites/example_stripX.png

// SFX
sfx_dbfz_charge = sound_get("ARC_BTL_CMN_Charge_Start");

sfx_dbfz_elbow = sound_get("ARC_BTL_GKN_HeavyElbow_A");
sfx_dbfz_elbow_start = sound_get("ARC_BTL_GKN_HeavyElbow_Basa");

sfx_dbfz_hit_weak = sound_get("ARC_BTL_CMN_Hit_Small-A");
sfx_dbfz_hit_medium = sound_get("ARC_BTL_CMN_Hit_Midle-A");
sfx_dbfz_hit_strong = sound_get("ARC_BTL_CMN_Hit_Large-A");
sfx_dbfz_hit_broken = sound_get("ARC_BTL_CMN_Hit_XLarge");
sfx_dbfz_hit_kidan = sound_get("ARC_BTL_CMN_Hit_kidan");
sfx_dbfz_hit_jab3 = sound_get("ARC_BTL_GKN_Atk5A_3rd_Hit");

sfx_dbfz_kame_charge = sound_get("ARC_BTL_GKN_Kamehame_Chrg");
sfx_dbfz_kame_fire = sound_get("ARC_BTL_GKN_Kamehame_Fire");

sfx_dbfz_kidan_charge = sound_get("ARC_BTL_CMN_kidan_Chrg");
sfx_dbfz_kidan_fire = sound_get("ARC_BTL_CMN_kidan_Fire1");

sfx_dbfz_sbomb_fire = sound_get("ARC_BTL_GKN_Gnkdm_Fire");
sfx_dbfz_sbomb_hit = sound_get("ARC_BTL_GKN_Gnkdm_Hit");
sfx_dbfz_sbomb_impact = sound_get("ARC_BTL_GKN_Gnkdm_Impct");

sfx_dbfz_swipe_weak1 = sound_get("ARC_BTL_CMN_Furi_Hook");
sfx_dbfz_swipe_weak2 = sound_get("ARC_BTL_CMN_Furi_Short-A");
sfx_dbfz_swipe_medium1 = sound_get("ARC_BTL_CMN_Furi_Hiji");
sfx_dbfz_swipe_medium2 = sound_get("ARC_BTL_CMN_Furi_Keri");
sfx_dbfz_swipe_heavy1 = sound_get("ARC_BTL_CMN_Furi_YokoKeri");
sfx_drip = sound_get("drip");

sfx_dbfz_superdash = sound_get("ARC_BTL_CMN_homingdash");

sfx_dbfz_teleport = sound_get("ARC_BTL_CMN_TLP_Short");
sfx_dbfz_teleport_end = sound_get("ARC_BTL_CMN_TLP_End");

// VFX
if get_player_color(player) == 0{
	vfx_afterimage = hit_fx_create(sprite_get("vfx_afterimage_alt0"), 24);
	vfx_afterimage_ssj1 = hit_fx_create(sprite_get("vfx_afterimage_ssj1_alt0"), 24);
	vfx_afterimage_ssj3 = hit_fx_create(sprite_get("vfx_afterimage_ssj3_alt0"), 24);
}else{
	vfx_afterimage = hit_fx_create(sprite_get("vfx_afterimage"), 24);
	vfx_afterimage_ssj1 = hit_fx_create(sprite_get("vfx_afterimage_ssj1"), 24);
	vfx_afterimage_ssj3 = hit_fx_create(sprite_get("vfx_afterimage_ssj3"), 24);
}
vfx_ftilt_destroy = hit_fx_create(sprite_get("vfx_ftilt_destroy"), 12);
vfx_utilt_spawn = hit_fx_create(sprite_get("vfx_utilt_spawn"), 16);
vfx_nspecial_fire = hit_fx_create(sprite_get("vfx_nspecial_fire"), 16);
vfx_kaioken_start = hit_fx_create(sprite_get("vfx_kaioken_start"), 24);
vfx_ssj_start = hit_fx_create(sprite_get("vfx_ssj_start"), 24);
vfx_ssj3_lightning = hit_fx_create(sprite_get("vfx_ssj3_lightning"), 24);

// Variables
small_sprites = true;
aerial_pratfall_timer = 0; // uspecial
uspecial_can_target = true;
funny_broken_mode = false;

ki = 0;
ki_max = 1000;
ki_meter = 0; // visible amt, lerps to ki

meter_full_alpha = 0;
meter_full_splash_timer = 0;

kaioken = 0; // holds the value of what the meter WILL be after kaioken
kaioken_add = 400;
kaioken_recoil_tick = 0; // ticks up to manage recoil dmg

var alt_cur = get_player_color(player);
original_palette = [];

for (var i = 0; i < 8; i++){
	original_palette[i] = make_color_rgb(
	    get_color_profile_slot_r(alt_cur, i),
	    get_color_profile_slot_g(alt_cur, i),
	    get_color_profile_slot_b(alt_cur, i)
	    );
}

blue_color = original_palette[0]

var hair = [
	make_color_rgb(
		color_get_blue(original_palette[3]),
		color_get_green(original_palette[3]),
		color_get_red(original_palette[3])
		),
	make_color_rgb(
		color_get_blue(original_palette[5]),
		color_get_green(original_palette[5]),
		color_get_red(original_palette[5])
		)];

// initSsj(id, name, hairstyle, color, color_dark)
// hair: 0 normal, 1 ssj1, 2 ssj3
// colors are in hex RGB
ssjs = [];
SSJ_NONE			= initSsj(0, "Base",				0, hair[0], hair[1]);
if get_player_color(player) == 16{
	SSJ_1	    		= initSsj(1, "Super Saiyan 1",		1, $ff8cc0, $CD3277);
	SSJ_3	    		= initSsj(2, "Super Saiyan 3",		2, $ff8cc0, $CD3277);
	SSJ_GOD	    		= initSsj(3, "Super Saiyan God",	0, $ff3c7d, $ff3c7d);
	SSJ_BLUE    		= initSsj(4, "Super Saiyan Blue",	1, $54edf9, $54edf9);
	SSJ_UI      		= initSsj(5, "Ultra Instinct",		0, $c1dfe7, $c1dfe7);
	SSJ_ROSE      		= initSsj(6, "Super Saiyan Rosé",	1, $ff8cc0, $CD3277);
}else if get_player_color(player) == 19{
	SSJ_1	    		= initSsj(1, "Super Saiyan 1",		1, $FFFFFF, $FFFFFF);
	SSJ_3	    		= initSsj(2, "Super Saiyan 3",		2, $FFFFFF, $FFFFFF);
	SSJ_GOD	    		= initSsj(3, "Super Saiyan God",	0, $A6A6A6, $A6A6A6);
	SSJ_BLUE    		= initSsj(4, "Super Saiyan Blue",	1, $A6A6A6, $A6A6A6);
	SSJ_UI      		= initSsj(5, "Ultra Instinct",		0, $FFFFFF, $FFFFFF);
	SSJ_ROSE      		= initSsj(6, "Super Saiyan Rosé",	1, $FFFFFF, $FFFFFF);
}else if get_player_color(player) == 20{
	SSJ_1	    		= initSsj(1, "Super Saiyan 1",		1, $D3E29A, $D3E29A);
	SSJ_3	    		= initSsj(2, "Super Saiyan 3",		2, $D3E29A, $D3E29A);
	SSJ_GOD	    		= initSsj(3, "Super Saiyan God",	0, $A7BA4A, $A7BA4A);
	SSJ_BLUE    		= initSsj(4, "Super Saiyan Blue",	1, $A7BA4A, $A7BA4A);
	SSJ_UI      		= initSsj(5, "Ultra Instinct",		0, $D3E29A, $D3E29A);
	SSJ_ROSE      		= initSsj(6, "Super Saiyan Rosé",	1, $D3E29A, $D3E29A);
}else{
	SSJ_1	    		= initSsj(1, "Super Saiyan 1",		1, $FFCF3F, $CD9B00);
	SSJ_3	    		= initSsj(2, "Super Saiyan 3",		2, $FFCF3F, $CD9B00);
	SSJ_GOD	    		= initSsj(3, "Super Saiyan God",	0, $ff3c7d, $C00035);
	SSJ_BLUE    		= initSsj(4, "Super Saiyan Blue",	1, $4CE1FF, $009DB4);
	SSJ_UI      		= initSsj(5, "Ultra Instinct",		0, $d5e3e7, $5696A8);
	SSJ_ROSE      		= initSsj(6, "Super Saiyan Rosé",	1, $FF8CC0, $CD3277);
}

ssj = SSJ_NONE;
was_ssj = 0;

kaioken_red_light = $8493ff;
kaioken_red_dark = $181eff;

has_goku_beam = true; // TEMP; will be in phone
doing_goku_beam = false; // TEMP; will be in phone
beam_newest_hbox = noone; // TEMP; will be in phone

current_sprite_set = 0;
num_sprite_sets = 3;

voice_playing_sound = noone;

VC_NONE = 0;
VC_EN = 1;
VC_JP = 2;

voice = VC_NONE;

if (get_synced_var( player ) == 0) {
	voice = VC_NONE;
}
if (get_synced_var( player ) == 1) {
	voice = VC_EN;
}
if (get_synced_var( player ) == 2) {
	voice = VC_JP;
}

checked_sprite_names = [
    "idle", 
    "crouch", 
    "walk", 
    "walkturn", 
    "dash", 
    "dashstart", 
    "dashstop", 
    "dashturn", 
    
    "hurt",
    "hurtground",
    "bighurt",
    "uphurt",
    "downhurt",
    "bouncehurt",
    "spinhurt", 
    
    "jumpstart", 
    "jump", 
    "doublejump", 
    "walljump", 
    "pratfall", 
    "land", 
    "landinglag", 
    
    "parry", 
    "roll_forward", 
    "roll_backward", 
    "airdodge", 
    "waveland", 
    "tech", 
    
    "jab", 
    "dattack", 
    "ftilt", 
    "dtilt", 
    "utilt", 
    "nair", 
    "fair", 
    "bair", 
    "uair", 
    "dair", 
    "fstrong", 
    "ustrong", 
    "dstrong", 
    "nspecial", 
    "nspecial_air", 
    "fspecial", 
    "uspecial", 
    "dspecial", 
    "taunt",
	"tauntdrip",
    
    "phone_open",
    "intro",
    ];

var a = 0;

VB_ATK_SMALL = 		2;
VB_ATK_MED = 		3;
VB_ATK_BIG = 		5;
VB_ATK_HUGE = 		7;
VB_DEATH = 			11;
VB_KAIOKEN = 		13;
VB_SPIRIT_BOMB = 	17;
VB_HURT = 			19;
VB_METER_FULL = 	23;
VB_TAUNT = 			29;
VB_KAMEHAME =		31;
VB_HA = 			37;
VB_S_SPIRIT_BOMB =	41;

vb_idxes = [
	VB_ATK_SMALL,
	VB_ATK_MED,
	VB_ATK_BIG,
	VB_ATK_HUGE,
	VB_DEATH,
	VB_KAIOKEN,
	VB_SPIRIT_BOMB,
	VB_HURT,
	VB_METER_FULL,
	VB_TAUNT,
	VB_KAMEHAME,
	VB_HA,
	VB_S_SPIRIT_BOMB,
	]

vbs = [];

vbs[VB_ATK_SMALL] = [
	noone,
	noone,
	noone,
	100,
	101,
	103,
	106,
	124,
	125,
	215,
	];
vbs[VB_ATK_MED] = [
	noone,
	noone,
	noone,
	107,
	109,
	126,
	205,
	220,
	606,
	607,
	];
vbs[VB_ATK_BIG] = [
	noone,
	noone,
	noone,
	102,
	104,
	105,
	204,
	216,
	217,
	219,
	604,
	]
vbs[VB_ATK_HUGE] = [
	noone,
	noone,
	noone,
	110,
	111,
	118,
	134,
	201,
	214,
	609,
	]
vbs[VB_DEATH] = [
	noone,
	noone,
	noone,
	noone,
	noone,
	006,
	007,
	008,
	009,
	010,
	011,
	012,
	013,
	014,
	015,
	016,
	017,
	018,
	019,
	020,
	022,
	031,
	]
vbs[VB_KAIOKEN] = [
	noone,
	211,
	211,
	211,
	212,
	]
vbs[VB_SPIRIT_BOMB] = [
	noone,
	210,
	]
vbs[VB_HURT] = [
	noone,
	noone,
	noone,
	noone,
	000,
	001,
	002,
	003,
	004,
	005,
	]
vbs[VB_METER_FULL] = [
	noone,
	209,
	]
vbs[VB_TAUNT] = [
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	noone,
	128,
	200,
	400,
	403,
	500,
	507,
	600,
	601,
	]
vbs[VB_KAMEHAME] = [ // NOTE: these are actually from dbfz *ssj* goku.
	998,
	999,
	]
vbs[VB_HA] = [
	612,
	614,
	]
vbs[VB_S_SPIRIT_BOMB] = [
	210,
	210,
	]

swallowed = 0;
kirbyability = 16;

fs_char_portrait_y = 86;
fs_char_chosen_final_smash = "custom";
fs_meter_x = 40;
fs_meter_y = -28;



// Animation Info

// Misc. animation speeds
idle_anim_speed     = 0.15;
crouch_anim_speed   = 0.1;
walk_anim_speed     = 0.175;
dash_anim_speed     = 0.2;
pratfall_anim_speed = 0.25;

// Jumps
double_jump_time    = 40;		// 24   -  40
walljump_time       = 32;		// 18   -  32
wall_frames         = 2;		// may or may not actually work... dan pls

// Parry
dodge_startup_frames    = 1;
dodge_active_frames     = 2;
dodge_recovery_frames   = 3;

// Tech
tech_active_frames      = 2;
tech_recovery_frames    = 2;

// Tech roll
techroll_startup_frames     = 2;
techroll_active_frames      = 1;
techroll_recovery_frames    = 2;

// Airdodge
air_dodge_startup_frames    = 1;
air_dodge_active_frames     = 1;
air_dodge_recovery_frames   = 2;

// Roll
roll_forward_startup_frames     = 2;
roll_forward_active_frames      = 1;
roll_forward_recovery_frames    = 2;
roll_back_startup_frames        = 2;
roll_back_active_frames         = 1;
roll_back_recovery_frames       = 2;

// Crouch
crouch_startup_frames   = 2;
crouch_active_frames    = 1;
crouch_recovery_frames  = 2;

/*

Muno's Words of Wisdom: Due to a Certified Dan Moment, you must duplicate the
last frame of your crouch animation. So like, if your animation has 10 frames
total, add an 11th that's the copy of the 10th. You do NOT include this 11th
frame in the crouch_recovery_frames or etc; configure these values AS IF there
were only 10 frames.

The reason for this is that otherwise, the crouch just glitches out at the end
of the standing-up animation. Dan Moment

*/



// Hurtbox sprites
hurtbox_spr         = asset_get("ex_guy_hurt_box");
crouchbox_spr       = asset_get("ex_guy_crouch_box");
air_hurtbox_spr     = -1; // -1 = use hurtbox_spr
hitstun_hurtbox_spr = -1; // -1 = use hurtbox_spr

// Victory
set_victory_bg(sprite_get("victory"));
set_victory_theme(sound_get("win_goku"));

// Movement SFX
land_sound          = asset_get("sfx_land_light");
landing_lag_sound   = asset_get("sfx_land_med");
waveland_sound      = asset_get("sfx_waveland_ran"); // recommended to try out all 14 base cast wavedash sfx (see sfx page in roa manual)
jump_sound          = asset_get("sfx_jumpground");
djump_sound         = asset_get("sfx_jumpair");
air_dodge_sound     = asset_get("sfx_quick_dodge");

// Visual offsets for when you're in Ranno's bubble
bubble_x = 0;
bubble_y = 8;



muno_event_type = 0;
user_event(14);







//Pac Man
Namco_Taunt = sprite_get("Pacman_Goku")
Namco_Taunt_Sound = sound_get("pacman_sound")

//Snake interigations

sna_interrogated_line_01 = "‘Rumble’ hehe, sorry I forgot to eat lunch.";
sna_interrogated_line_02 = "Lighten up, your expression reminds me of Vegeta.";
sna_interrogated_line_03 = "Hey, do you know a guy named Tao?";

// Agent N Codecs

nname = "Goku"

ncode1 = "A saiyan raised on earth. Goku is one of the strongest"
ncode2 = "beings recorded. He has bested the likes of Buu, Frieza,"
ncode3 = "and jiren. If encountered, do not engage."

// Amber
plushForAmber = sprite_get("Goku_plush");

//Toon Link
toonlink_photo = sprite_get("Goku_link_photo");
toonlink_photo2 = 4

//So Sorry
sorry_art = sprite_get("Goku_So_Sorry");

//Loadent
ltweet = sprite_get("ltweet");

//The Chosen One
tcoart = sprite_get("TCO_Goku");

//Miiverse
miiverse_post = sprite_get("Goku_miiverse");

//Mamizou futatsuiwa

mamizou_transform_spr = sprite_get("Goku_tanooki");

// Wall-E

walle_taunt_sound = sound_get("Cha_la_head_cha_la")
walle_taunt_type = [1]

// Mt Dedede

arena_title = "The Saiyan, raised on earth";

//Boxing arena

boxing_title = "Tenkaichi Champion";

//Soulbound Conflict

battle_text = "* Goku, is gonna show you!";

//Hikaru title

Hikaru_Title = "super saiyan";

// Henry stickmin fail

has_fail = true;
fail_text = "Who do you think you are beerus?";

//Wall-E Taunt

walle_taunt_sound = sound_get("Cha_la_head_cha_la")
walle_taunt_type = 1

//Trial Grounds

guiltySprite = sprite_get("goku")

//Pokemon stadium

pkmn_stadium_front_img = sprite_get("Goku_pokemon_stadium_front_grey")
pkmn_stadium_back_img = sprite_get("Goku_pokemon_stadium_Back_grey")

//Wily Castle
wily_robotmaster_img = sprite_get("Goku_Megaman");
 
 //Green flower zone
gfzsignspr = sprite_get("DragonBoard")
gfzsignsfx = sound_get("goku_signpost_fx")

//Last resort

resort_portrait = sprite_get("gohan")

//ttyd stage

ttyd_audience_sprite = sprite_get("chi_chi")

//Feri

feri_costume = sprite_get("Feri_goku");

//demopan

object = sprite_get("demo-pan-goku");

//po and gumbo

pot_compat_variable = sprite_get("goku_rice");
pot_compat_text = "Chi-Chi's home cooked rice."

//Naruto
naruto_sexyjutsu_sprite = sprite_get("Goku_naruto_taunt");

//Spamton
spam_ad = sprite_get("Goku_spamton")

//Unregistered Hypercam
 uhc_victory_quote = "toop 1o resons gok is week (1 y e i s nt ";
 uhc_victory_quote = "Whatch draagon bal fweee cick now!:0 :0 ! ! !";

 uhc_taunt_videos[0] = { title:"Dragon ball z intro", sprite:sprite_get("Goku_hyper_Gif"), song:sound_get("Goku_hypercam"), fps:7 }; 

//Moonchild
childsupport = 1;

//Dracula support
dracula_portrait = sprite_get("Goku1");
dracula_portrait2 = sprite_get("Goku2");
dracula_portrait3 = sprite_get("Goku3");
dracula_portrait4 = sprite_get("Goku4");
dracula_portrait5 = sprite_get("Goku5");
var page = 0;

//Page 0
dracula_speaker[0] = 1;
dracula_text[0] = "Yo, are you that dracula guy?";
page++;

//Page 1
dracula_speaker[1] = 0;
dracula_text[1] = "[shake] who dares enter my castle without my permission?!";
page++;

//page 2

dracula_speaker[2] = 4;
dracula_text[2] = "Hi i'm goku.";
page++;

//Page 3
dracula_speaker[3] = 0;
dracula_text[3] = "Hm, goku was it?";
page++;

//Page 4
dracula_speaker[4] = 4;
dracula_text[4] = "Yep";
page++;

//Page 5
dracula_speaker[5] = 0;
dracula_text[5] = "I have heard tales of your exploits Saiyan.";
page++;

//Page 6
dracula_speaker[6] = 0;
dracula_text[6] = "The stories claim you are a powerful warrior, but looking at you now, I question their accuracy.";
page++;

//page 7

dracula_speaker[7] = 1;
dracula_text[7] = "Heh, well i'm game if you wanna test it.";
page++;

//page 8
dracula_speaker[8] = 1;
dracula_text[8] = "That village outside said you were really strong.";
page++;

//page 9
dracula_speaker[9] = 4;
dracula_text[9] = "As soon as I heard that I knew I had to ask for a spar.";
page++;

//page 10
dracula_speaker[10] = 0;
dracula_text[10] = "A spar? HAH, [shake] I do not SPAR Son goku I feast, now be gone I have no need of a clown.";
page++;

//page 11
dracula_speaker[11] = 5;
dracula_text[11] = "Aw, are you sure? Well at least I can get a good meal at the village.";
page++;

//page 12
dracula_speaker[12] = 0;
dracula_text[12] = "Hm? Ah, yes they will have to be punished for this insult.";
page++;

//page 13
dracula_speaker[13] = 1;
dracula_text[13] = "...";
page++;

//page 14
dracula_speaker[14] = 2;
dracula_text[14] = "Punished?";
page++;

//page 15
dracula_speaker[15] = 0;
dracula_text[15] = "Yes, afterall when slaves rebel against their superiors they must be taught a lesson.";
page++;

//page 16
dracula_speaker[16] = 0;
dracula_text[16] = "Feasting on a few children should be punishment enough.";
page++;

//page 17
dracula_speaker[17] = 2;
dracula_text[17] = "...";
page++;

//page 18
dracula_speaker[18] = 0;
dracula_text[18] = "Don't tell me you object? I had heard you cared only for battle. Surely you don't believe yourself to be some hero?";
page++;

//page 19
dracula_speaker[19] = 2;
dracula_text[19] = "I'm no hero, but I won't let those villagers pay for my mistake.";
page++;

//page 20
dracula_speaker[20] = 3;
dracula_text[20] = "If your gonna hurt them i'll stop you!";
page++;

//page 21
dracula_speaker[21] = 0;
dracula_text[21] = "Hah! [shake] Then I suppose we will do battle after all. [glass]";
page++;

//page 22
dracula_speaker[22] = 0;
dracula_text[22] = "let us see if you have the power Saiyan!";
page++;

//Pit
user_event(7)

// misc

set_ui_element(UI_HUD_ICON, sprite_get("hud_base"));
set_ui_element(UI_HUDHURT_ICON, sprite_get("hudhurt_base"));
set_ui_element(UI_OFFSCREEN, sprite_get("offscreen_base"));

naruto_sexyjutsu_sprite = sprite_get("taunt_sexyjutsu_custom");

#define initSsj(num, name, hairstyle, color, color_dark)

ssjs[num] = {
	name: name,
	hairstyle: hairstyle,
	color: make_color_rgb(color_get_blue(color), color_get_green(color), color_get_red(color)),
	color_dark: make_color_rgb(color_get_blue(color_dark), color_get_green(color_dark), color_get_red(color_dark))
};

return num;