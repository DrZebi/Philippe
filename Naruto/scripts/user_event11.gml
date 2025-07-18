//user_event11.gml
//voice initialization
//called in init.gml
//code modified by Mawral, based upon Muno's 'Goku' code.

voice_playing_sound = noone;

VC_NONE = 0;
VC_EN = 1;
VC_JP = 2;
//var alt_cur = get_player_color(player);


//default voice
//voice = VC_NONE;
if (get_synced_var( player ) == 0) {
	voice = VC_NONE;
}
if (get_synced_var( player ) == 1) {
	voice = VC_EN;
}
if (get_synced_var( player ) == 2) {
	voice = VC_JP;
}

//alter these to have languages based on voice selection
//	 if alt_cur >= 11 && alt_cur <= 20 voice = VC_EN; //english voice: palette 11-20
// else if alt_cur >= 21 && alt_cur <= 30 voice = VC_JP; //japanese voice: palette 21-30

//alter these if you used a different prefix for your filenames
vc_prefix_string = [ 
	"", 		//0
	"eng_" ,	//1
	"jpn_"		//2
	];


//-----

//these indexes are arbitrary, renumber them to anything as long as they're unique.
VB_ATK_SMALL = 				0;
VB_ATK_MED = 				1;
VB_ATK_BIG = 				2;
//VB_ATK_HUGE = 			3;
VB_DEATH = 					4;
VB_HURT = 					5;
VB_TAUNT = 					6;


VB_RASENGAN = 				10;
VB_RASENGAN_MAX = 		    11;
VB_RASENGAN_CHARGING =		12;
VB_RASENGAN_FULLCHARGE =	13;
VB_TAUNT2 = 				14;



//strings containing the names of the sprites.
vb_string[VB_ATK_SMALL] 			= "ATK_SMALL";
vb_string[VB_ATK_MED]				= "ATK_MED";
vb_string[VB_ATK_BIG]				= "ATK_BIG";
//vb_string[VB_ATK_HUGE]			= "ATK_HUGE"; 
vb_string[VB_DEATH] 				= "DEATH";
vb_string[VB_HURT]					= "HURT";
vb_string[VB_TAUNT] 				= "BelieveItTaunt";
vb_string[VB_RASENGAN]				= "rasenganfast";
vb_string[VB_RASENGAN_MAX]			= "rasengan";
vb_string[VB_RASENGAN_CHARGING]		= "rasengancharge";
vb_string[VB_TAUNT2] 				= "ATK_SMALL";


//for any clones, exit here to avoid wasting memory. only the 'main' player needs to store the arrays below.
if (custom_clone) exit;

vbs = [];
//arrays containing the frequency of each sound. 
//'noone' = no sound is played. add 'noone' to make , or as a placeholder if you have no sounds yet. 
//'0' = no number is added at the end of the sprite name. Handy for when you need to set a voice to play one sound.
vbs[VB_ATK_SMALL] = [
	noone,
	noone,
	noone,
	noone,
	1,
	2,
	3,
	4,
	5,
	6,
	7
	];
vbs[VB_ATK_MED] = [
	noone,
	noone,
	noone,
	1,
	2,
	3,
	4,
	5,
	6,
	7
	];
vbs[VB_ATK_BIG] = [
	noone,
	noone,
	1,
	2,
	3,
	4,
	5,
	6,
	7,
	8
	]
vbs[VB_DEATH] = [
	1,
	2,
	3,
	4,
	5,
	]
vbs[VB_HURT] = [
	noone,
	noone,
	noone,
	noone,
	1,
	2,
	3,
	4,
	5,
	6
	]
vbs[VB_RASENGAN] = [
	0
	]
vbs[VB_RASENGAN_MAX] = [
	0
	]
vbs[VB_RASENGAN_CHARGING] = [
	0
	]
vbs[VB_RASENGAN_FULLCHARGE] = [
	noone
	]
vbs[VB_TAUNT] = [
	0
	]
vbs[VB_TAUNT2] = [
	noone
	]	
