//user_event13.gml
//play voice script
//Original voice code by Muno, edited by Mawral

//the edited version here tells naruto's clones to reference the 'main' player instance, instead of copying the voice arrays for each individual clone.
//to put this into a different character, just remove all the 'master_player_id.' references.

// arg: cur_vc

if !(master_player_id.voice) exit;

//print("cur_vc = " + string(cur_vc))

var pool = array_clone(master_player_id.vbs[cur_vc]);

if array_length(pool) == 0 exit;

var selected = pool[min(random_func(cur_vc, array_length(pool), true), array_length(pool) - 1)];

if (selected == noone) exit;

var snd_string = master_player_id.vc_prefix_string[voice] + master_player_id.vb_string[cur_vc];
if selected != 0 snd_string += string(selected);
//print("play sound: " + snd_string)
sound_stop(voice_playing_sound);
voice_playing_sound = sound_play(sound_get(snd_string), false, noone, 1.2);
