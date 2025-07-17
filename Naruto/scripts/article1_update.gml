lifetime++;
vsp += grav;
hsp = -spr_dir * 0.25;

image_index = min(image_index + img_spd, image_number - 1);
if (lifetime > 5) image_alpha -= power(1 - (image_alpha - 0.08), 2);


if lifetime > max_lifetime {
    instance_destroy();
}



