

is_ai = true;
// ai_draw = ds_list_create();
ai_mode = "neutral"
ai_main_script = "main";
ai_current_script = ai_main_script;
ai_script_execution_frame = 0;
ai_script_timeout = 180;

xdist = 0
delay_time = 0
offstage = 0;
near_stage_wall = 0;
near_stage_ledge = 0;
hurtboxWidth = 0;
ai_target_offstage = 0;
tgt_teching = 0
time_recovering = 0
times_tried_to_parry = 0
tried_to_parry = false
attacking = false

solid_asset = asset_get("par_block");
platform_asset = asset_get("par_jumpthrough");

short_hop_height = noone;
short_hop_vert_time = noone;
jump_height = noone;
jump_vert_time = noone;
djump_height = noone;
djump_vert_time = noone;
jump_data_obtained = false;

ct = 0;

ai_debug_pin = false;
ai_debug_pin_x = 0;
ai_debug_pin_y = 0;
ai_debug_pin_timeout = 20;
ai_debug_pin_damage = 50;
ai_debug_pin_timer = 0;

var this_dattack = master_player_id.c_naruto_attack_index_array[AT_DATTACK, naruto_attack_group_index];
var this_bair = master_player_id.c_naruto_attack_index_array[AT_BAIR, naruto_attack_group_index];
var this_dair = master_player_id.c_naruto_attack_index_array[AT_DAIR, naruto_attack_group_index];
var this_uair = master_player_id.c_naruto_attack_index_array[AT_UAIR, naruto_attack_group_index];
var this_fair = master_player_id.c_naruto_attack_index_array[AT_FAIR, naruto_attack_group_index];
var this_nair = master_player_id.c_naruto_attack_index_array[AT_NAIR, naruto_attack_group_index];
var this_utilt = master_player_id.c_naruto_attack_index_array[AT_UTILT, naruto_attack_group_index];
var this_ftilt = master_player_id.c_naruto_attack_index_array[AT_FTILT, naruto_attack_group_index];
var this_dtilt = master_player_id.c_naruto_attack_index_array[AT_DTILT, naruto_attack_group_index];
var this_jab = master_player_id.c_naruto_attack_index_array[AT_JAB, naruto_attack_group_index];
var this_fstrong = master_player_id.c_naruto_attack_index_array[AT_FSTRONG, naruto_attack_group_index];

ai_attacks = [
  [this_dattack, [1, 2, 3, 4, 5, 6, 7, 8]],
  [this_uair, [1]],
  [this_fair, [1]],
  [this_nair, [1, 2]],
  [this_dair, [1]],
  [this_bair, [1]],
  [this_utilt, [1]],
  [this_ftilt, [1]],
  [this_dtilt, [1, 2]],
  [this_jab, [1, 2]], 
  [this_fstrong, [1]],
  [AT_USTRONG, [1]],
  [AT_DSTRONG, [2, 1, 3, 4]],
];
if("ai_attacks" not in self) ai_attacks = []
is_dspecial_clone = false

print("it ran ai nit")

ai_attack_data = [];
attack_data_obtained = false;
lastOPos = noone;
estOPos = noone;

stagex = get_stage_data(SD_X_POS);
stage_width = get_stage_data(SD_WIDTH);
stagey = get_stage_data(SD_Y_POS);
stage_center = stagex + stage_width/2
stage_left = stagex
stage_right = stage_left + stage_width

bblastzone = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
lblastzone = get_stage_data(SD_LEFT_BLASTZONE_X);
rblastzone = get_stage_data(SD_RIGHT_BLASTZONE_X);
tblastzone = get_stage_data(SD_TOP_BLASTZONE_Y);

chosenAttack = noone;

nspecial_hits = false

if (!custom_clone) {

  //Naruto AI.
  // far_down_attacks = [AT_DAIR, AT_DAIR, AT_DTILT, AT_NAIR, AT_NAIR, AT_USPECIAL];
  
  far_side_attacks = [AT_NSPECIAL, AT_FSPECIAL];
  mid_side_attacks = [AT_NSPECIAL];
  // mid_side_attacks = [AT_JAB, AT_FTILT, AT_FSTRONG];
  
  // close_up_attacks = [AT_JAB, AT_UAIR, AT_UAIR, AT_USTRONG];
  
  // close_down_attacks = [AT_DTILT, AT_DAIR, AT_NAIR];
  
  // close_side_attacks = [AT_NAIR];
  
  // neutral_attacks = [AT_NSPECIAL, AT_DSPECIAL, AT_DSPECIAL];
  
  
}

else {
  //clone AI.
  //by default, the clone AI doesn't attack unless it is a Down-Special clone.
  //to change that, add a copy of the AI move arrays here.
  
  //Down-Special Clone AI gets set in user_event6.gml.
  
  print("It got ran ai_init")
}

#define needs_index_conversion(_at)

switch(_at){
	case AT_DATTACK:
	case AT_BAIR:
	case AT_DAIR:
	case AT_UAIR:
	case AT_FAIR:
	case AT_NAIR:
	case AT_UTILT:
	case AT_FTILT:
	case AT_DTILT:
	case AT_JAB:
	case AT_FSTRONG:
		return true
		break
	default:
		return false
}