//unload.gml
//nothing to unload really, but set the units back to being clones when we're done
if (is_master_player) {
    
    for(var i = 0; i < c_naruto_maximum_clones; i++) {
        if (instance_exists(unit_player_id_array[i])) with unit_player_id_array[i] { 
            visible = false; custom_clone = true;
            deactivate_pet(pet_obj);
            instance_destroy(); 
        }
    }
    
    deactivate_pet(pet_obj);
    visible = true;
}

ds_list_destroy(ai_draw);
#define deactivate_pet(pet_id)
//something about pets and clones makes the game crash, try to fix that somehow
if (!instance_exists(pet_id)) return;
pet_id.visible = false;
pet_obj.sprite_index = asset_get("empty_sprite");
return;