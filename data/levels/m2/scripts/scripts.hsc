;========== Globals ===========
;[
(global boolean do_bsp_a true)
(global boolean do_bsp_b true)
(global boolean do_bsp_c true)
(global boolean do_bsp_d true)
(global boolean do_bsp_e true)
(global boolean do_bsp_f true)
(global boolean do_music true)
(global boolean do_cinematics true)
(global boolean do_intro true)
(global boolean do_saving true)
(global short hud_objective_time 170)
(global looping_sound current_track "sound\music\Honorable Intentions\honorable intentions")
(global real music_volume 1)
;]

;========== Functions ==========
;[  
(script static void enable_cinematic_stuff
	(set cheat_deathless_player 1)
	(cinematic_show_letterbox true)
	(cinematic_start)
	(camera_control on)
	(cinematic_set_near_clip_distance .0625)
	;(fade_out 0 0 0 0)
	
	(player_enable_input false)
	(show_hud 0)
)

(script static void disable_cinematic_stuff
	(cinematic_show_letterbox false)
	(cinematic_stop)
	(camera_control off)
	(player_enable_input true)
	(show_hud 1)
	(set cheat_deathless_player 0)
)

(script static void save_game
	(if do_saving 
		(game_save_no_timeout)
	)
)

(script static void save_game_unsafe
	(if do_saving 
		(game_save_totally_unsafe)
	)
)

(script static void stop_music
	(sound_looping_stop current_track)
)

(script continuous magic_sight
	;(ai_magically_see_encounter e_1_allies e_1)
	;(ai_magically_see_encounter e_1 e_1_allies)
	;(ai_magically_see_players d_2/sui)
	(ai_magically_see_players c_3)
	;(ai_magically_see_players d_2_vehicles/5)
)

(script static unit player
  (unit (list_get (players) 0)))

;]

;========== Chapters ==========
;[
(script dormant chapter_title_1
	(show_hud false)
	(sleep 30)
	(cinematic_set_title chap1)
	(sleep 100)
	(cinematic_show_letterbox false)
	(show_hud true)
)

(script dormant chapter_title_2
	(cinematic_show_letterbox true)
	(show_hud false)
	(sleep 30)
	(cinematic_set_title chap2)
	(sleep 100)
	(cinematic_show_letterbox false)
	(show_hud true)
)

(script dormant chapter_title_3
	(cinematic_show_letterbox true)
	(show_hud false)
	(sleep 30)
	(cinematic_set_title chap3)
	(sleep 100)
	(cinematic_show_letterbox false)
	(show_hud true)
)

(script dormant hud_s_x1
	(cinematic_set_title s_x1)
)

(script dormant hud_final_message
	(cinematic_set_title s_final)
)

;]

