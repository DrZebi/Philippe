//pre_draw.gml
//if (!is_master_player) exit; 

//shader_start();
//if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
//    if (attack == AT_NSPECIAL && window == 5) {
//        draw_sprite_ext(spr_nspecial_charge, (state_timer / 4) % 3, x, y, spr_dir * 2, 2, 0, c_white, 1);
//    }
//    else if (attack == AT_NSPECIAL_2 && window == 3) {
//        draw_sprite_ext(master_player_id.spr_nspecial_charge, (state_timer / 4) % 3, x, y, spr_dir * 2, 2, 0, c_white, 1);
//    }
//}
//shader_end();