





#define sprite_get_efficient(arg_sprite_name)
var get_spr;
if (custom_clone) {
    with (clones_player_id) {
        get_spr = get_attack_value(arg_attack_index, arg_grid_index);
    }
}
else get_spr = sprite_get(arg_sprite_name);
return get_spr;

#define asset_get_efficient(arg_asset_name)
var get_asset;
if (custom_clone) {
    with (clones_player_id) {
        get_asset = get_attack_value(arg_attack_index, arg_grid_index);
    }
}
else get_spr = sprite_get(arg_sprite_name);
return get_spr;

#define set_attack_value_efficient(arg_attack_index, arg_grid_index, arg_sprite_name)
//for clones, gets a sprite from the main character. for the main player, load the sprite normally.
if (custom_clone) {
    with (clones_player_id) {
        var get_spr = get_attack_value(arg_attack_index, arg_grid_index);
    }
    set_attack_value(arg_attack_index, arg_grid_index, get_spr);
}

#define sprite_get_if_not_clone(arg_sprite_str)
if (custom_clone) return 0;
return sprite_get(arg_sprite_str);