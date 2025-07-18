//user_event8.gml
//sexyjutsu auto-compatibility
with (oPlayer) {
    
//ignore if this player is naruto, a clone of some sort, or already has compatibility set
if (id == other.id 
    || clone
    || custom_clone
    || "naruto_sexyjutsu_sprite" in self 
    || "naruto_sexyjutsu_gender" in self ) continue;

//sometimes the url variable is a string instead of a number; convert it if we can first
var url_real;
if ("url" not in self) continue;
else if (is_real(url)) url_real = url;
else if (is_string(url)) url_real = real(url);
else continue;

switch (url_real) {
    //compatibility goes here
	case 1: //
        set_compatibility_gender(1);
    break;
	case 2: // Zetterburn
        set_compatibility_gender(1);
    break;
	case 3: // Orcane
        set_compatibility_gender(1);
    break;
	case 4: // Wrastor
        set_compatibility_gender(1);
    break;
	case 5: // Kragg
        set_compatibility_gender(1);
    break;
	case 6: // Forsburn
        set_compatibility_gender(1);
    break;
	case 7: // Maypul
        set_compatibility_gender(2);
    break;
	case 8: // Absa
        set_compatibility_gender(2);
    break;
	case 9: // Etalus
        set_compatibility_gender(1);
    break;
	case 10: // Ori
        set_compatibility_gender(1);
    break;
	case 11: // i dont know
        set_compatibility_gender(1);
    break;
	case 11: // Ranno
        set_compatibility_gender(1);
    break;
	case 12: // Clairen
        set_compatibility_gender(2);
    break;
	case 13: // Sylvanos
        set_compatibility_gender(1);
    break;
	case 14: // Elliana
        set_compatibility_gender(2);
    break;
	case 15: // Shovel Knight
        set_compatibility_gender(1);
    break;
	case 16: // Mollo
        set_compatibility_gender(1);
    break;
	case 17: // Hodan
        set_compatibility_gender(1);
    break;
	case 18: // Pomme
        set_compatibility_gender(2);
    break;
	case 19: // Olympia
        set_compatibility_gender(2);
    break;
	//example: change OG sandbert's compatibility to a given gender.
    case 1865940669: //sandbert url
        set_compatibility_gender(1);
    break;
    case 1866016173: //Guadua
        set_compatibility_gender(2);
    break;
    //example: change sandbert with a smartphone's compatibility to a given sprite.
    case 2606414594: //sandbert with a smartphone url
        set_compatibility_sprite("taunt_sexyjutsu_female");
    break;
}
}


#define set_compatibility_gender(gndr)
naruto_sexyjutsu_gender = gndr;

#define set_compatibility_sprite(sprite_name_string)
var comp_spr;
with (other) {
    comp_spr = sprite_get(sprite_name_string);
    sprite_change_offset(sprite_name_string, 50, 70);
}
naruto_sexyjutsu_sprite = comp_spr;