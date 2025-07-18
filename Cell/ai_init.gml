is_ai = true;
// ai_draw = ds_list_create();

xdist = 0
delay_time = 0
offstage = 0;
near_stage_wall = 0;
near_stage_ledge = 0;
hurtboxWidth = 0;
ai_target_offstage = 0;
tgt_teching = 0
time_recovering = 0
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

ai_attacks = [
  [AT_DATTACK, [1, 2]],
  [AT_UAIR, [1]],
  [AT_FAIR, [1, 2, 3]],
  [AT_NAIR, [1, 2]],
  [AT_DAIR, [1]],
  [AT_BAIR, [1, 2]],
  [AT_UTILT, [1]],
  [AT_FTILT, [1, 2]],
  [AT_DTILT, [1, 2]],
  [AT_JAB, [1, 2, 3]], 
  [AT_FSTRONG, [1, 2]],
  [AT_DSTRONG, [1]],
  [AT_USTRONG, [1]],
  [AT_NSPECIAL, [1]],
  [AT_FSPECIAL, [1]]
]

ai_attack_data = [];
attack_data_obtained = false;
lastOPos = noone;
estOPos = noone;
ai_pos_calc_steps = 4;

// stagex = get_stage_data(SD_X_POS);
stage_left = get_stage_data(SD_X_POS);
stage_width = get_stage_data(SD_WIDTH);
stagey = get_stage_data(SD_Y_POS);
stage_center = stage_left + stage_width/2
stage_right = stage_left + stage_width

bblastzone = get_stage_data(SD_BOTTOM_BLASTZONE_Y);
lblastzone = get_stage_data(SD_LEFT_BLASTZONE_X);
rblastzone = get_stage_data(SD_RIGHT_BLASTZONE_X);
tblastzone = get_stage_data(SD_TOP_BLASTZONE_Y);

chosenAttack = noone;

nspecial_hits = false

//far_down_attacks[0] = AT_DAIR;

//far_side_attacks[0] = AT_NSPECIAL;
//far_side_attacks[1] = AT_FSPECIAL;

//mid_side_attacks[0] = AT_FSTRONG;
//mid_side_attacks[1] = AT_DATTACK;
//mid_side_attacks[2] = AT_FSPECIAL;
//mid_side_attacks[3] = AT_FTILT;

//close_up_attacks[0] = AT_USTRONG;
//close_up_attacks[1] = AT_UAIR;
//close_up_attacks[2] = AT_UTILT;

//close_down_attacks[0] = AT_DSTRONG;
//close_down_attacks[1] = AT_DAIR;
//close_down_attacks[2] = AT_DTILT;

//close_side_attacks[0] = AT_FSTRONG;
//close_side_attacks[1] = AT_FAIR;
//close_side_attacks[2] = AT_FTILT;

//neutral_attacks[0] = AT_JAB;
//neutral_attacks[1] = AT_NAIR;
//neutral_attacks[2] = AT_DSPECIAL;