;========== Objectives ==========
;[
(script dormant objective_regroup
	(show_hud_help_text true)
	
	(hud_set_help_text obj_regroup)
	(hud_set_objective_text obj_regroup)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_fob
	(show_hud_help_text true)
	
	(hud_set_help_text obj_fob)
	(hud_set_objective_text obj_fob)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_city_limits
	(show_hud_help_text true)
	
	(hud_set_help_text obj_city_limits)
	(hud_set_objective_text obj_city_limits)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_city
	(show_hud_help_text true)
	
	(hud_set_help_text obj_city)
	(hud_set_objective_text obj_city)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_convoy
	(show_hud_help_text true)
	
	(hud_set_help_text obj_convoy)
	(hud_set_objective_text obj_convoy)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_lines
	(show_hud_help_text true)
	
	(hud_set_help_text obj_lines)
	(hud_set_objective_text obj_lines)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

(script dormant objective_trenches
	(show_hud_help_text true)
	
	(hud_set_help_text obj_trenches)
	(hud_set_objective_text obj_trenches)
	
	(sleep hud_objective_time)
	(show_hud_help_text false)
)

;]

;========== Music =============
;[
(script dormant music_dead_heroes
	(stop_music)
	(set current_track "sound\shigure\music\dead_heroes")
	(sound_looping_start current_track none 1)
)

(script dormant music_enough_dead_heroes_c
	(stop_music)
	(set current_track "sound\full_tracks\enough_dead_heroes_c")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_the_long_run
	(stop_music)
	(set current_track "sound\full_tracks\the_long_run")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_walk_in_the_woods_b
	(stop_music)
	(set current_track "sound\full_tracks\walk_in_the_woods_b")
	(sound_looping_start current_track none 0.7)
)

(script dormant music_brothers_in_arms
	(stop_music)
	(set current_track "sound\full_tracks\brothers_in_arms")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_new_alexandria
	(stop_music)
	(set current_track "sound\music\Reach\New_Alexandria\New_Alexandria")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_autumn_low
	(stop_music)
	(set current_track "sound\full_tracks\autumn_suite_low")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_autumn
	(stop_music)
	(set current_track "sound\full_tracks\autumn suite")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_metallic_monks
	(stop_music)
	(set current_track "sound\shigure\music\metalic_monks")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_to_turn_a_tide
	(stop_music)
	(set current_track "sound\shigure\music\to_turn_a_tide")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_perilous_journey
	(stop_music)
	(set current_track "sound\full_tracks\perilous_journey_a")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_covenant_dance_b
	(stop_music)
	(set current_track "sound\full_tracks\covenant_dance_b")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_drum_run
	(stop_music)
	(set current_track "sound\full_tracks\drum_run")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_perchance
	(stop_music)
	(set current_track "sound\full_tracks\perchance")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_another_walk
	(stop_music)
	(set current_track "sound\shigure\music\another_walk")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_broken_gate
	(stop_music)
	(set current_track "sound\shigure\music\broken_gate")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_metropolis
	(stop_music)
	(set current_track "sound\shigure\music\metropolis")
	(sound_looping_start current_track none 0.6)
)

(script dormant music_halo_no_chanting
	(stop_music)
	(set current_track "sound\full_tracks\halo_no_chanting")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_under_cover_light_2
	(stop_music)
	(set current_track "sound\full_tracks\under_cover_light_2")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_under_cover_light
	(stop_music)
	(set current_track "sound\full_tracks\under_cover_light")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_released
	(stop_music)
	(set current_track "sound\shigure\music\released")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_SC4m17
	(stop_music)
	(set current_track "sound\shigure\music\SC4m17")
	(sound_looping_start current_track none 1)
)

(script dormant music_death_game
	(stop_music)
	(set current_track "sound\shigure\music\death_game")
	(sound_looping_start current_track none music_volume)
)

(script dormant music_death_game_tense
	(stop_music)
	(set current_track "sound\shigure\music\death_game_tense")
	(sound_looping_start current_track none 0.8)
)

;]

;========== Cinematics ==========
;[

(script static void cin_z
	(if do_cinematics
	(begin
		(sleep 70)
		(print "They've been routed, let's get a headcount")
		(enable_cinematic_stuff)
		(set cheat_deathless_player 1)
		
		(camera_set cam_f_1 300)
		(sleep 200)
		(camera_set cam_f_2 300)
		(wake hud_final_message)
		
		(sleep 90)
		(fade_out 1 1 1 100)
		(sleep 120)
		
		(game_won)
	)
	(game_won)
	)
)

(script dormant cin_d_fly
	(recording_play_and_delete d_pilot1 r_d_ds)
	(sleep (recording_time d_pilot1))
	(object_destroy v_d_pelican)
)

(script static void cin_d
	(if do_cinematics
	(begin
		(fade_out 1 1 1 40)
		(sleep 40)
		
		
		(object_create v_d_pelican)
		(object_create d_pilot1)
		(object_create v_d_hog)
	
		;
		;(vehicle_hover v_d_pelican true)
		(vehicle_load_magic v_d_pelican "driver" d_pilot1)
		(object_teleport v_d_pelican f_d_pelican)
		;
		
		;(player_enable_input false)
		(wake d_load_and_teleport)
		(fade_in 1 1 1 40)
		
		(sleep 100)
		(print "Priya: I'm getting off here, one. I'm gonna see if I can find our lost boys in the air.")
		(sound_impulse_start "sound\shigure\dialogue\priya\im getting off here" none 1)
		(sleep (+ 1 (sound_impulse_time "sound\shigure\dialogue\priya\im getting off here")))
		
		;(sleep 50)
		(wake cin_d_fly)
		
	)
		(wake d_load_and_teleport)
	)
	
	
)

(script static void cin_e
	(if do_cinematics
	(begin
	(fade_out 1 1 1 50)
	(sleep 50)
	(player_enable_input false)
	(wake e_load_and_teleport)
	
	
	(fade_in 1 1 1 30)
	(player_enable_input true)
	(wake chapter_title_3)
	)
	(wake e_load_and_teleport)
	)
	
)

(script static void cin_c
	;(enable_cinematic_stuff)
	(wake c_load_and_teleport)
	(fade_in 1 1 1 30)
)

(script static void cin_b
	(if do_cinematics
	(begin
	(enable_cinematic_stuff)
	(if do_music (wake music_metropolis))
	
	(ai_place aa_cinematic)
	(switch_bsp 0)
	(fade_in 1 1 1 50)

	(object_teleport (player0) f_aa_1)
	(object_teleport (player1) f_aa_1)
	
	(ai_command_list aa_cinematic/marines_walking cl_aa_marines)
	(ai_command_list aa_cinematic/marines cl_aa_marines)	
	(ai_command_list aa_cinematic/marines_gauk cl_aa_marines)
	(ai_command_list_advance aa_cinematic/marines_gauk)
	
	(ai_command_list aa_cinematic/player cl_aa_player)
	(ai_command_list aa_cinematic/neo cl_aa_neo)
	(ai_command_list aa_cinematic/priya cl_aa_priya)
	(ai_command_list aa_cinematic/ricardo cl_aa_ricardo)
	(ai_command_list aa_cinematic/sarge2 cl_aa_sarge)
	
	(camera_set cin_aa_1 0)
	
	(sleep 10)
	(camera_set cin_aa_2 300)
	
	(sleep 150)
	(camera_set cin_aa_gawking 0)
	
	(sleep 130)
	(camera_set cin_aa_sarge_1 50)
	
	;(sound_impulse_start sound\dialog\x10\keyes05 "aa_cinematic/sarge2" 1)
	
	(sleep 40)
	(ai_command_list_advance aa_cinematic/player)
	(ai_command_list_advance aa_cinematic/neo)
	(ai_command_list_advance aa_cinematic/priya)
	(ai_command_list_advance aa_cinematic/ricardo)
	
	(print "Commander, sir" )
	(sound_impulse_start "sound\shigure\dialogue\ricky\commander sir" "aa_cinematic/neo" 1)
	(sleep (+ 23 (sound_impulse_time "sound\shigure\dialogue\ricky\commander sir")))

	;(sleep 170)
	(camera_set cin_aa_sarge_2 0)
	
	(print "Zulu, glad you made it back, when the comms went down I thought you were overrun too." )
	(sound_impulse_start "sound\shigure\dialogue\commander\glad you made it back" "aa_cinematic/sarge2" 1)
	(sleep (+ 17 (sound_impulse_time "sound\shigure\dialogue\commander\glad you made it back")))
	
	(sound_impulse_start "sound\shigure\dialogue\commander\when the comms went down" "aa_cinematic/sarge2" 1)
	(sleep (+ 20 (sound_impulse_time "sound\shigure\dialogue\commander\when the comms went down")))
	
	;(sleep 170)
	(camera_set cin_aa_sarge_3 0)
	
	(print "We were being jammed, sir. " )
	(sound_impulse_start "sound\shigure\dialogue\priya\we were being jammed" "aa_cinematic/neo" 2)
	(sleep (+ 20 (sound_impulse_time "sound\shigure\dialogue\priya\we were being jammed")))
	
	(print "Affirmative, I have a unit working on the jammers right now." )
	(sound_impulse_start "sound\shigure\dialogue\commander\affirmative" "aa_cinematic/sarge2" 2)
	(sleep (+ 17 (sound_impulse_time "sound\shigure\dialogue\commander\affirmative")))
	
	;(sleep 170)
	(camera_set cin_aa_sarge_4 0)
	
	(print "What's our move, sir.")
	(sound_impulse_start "sound\shigure\dialogue\neo\whats our next move sir" "aa_cinematic/neo" 2)
	(sleep (+ 20 (sound_impulse_time "sound\shigure\dialogue\neo\whats our next move sir")))
	
	(print "Zulu, we’ve got evac convoys pulling back, but we’ve lost track of where they were. They were the ones carrying the ammo for our triple-A. I need you to find that Convoy and make sure it gets back.")
	(sound_impulse_start "sound\shigure\dialogue\commander\we got convoys" "aa_cinematic/sarge2" 2)
	(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\commander\we got convoys")))
	
	(camera_set cin_aa_sarge_5 0)
	(sleep 5)
	
	(print "We'll get it done, sir.")
	(sound_impulse_start "sound\shigure\dialogue\paige\well get it done" "aa_cinematic/player" 2)
	(sleep (+ 17 (sound_impulse_time "sound\shigure\dialogue\paige\well get it done")))
	
	(camera_set cin_aa_sarge_6 0)
	
	(camera_set cin_aa_sarge_7 120)
	(sleep 50)
	
	
	(fade_out 1 1 1 70)
	(sleep 70)
	
	(stop_music)
	(disable_cinematic_stuff)
	))
	
	(wake b_load_and_teleport)
)

;]

;========== Load Zones ==========
;[

(script dormant b_load_and_teleport
	(switch_bsp 1)
	
	(fade_in 1 1 1 30)
	
	(object_teleport (player0) f_b_start)
	(object_teleport (player1) f_b_start1)
	
	(save_game)
)

(script dormant c_load_and_teleport
	(volume_teleport_players_not_inside t_building_entrance f_c_start)
	(switch_bsp 2)
	
	(save_game)
)

(script dormant d_load_and_teleport
	(switch_bsp 3)
	
	(object_teleport (player0) f_d_start_1)
	(object_teleport (player1) f_d_start_2)
	(save_game_unsafe)
	
	(object_destroy v_c_banshee)
	(object_destroy v_c_kanga)
	(object_destroy v_c_hog2)
	(object_destroy v_c_hog1)
	(object_destroy v_c_hog3)
	
	
)

(script dormant e_load_and_teleport
	(switch_bsp 4)
	(object_teleport (player0) f_e_start_1)
	(object_teleport (player1) f_e_start_2)
	(save_game)
	
)

(script dormant f_load_and_teleport
	(switch_bsp 5)
	(save_game)
)

(script startup b_end_loadzone
	(sleep_until (volume_test_objects t_building_entrance (players)) 15)
	(ai_erase b_1)
	(ai_erase b_1_allies)
	(ai_erase b_2)
	(ai_erase b_3_allies)
	(ai_erase b_3)
	(ai_erase b_4)
	(ai_erase b_4_allies)
	(garbage_collect_now)
	
	(cin_c)
)

(script startup c_end_loadzone
	(sleep_until (volume_test_objects t_crater_exit (players)) 15)
	(ai_erase c_1_allies)
	(ai_erase c_1)
	(ai_erase c_2)
	(ai_erase c_3)
	(ai_erase c_4_flyer)
	(garbage_collect_now)
	
	(fade_out 1 1 1 40)
	(sleep 40)
	(game_won)
)

;]


;========== BSP B ==========
;[
(script startup b
	(if do_bsp_b
	(begin
	
	(sleep_until (volume_test_objects t_b_start (players)) 15)
	(custom_animation v_b_ds_1 levels\m1\animations\dropships\dropships b_ds_1 true)
	(save_game_unsafe)
	
	(ai_place b_1_allies)
	(ai_follow_target_players b_1_allies)
	(ai_place b_1/jackals1)
	(ai_place b_1/elites1)
	
	(print "I hear em up ahead. Let's dance.")
	
	(sleep 100)
	(wake objective_city_limits)
	
	(sleep_until (volume_test_objects t_b_valley_entrance (players)) 15)
	(if do_music (wake music_broken_gate))
	(save_game)
	
	(ai_place b_1/grunts1)
	(ai_place b_1/grunts2)
	(ai_place b_1_flyers/1)
	
	(wake b_jet)

	(sleep_until (volume_test_objects t_b_valley_exit (players)) 15)
	(save_game)
	(ai_place b_2)
	
	(sleep_until (volume_test_objects t_b_valley2_approach (players)) 15)
	(save_game)
	
	(sleep_until (volume_test_objects t_b_base (players)) 15)
	(save_game_unsafe)

	))
)

(script dormant b_jet
	(sound_impulse_start "sound\shigure\jet flyby" "none" 1)
	
	(sleep 200)
	(object_create fighter1)
	(sleep 120)
	(object_destroy fighter1)
	
)

(script startup b_dropship_scene
	(vehicle_hover v_b_ds_1 true)
	(vehicle_hover v_b_ds_2 true)
	
	
	
	(sleep_until (volume_test_objects t_b_dropships2 (players)) 15)
	(sound_impulse_start "sound\shigure\jet flyby" "none" 1)
	(object_create fighter2)
	
	(save_game)
	(sleep 51)
	(print "Dropships, up high")
	
	
	(object_create v_b_ds_1)
	(object_create v_b_ds_2)
	(object_create v_b_spectre)
	
	(custom_animation v_b_ds_1 levels\m1\animations\dropships\dropships b_ds_1 false)
	(custom_animation v_b_ds_2 levels\m1\animations\dropships\dropships b_ds_2 false)
	(objects_attach v_b_ds_2 "cargo_wraith" v_b_spectre "")
	(sleep 70)
	(object_destroy fighter2)
	
	;(sleep 135)
	(sleep 65)
	(effect_new "vehicles\wraith\effects\death explosion" flag_explosion)
	(sound_impulse_start "sound\shigure\artillery" "none" 1)
	(object_destroy v_b_ds_1)
	
	(print "Haha!")
	
	(sleep 150)
	(object_destroy v_b_ds_2)
	(object_destroy v_b_spectre)

)

(script dormant b_dropship_fly
	(recording_play b_pilot r_b_ds3)
	(sleep (recording_time b_pilot))
	(object_destroy v_b_ds_3)
	
)

(script startup b_dropship_hunters
	(sleep_until (volume_test_objects t_b_dropship3 (players)) 15)
	(save_game)
	(object_create v_b_ds_3)
	(object_create b_pilot)
	(vehicle_hover v_b_ds_3 true)
	
	;
	(vehicle_hover v_b_ds_3 true)
	(object_teleport v_b_ds_3 f_b_ds3)
	(vehicle_load_magic v_b_ds_3 "driver" b_pilot)
	;
	
	(wake b_dropship_fly)
	
	(sleep 500)
	(unit_open v_b_ds_3)
	(sleep 30)
	(ai_place b_4/hunters)
	
	(sleep 70)
	(unit_close v_b_ds_3)
	
)

(script startup b_valley_left
	(sleep_until (volume_test_objects t_b_valley_left (players)) 15)
	(save_game)
	(ai_place b_1/elites2)
	(ai_place b_1/jackals3)
)

(script startup b_valley_right
	(sleep_until (volume_test_objects t_b_valley_right (players)) 15)
	(save_game)
	(ai_place b_1/jackals2)
	(ai_place b_1/jackals4)
	(ai_place b_1/slugs2)
)

(script startup b_valley2_approach
	(sleep_until (volume_test_objects t_b_valley2_approach (players)) 15)
	(if do_music (wake music_to_turn_a_tide))
	(save_game_unsafe)
	
	(ai_erase b_1)
	(ai_erase b_2)
	
	(ai_place b_1_flyers/2)
	(ai_place b_3)
	(ai_place b_3/pilot1)
	(ai_place b_3/pilot2)
	(ai_place b_3/pilot3)
	(ai_place b_3/pilot4)
	(ai_place b_3/pilot5)
	(ai_place b_3/pilot6)
	
	(vehicle_load_magic v_b_ghost1 "" (ai_actors b_3/pilot1))
	(vehicle_load_magic v_b_ghost2 "" (ai_actors b_3/pilot2))
	(vehicle_load_magic v_b_ghoul1 "" (ai_actors b_3/pilot3))
	(vehicle_load_magic v_b_ghoul2 "" (ai_actors b_3/pilot4))
	(vehicle_load_magic v_b_ghost3 "" (ai_actors b_3/pilot5))
	(vehicle_load_magic v_b_ghost4 "" (ai_actors b_3/pilot6))
	
	(ai_place b_3_allies/a)
	(ai_follow_target_players b_3_allies)

	(print "Zulu 1, 3, you've got hostile armour incoming. Ghouls with ghost escorts.")
	(print "How we handling this? I'll follow your lead, boss")
	
	(wake b_crash_navpoint)
	
	(sleep 2000)
	(save_game)
)

(script dormant b_crash_navpoint
	(sleep_until (or (< 5 (ai_living_count b_3))  (volume_test_objects t_b_crash (players))) 10)
	(activate_team_nav_point_flag "default_red" player "f_crash" 0)
	(save_game)
	
	(sleep_until (volume_test_objects t_b_crash (players)) 15)
	(deactivate_team_nav_point_flag player "f_crash")
)

(script startup b_crash
	(sleep_until (volume_test_objects t_b_crash (players)) 15)
	(save_game_unsafe)
	(ai_erase b_1_allies/neo)
	(ai_erase b_1_allies/neo)
	(ai_erase b_3)
	
	(stop_music)
	(object_destroy smoke)
	(object_destroy fire_1)
	(object_destroy fire_2)
	(object_destroy fire_3)
	(object_destroy fire_4)
	(object_destroy fire_5)
	(object_destroy fire_6)
	(object_destroy fire_7)
	
	(ai_place b_4/grunts1)
	(ai_place b_4/jakals1)
	(ai_place b_4/jakals2)
	(ai_place b_4/jakals3)
	(ai_place b_4/elites)
	(ai_place b_4/elites2)
	(ai_place b_4/snipes)
	(ai_place b_4/pilot)
	(ai_place b_4_allies)
	
	(sleep_until (volume_test_objects t_flyer_spawn (players)) 15)
	(save_game)
	(ai_place b4_flyers)
	
	;(ai_follow_target_players b_4_allies/2)
	;(ai_follow_target_players b_4_allies/neo)
	;(ai_follow_target_players b_4_allies/neo)
	(vehicle_load_magic v_b_shadow "gunner" (ai_actors "b_4/pilot"))
	
)

(script startup b_crash_ricky
	(sleep_until (volume_test_objects t_b_ricky (players)) 15)
	(if do_cinematics
	(begin
		(print "Eyes up, we got a small blockade up ahead.")
		(sound_impulse_start "sound\shigure\dialogue\ricky\eyes up" none 1)
		(sleep (+ 23 (sound_impulse_time "sound\shigure\dialogue\ricky\eyes up")))
		
		
		(print "Alright, let's smash it up then.")
		(sound_impulse_start "sound\shigure\dialogue\neo\smash it" none 1)
		(sleep (+ 23 (sound_impulse_time "sound\shigure\dialogue\neo\smash it")))

		(ai_set_current_state b_4_allies/ricardo "search")
	))
)

;]

;========== BSP C ==========
;[
(script startup c
	(if do_bsp_c
	(begin
	
	(sleep_until (volume_test_objects t_building_entrance (players)) 15)
	(sleep 5)
	
	(stop_music)
	
	(ai_place c_1_allies)
	(ai_reconnect)
	(ai_teleport_to_starting_location_if_unsupported c_1_allies)
	
	(sleep 70)
	(wake objective_city)
	
	(sleep_until (volume_test_objects t_building_exit (players)) 15)
	(save_game_unsafe)
	(if do_music (wake music_covenant_dance_b))
	
	(ai_place c_1)
	(vehicle_load_magic v_c_hog1 "gunner" (ai_actors c_1_allies/aa_squad))
	
	(sleep_until (volume_test_objects t_city_bottom (players)) 15)
	(save_game_unsafe)
	(wake c_city_bottom_ai)
	
	(sleep_until (volume_test_objects t_city_crater (players)) 15)
	(save_game_unsafe)
	(stop_music)
	
	(ai_erase c_1)
	(wake c_city_crater_ai)
	(sleep 2000)
	))
)

(script dormant c_city_bottom_ai
	(ai_place c_2)
	(vehicle_load_magic v_c_ghost_1 "" (ai_actors c_2/pilot_1))
	(vehicle_load_magic v_c_ghost_2 "" (ai_actors c_2/pilot_2))
	(vehicle_load_magic v_c_ghost_3 "" (ai_actors c_2/pilot_3))
	(vehicle_load_magic v_c_wraith_1 "" (ai_actors c_2/pilot_4))
	(vehicle_load_magic v_c_spectre_1 "" (ai_actors c_2/pilot_5))
	(vehicle_load_magic v_c_shadow_1 "gunner" (ai_actors c_2/pilot_6))
)

(script dormant c_city_crater_ai
	(activate_team_nav_point_flag "default_red" player "f_d_start_1" 0)
	(ai_place c_3)
	(vehicle_load_magic v_c2_ghost_1 "" (ai_actors c_3/pilot_1))
	(vehicle_load_magic v_c2_ghost_2 "" (ai_actors c_3/pilot_2))
	(vehicle_load_magic v_c2_ghost_3 "" (ai_actors c_3/pilot_3))
	(vehicle_load_magic v_c2_ghost_4 "" (ai_actors c_3/pilot_4))
	(vehicle_load_magic v_c2_ghost_5 "" (ai_actors c_3/pilot_5))
	
	(vehicle_load_magic v_c2_ghoul_1 "" (ai_actors c_3/pilot_6))
	(vehicle_load_magic v_c2_ghoul_2 "" (ai_actors c_3/pilot_7))
	(vehicle_load_magic v_c2_wraith_1 "" (ai_actors c_3/pilot_8))
	(vehicle_load_magic v_c2_wraith_2 "" (ai_actors c_3/pilot_9))
	
	(ai_place c_4_flyer)
	(vehicle_load_magic v_c_banshee "" (ai_actors c_4_flyer/1))
)

(script startup c_priya
	(sleep_until (volume_test_objects t_c_priya (players)) 15)
	(if do_cinematics
	(begin
		(print "Priya: Better pack some ratshot Zulu 1. The streets are full of rodents.")
		(sound_impulse_start "sound\shigure\dialogue\priya\better pack some ratshot" none 1)
		(sleep (+ 23 (sound_impulse_time "sound\shigure\dialogue\priya\better pack some ratshot")))
		(ai_set_current_state c_1_allies/priya "move_random")
	)
	(ai_set_current_state c_1_allies/priya "move_random")
	)
	
)

(script startup c_extra_checkpoint_a
	(sleep_until (volume_test_objects t_c_extra (players)) 15)
	(save_game_unsafe)
)

(script startup c_extra_checkpoint_b
	(sleep_until (volume_test_objects t_c_extra_b (players)) 15)
	(save_game_unsafe)
)

(script startup c_extra_checkpoint_c
	(sleep_until (volume_test_objects t_extra_c (players)) 15)
	(save_game_unsafe)
)

;]


;========== Main ==========

(script startup main_sequence
	(ai_allegiance player human)
	(set sound_gain_under_dialog 0.3)
	
	;(enable_cinematic_stuff)
	;(switch_bsp 2)
	;(set cheat_deathless_player 1)
	
	(cin_b)
)
