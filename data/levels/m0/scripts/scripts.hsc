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

(script static void cin_a
(if do_cinematics
	(begin
	(ai_erase x_1)
	(switch_bsp 0)
	(object_teleport (player0) f_a_1)
	(object_teleport (player1) f_a_1)
	(fade_in 1 1 1 0)

	(ai_command_list a_cinematic/1 cl_a_priya)
	(ai_command_list a_cinematic/2 cl_a_player)
	
	(camera_set cin_a_1 0)
	(sleep 10)
	
	(print "They've broken through the first line. I can't raise bravo")
	(sound_impulse_start "sound\shigure\dialogue\paige\they broke thru the first line" none 1)
	(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\paige\they broke thru the first line")))
	(stop_music)
	
	(camera_set cin_a_2 120)
	;(sleep 120)
	
	(print "We're being jammed. We need to pull back and let them know what's happening")
	(sound_impulse_start "sound\shigure\dialogue\priya\were being jammed" none 1)
	(sleep (+ 10 (sound_impulse_time "sound\shigure\dialogue\priya\were being jammed")))
	
	(sound_impulse_start "sound\shigure\dialogue\priya\we need to pull back" none 1)
	(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\priya\we need to pull back")))
	
	
	(print "Agreed. Let's find the rest of Zulu team while we're at it")
	(sound_impulse_start "sound\shigure\dialogue\paige\lets find the rest of zulu team" none 1)
	(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\paige\lets find the rest of zulu team")))
	
	(camera_set cin_a_3 100)
	(sleep 20)
	
	(print "I'll scout ahead, make sure we arent walking into an ambush")
	(sound_impulse_start "sound\shigure\dialogue\priya\ill scout ahead" none 1)
	(sleep (+ 15 (sound_impulse_time "sound\shigure\dialogue\priya\ill scout ahead")))
	
	(sound_impulse_start "sound\shigure\dialogue\priya\get yourself patched up" none 1)
	(sleep (+ 1 (sound_impulse_time "sound\shigure\dialogue\priya\get yourself patched up")))
	
	(camera_set cin_a_4 200)
	(sleep 50)
	
	(if do_music (sound_impulse_start "sound\shigure\music\dead_heroes" none 1))
	(sleep 50)

	(camera_set cin_a_5 260)
	(sleep 200)
	(fade_out 1 1 1 60)
	(wake chapter_title_1)
	;(cinematic_stop)
	(sleep 60)
	(game_won)
	;(disable_cinematic_stuff)
	))
	(wake a_load_and_teleport)
)

(script static void cin_x3
(if (and do_cinematics do_intro)
	(begin
	(switch_bsp 2)

	(object_teleport (player0) f_y_3)
	(object_teleport (player1) f_y_2)
	
	(ai_place x_1)
	(ai_erase x_1/skirms)
	
	(ai_command_list x_1/player cl_x3_player)
	
	;
	(sleep 1)
	(vehicle_load_magic v_x_ghost_1 "" (ai_actors x_1/x_ghost_pilot_1))
	(vehicle_load_magic v_x_ghost_2 "" (ai_actors x_1/x_ghost_pilot_2))
	(vehicle_load_magic v_x_wraith "" (ai_actors x_1/x_wraith_pilot))
	(vehicle_load_magic v_x_ghoul_1 "" (ai_actors x_1/x_ghoul_pilot_1))
	(vehicle_load_magic v_x_ghoul_2 "" (ai_actors x_1/x_ghoul_pilot_2))
	
	(vehicle_load_magic v_x_shadow_1 "" (ai_actors x_1/x_transport_pilot_1))
	(vehicle_load_magic v_x_shadow_2 "" (ai_actors x_1/x_transport_pilot_2))
	(vehicle_load_magic v_x_shadow_3 "" (ai_actors x_1/x_transport_pilot_3))
	(vehicle_load_magic v_x_shadow_4 "" (ai_actors x_1/x_transport_pilot_4))
		
	(sleep 70)
	(fade_in 1 1 1 80)
	;(camera_set cin_y2_3 0)
	
	(camera_set cin_y2_1 0)
	(sleep 250)
	
	(print "marine corpse closeup")
	(ai_place x_1/skirms)
	(camera_set cin_y2_2 0)
	(sleep 200)
	
	(print "convoy")
	
	(camera_set cin_y2_3 0)
	(sleep 100)
	
	;
	(object_teleport (player0) f_y_1)
	(fade_in 1 1 1 0)
	
	(print "cliff")
	
	(camera_set cin_y2_4 0)
	(camera_set cin_y2_5 90)
	
	(cinematic_set_title s_x2)
	(sleep 40)
	
	(print "Bravo 4, Zulu 1, over. Bravo 4, do you read me")
	(sound_impulse_start "sound\shigure\dialogue\paige\baker 4" none 1)
	(sleep (+ 30 (sound_impulse_time "sound\shigure\dialogue\paige\baker 4")))
	
	;(sleep 120)
	(ai_command_list_advance x_1/player)

	
	(sleep 40)
	(camera_set cin_y2_6 0)
	(sleep 40)
	))
	
	(cin_a)
)

(script static void cin_x2
	(if (and do_cinematics do_intro)
	(begin
	(switch_bsp 2)
	
	(object_teleport (player0) f_yy_1)
	(object_teleport (player1) f_yy_2)
	
	(fade_out 1 1 1 0)
	(fade_in 1 1 1 70)
	
	(camera_set cin_y1_1 0)
	(sleep 1)
	(camera_set cin_y1_2 450)
	
	(sleep 310)
	(camera_set cin_y1_3 350)
	(sleep 300)
	(fade_out 1 1 1 100)
	(sleep 100)
	))
	(cin_x3)
)

(script static void cin_x1
	(if (and do_cinematics do_intro)
	(begin
	(cinematic_start)
	(enable_cinematic_stuff)
	(switch_bsp 1)
	
	(if do_music (wake music_new_alexandria))
	
	(camera_set cin_x1 0)
	(fade_in 0 0 0 70)
	
	(sleep 50)
	
	
	(camera_set cin_x2 300)
	
	(sleep 60)
	(print "Attention, recruits. I am Lieutenant Kurt Ambrose.")
	
	(sleep 50)
	(camera_set cin_x3 470)
	(wake hud_s_x1)
	
	(sleep 50)
	(print "The war that started over Harvest has spread to your colonies.")
	
	(sleep 200)
	(camera_set cin_x4 410)
	
	(sleep 30)
	(print "I am going to give you a chance to learn how to fight, a chance to become the best soldiers the yuen essee has ever produced-")
	
	(sleep 300)
	(print "-a chance to destroy the Covenant. I am giving you a chance to be like me: a Spartan.")
	(camera_set cin_x5 300)
	
	(sleep 200)
	(fade_out 1 1 1 100)
	(sleep 100)
	))
	(cin_x2)
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
	
	(sleep 5)
)


;]

;========== Main ==========

(script startup main_sequence
	(ai_allegiance player human)
	(set sound_gain_under_dialog 0.3)
	(enable_cinematic_stuff)
	
	(cin_x1)
	;(cin_a)
)
