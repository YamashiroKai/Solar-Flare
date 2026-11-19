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
	;(set cheat_deathless_player 1)
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
	;(set cheat_deathless_player 0)
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
	(sound_looping_start current_track none music_volume)
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

(script static void cin_a_neo
	(if do_cinematics
		(begin
			(stop_music)
			(sleep 5)
			
			(print "Neo: Appreciated, but we got more aliens on the other side of the cliffs.")
			(sound_impulse_start "sound\shigure\dialogue\neo\appreciate it" none 1)
			(sleep (+ 10 (sound_impulse_time "sound\shigure\dialogue\neo\appreciate it")))
			
			(sound_impulse_start "sound\shigure\dialogue\neo\we got more aliens" none 1)
			(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\neo\we got more aliens")))
			
			(print "Ricky: An ambush?")
			(sound_impulse_start "sound\shigure\dialogue\ricky\an ambush" none 1)
			(sleep (+ 20 (sound_impulse_time "sound\shigure\dialogue\ricky\an ambush")))
			
			(print "Neo: Yeah, let's drop in and say hi.")
			(sound_impulse_start "sound\shigure\dialogue\neo\drop in" none 1)
			(sleep (+ 10 (sound_impulse_time "sound\shigure\dialogue\neo\drop in")))
		)
	)
)

(script static void cin_a_ricardo
	(if do_cinematics
		(begin
			(print "Marine: Sir! Spartans coming in!")
	
			(print "Rick: Zulu One, Four. Three's on the other end of this valley. Him and a few marines are trapped.")
			(sound_impulse_start "sound\shigure\dialogue\ricky\zulu 1 4" none 1)
			(sleep (+ 10 (sound_impulse_time "sound\shigure\dialogue\ricky\zulu 1 4")))
	
			(sound_impulse_start "sound\shigure\dialogue\ricky\3 is at the other end" none 1)
			(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\ricky\3 is at the other end")))
	
			(sound_impulse_start "sound\shigure\dialogue\ricky\him and a few marines are trapped" none 1)
			(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\ricky\him and a few marines are trapped")))

			(print "Priya: Roger, let's bail 'em out. It's go time, Zulu.")
			(sound_impulse_start "sound\shigure\dialogue\priya\roger lets bail em out" none 1)
			(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\priya\roger lets bail em out")))
			
			;(sound_impulse_start "sound\shigure\dialogue\priya\its go time zulu" "a_2_allies/priya2" 1)
			;(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\priya\its go time zulu")))
	
		)
	)
)

(script static void cin_a_priya
	(ai_place a_2_allies/priya)
	(ai_command_list a_2_allies/priya cl_priya_gameplay)
	(if do_cinematics
		(begin
			(sleep_until (volume_test_objects t_a_3 (players)) 15)
			(print "They're all over this valley")
			(sound_impulse_start "sound\shigure\dialogue\priya\the whole valley is crawling with them" none 1)
			(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\priya\the whole valley is crawling with them")))
		)
	)
	
	
)

;]

;========== Load Zones ==========
;[
(script dormant a_load_and_teleport
	(switch_bsp 0)
	(save_game)
	(object_teleport (player0) f_a_3)
	(object_teleport (player1) f_a_4)
	(ai_erase a_cinematic)
	(ai_erase aa_cinematic)
	
)

;]

;========== BSP A ==========
;[
(script startup a
	(sleep_until (volume_test_objects t_a_start (players)) 15)
	(ai_place a_1)
	
	
	(sleep_until (volume_test_objects t_a_1 (players)) 15)
	(wake objective_regroup)
	(save_game)
	
	(if do_music (wake music_another_walk))
)

(script startup a_pre_valley
	(sleep_until (volume_test_objects t_a_2 (players)) 15)
	(save_game)
	(cin_a_priya)
	
	(sleep 50)
	(ai_follow_target_players a_2_allies)
	(ai_follow_distance a_2_allies 1)
	
	(sleep_until (volume_test_objects t_a_3 (players)) 15)
	(save_game)
	
	(ai_erase a_1)
	(ai_place a_2)
)

(script startup a_arch
	(sleep_until (volume_test_objects t_a_arch (players)) 15)
	(save_game_unsafe)
	
	
	(ai_place a_2_allies/priya2)
	(ai_erase a_2_allies/priya)
	
	
	(ai_follow_target_players a_2_allies)
	(ai_follow_distance a_2_allies 1)
	
	(sleep_until (volume_test_objects t_a_ricky (players)) 15)
	(save_game_unsafe)
	(ai_place a_2_allies/ricardo)
	(ai_place a_2_allies/marines)
	
	(sleep 180)
	(cin_a_ricardo)
	
	(sleep 150)
	(wake objective_fob)
	
)

(script startup a_ds2
	(sleep_until (volume_test_objects t_a_ds2 (players)) 15)
	(save_game)
	(if do_music (wake music_walk_in_the_woods_b))
)

(script startup a_valley
	(sleep_until (volume_test_objects t_a_ds2 (players)) 3)
	(save_game)
	(ai_place a_3)
	(ai_follow_target_players a_2_allies)
	(ai_follow_distance a_2_allies 1)
	
	
	(sleep_until (volume_test_objects t_a_valley (players)) 3)
	(save_game)
	(sound_looping_set_alternate current_track 1)
	
	(ai_place a_4)
	
	(ai_place a_3_vehicles)
	(vehicle_load_magic v_a_ghost1 "" (ai_actors a_3_vehicles/1))
	(vehicle_load_magic v_a_ghost2 "" (ai_actors a_3_vehicles/2))
)

(script startup a_camp
	(sleep_until (volume_test_objects t_a_camp (players)) 15)
	(save_game)
	(ai_place a_4_allies)
	
	(sleep_until (volume_test_objects t_a_neo (players)) 15)
	(save_game_unsafe)
	(ai_follow_target_players a_4_allies)
	(cin_a_neo)
	(stop_music)

	(sleep_until (volume_test_objects t_a_tunnel (players)) 15)
	(save_game)
	(ai_place a_5)
	(activate_team_nav_point_flag "default_red" player "f_gorge_end" 0)
	
	(if do_cinematics
	(sleep_until (= 0 (ai_living_count a_5)) 10)
		(print "Scout out that river, Zulu 1, we'll take care of the wounded")
	)
	
)

(script startup a_rivine
	(sleep_until (volume_test_objects t_a_rivine (players)) 15)
	(save_game)
	(ai_place a_6)
	(sleep 300)
	(ai_place last_flyers)
)

(script startup a_dropship1
	(sleep_until (volume_test_objects t_a_2 (players)) 15)
	(print "there should be a dropship here")
	(object_create a_pilot)
	(object_create v_a_ds_3)
	
	(vehicle_load_magic v_a_ds_3 "driver" a_pilot)
	(object_teleport v_a_ds_3 f_a_ds1)
	(recording_play_and_delete a_pilot r_a_ds1)
	
	(sleep (recording_time a_pilot))
	(object_destroy v_a_ds_3)

)

(script dormant a_dropship2_flying
	(recording_play_and_delete a_pilot2 r_a_ds2)
	(sleep (recording_time a_pilot2))
	(object_destroy v_a_ds_2)
)

(script startup a_dropship2
	(sleep_until (volume_test_objects t_a_ds2 (players)) 15)
	(object_create v_a_ds_2)
	(object_create a_pilot2)
	
	;
	(vehicle_hover v_a_ds_2 true)
	(vehicle_load_magic v_a_ds_2 "driver" a_pilot2)
	(object_teleport v_a_ds_2 f_a_ds2)
	;

	(ai_place a_3/ds1a)
	(ai_place a_3/ds1b)
	(vehicle_load_magic v_a_ds_2 "" (ai_actors "a_3/ds1a")) 
	(vehicle_load_magic v_a_ds_2 "" (ai_actors "a_3/ds1b")) 
	
	;Async flying
	(wake a_dropship2_flying)
	
	(sleep 600)
	(unit_open v_a_ds_2)
	(vehicle_unload v_a_ds_2 "CD-passenger")
	
	(sleep 70)
	(unit_close v_a_ds_2)
)

(script startup a_end
	(sleep_until (volume_test_objects t_a_end (players)) 15)
	(save_game)
	(ai_place last_hunters)
	
	(sleep_until (= 0 (ai_living_count last_hunters)) 15)
	(sleep 70)
	(fade_out 1 1 1 30)
	(sleep 30)
	(game_won)
	
)

(script continuous a_kill_barrier
  (if (volume_test_object t_a_kill (list_get (players) 0))
    (unit_kill (unit (list_get (players) 0)))
  )
  (if (volume_test_object t_a_kill (list_get (players) 1))
    (unit_kill (unit (list_get (players) 1)))
  )
)


;]

;========== Main ==========

(script startup main_sequence
	(ai_allegiance player human)
	(set sound_gain_under_dialog 0.3)
	
	;(enable_cinematic_stuff)
	;(switch_bsp 3)
	;(cin_x1)
	
	(fade_in 1 1 1 100)
)
