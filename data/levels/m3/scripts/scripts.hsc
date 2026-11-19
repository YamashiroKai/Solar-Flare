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
	;(ai_magically_see_encounter e_1 e_1_allies)
	(ai_magically_see_players d_2/sui)
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
		(fade_out 1 1 1 0)
		(switch_bsp 3)
	
		(object_teleport (player0) f_d_start_1)
		(object_teleport (player1) f_d_start_2)
		(save_game_unsafe)
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
		(fade_in 1 1 1 40)
		
		(sleep 100)
		(print "Priya: I'm getting off here, one. I'm gonna see if I can find our lost boys in the air.")
		(sound_impulse_start "sound\shigure\dialogue\priya\im getting off here" none 1)
		(sleep (+ 1 (sound_impulse_time "sound\shigure\dialogue\priya\im getting off here")))
		
		;(sleep 50)
		(wake cin_d_fly)
	
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

;]

;========== Load Zones ==========
;[

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

(script startup d_end_loadzone
	(sleep_until (volume_test_objects t_d_end (players)) 15)
	(deactivate_team_nav_point_flag player "f_d_exit")
	
	(ai_erase d_1)
	(ai_erase d_2)
	(ai_erase d_2_vehicles)
	(ai_erase d_2_allies)
	(ai_erase d_3)
	(ai_erase d_4)
	(ai_erase d_4_flyer)
	(garbage_collect_now)
	
	(cin_e)
)

(script startup e_end_loadzone
	(sleep_until (volume_test_objects t_bunker (players)) 15)
	
	(ai_erase e_1)
	(ai_erase e_1_allies)
	(garbage_collect_now)
	
	(wake f_load_and_teleport)
)
;]

;]

;========== BSP D ==========
;[
(script startup d
	(if do_bsp_d
	(begin
	
	(sleep_until (volume_test_objects t_crater_exit (players)) 15)
	(object_create v_d_kanga_1)
	(deactivate_team_nav_point_flag player "f_d_start_1")
	
	(sleep 70)
	(wake objective_convoy)
	
	(sleep_until (volume_test_objects t_creepy_road (players)) 15)
	(ai_place d_1)
	(if do_music (wake music_metallic_monks))
	(save_game_unsafe)
	
	(sleep_until (volume_test_objects t_creepy_road_2 (players)) 15)
	(save_game)
	
	))
)

(script startup d_landfill
	(sleep_until (volume_test_objects t_landfill (players)) 15)
	(save_game_unsafe)
	(ai_place d_2)
	(ai_erase d_2/stealth)
	
	(ai_place d_2_allies)
	(ai_place d_2_vehicles)
	
	(activate_team_nav_point_flag "default_red" player "f_d_marines" 0)
	

)

(script startup d_landfill_2
	(sleep_until (volume_test_objects t_landfill_2 (players)) 15)
	
	(stop_music)
	;marine dialogue
	(sleep 100)
	
	(print "Neo: I see you've found our missing convoy.")
	(sound_impulse_start "sound\shigure\dialogue\neo\found our missing convoy" none 1)
	(sleep (+ 25 (sound_impulse_time "sound\shigure\dialogue\neo\found our missing convoy")))
	
	(print "Priya: I'll radio for evac, but we got bigger problems now.")
	(sound_impulse_start "sound\shigure\dialogue\priya\ill radio for evac" none 1)
	(sleep (+ 10 (sound_impulse_time "sound\shigure\dialogue\priya\ill radio for evac")))
	
	(print "Ricky: This line is getting overrun. Push on through, we need you back here, boss. ")	
	(sound_impulse_start "sound\shigure\dialogue\ricky\our triple A is getting overrun" none 1)
	(sleep (+ 25 (sound_impulse_time "sound\shigure\dialogue\ricky\our triple A is getting overrun")))
	
	(sound_impulse_start "sound\shigure\dialogue\ricky\push on through" none 1)
	(sleep (+ 5 (sound_impulse_time "sound\shigure\dialogue\ricky\push on through")))
	
	(save_game_unsafe)
	
	(vehicle_load_magic v_d_ghost1 "" (ai_actors d_2_vehicles/1))
	(vehicle_load_magic v_d_ghost2 "" (ai_actors d_2_vehicles/2))
	(vehicle_load_magic v_d_ghoul1 "" (ai_actors d_2_vehicles/3))
	(vehicle_load_magic v_d_ghoul2 "" (ai_actors d_2_vehicles/4))
	(vehicle_load_magic v_d_wraith1 "" (ai_actors d_2_vehicles/5))
	;(vehicle_load_magic v_d_spectre1 "" (ai_actors d_2_vehicles/9))
	;(vehicle_load_magic v_d_shee "" (ai_actors d_4_flyer/2))
	
	(sleep 200)
	
	(wake objective_lines)
	(ai_place d_2/stealth)
	
	(if do_music (wake music_autumn))
	(deactivate_team_nav_point_flag player "f_d_marines")
	
	(sleep 200)
	(save_game)
	(activate_team_nav_point_flag "default_red" player "f_d_cliff" 0)
	
)

(script startup d_landfill_exit
	(sleep_until (volume_test_objects t_landfill_exit (players)) 15)
	(save_game)
	(ai_vehicle_enterable_distance v_d_wraith2 30)
	(deactivate_team_nav_point_flag player "f_d_cliff")
	(stop_music)
)

(script startup d_canyon1
	(sleep_until (volume_test_objects t_canyon1 (players)) 15)
	(save_game_unsafe)
	(deactivate_team_nav_point_flag player "f_d_cliff")
	
	(ai_place d_3)
	(ai_vehicle_enterable_distance v_d_ghost5 30)
	(ai_vehicle_enterable_distance v_d_ghost6 30)
	(ai_vehicle_enterable_distance v_d_ghost7 30)
	(ai_vehicle_enterable_distance v_d_spectre2 30)
	(ai_vehicle_enterable_distance v_d_turret1 30)
	(ai_vehicle_enterable_distance v_d_turret2 30)
	(ai_vehicle_enterable_distance v_d_turret3 30)
	(ai_vehicle_enterable_distance v_d_turret4 30)
	
	(sleep_until (volume_test_objects t_canyon_music (players)) 15)
	(save_game_unsafe)
	(if do_music (wake music_perchance))
	
	(sleep_until (volume_test_objects t_d_valley_checkpoint (players)) 15)
	(save_game)
	(activate_team_nav_point_flag "default_red" player "f_d_cave" 0)
	
	(sleep_until (volume_test_objects t_d_cave (players)) 15)
	(save_game)
	(deactivate_team_nav_point_flag player "f_d_cave")
)

(script startup d_canyon2
	(sleep_until (volume_test_objects t_canyon2 (players)) 15)
	(save_game_unsafe)
	(stop_music)
	(deactivate_team_nav_point_flag player "f_d_cave")
	
	(ai_place d_4)
	(ai_erase d_4/big_guy)
	(sleep 15)
	
	(sleep 120)
	(if do_music (wake music_under_cover_light_2))
	
	(ai_vehicle_enterable_distance v_d_turret5 30)
	(ai_vehicle_enterable_distance v_d_turret6 30)
	(ai_vehicle_enterable_distance v_d_turret7 30)
	(ai_vehicle_enterable_distance v_d_wraith3 50)
	
	(sleep_until (volume_test_objects t_canyon2_save1 (players)) 15)
	(save_game)
	(activate_team_nav_point_flag "default_red" player "f_d_exit" 0)
	
	(sleep 1200)
	(ai_place d_4_flyer)
	(vehicle_load_magic v_d_banshee3 "" (ai_actors d_4_flyer/1))
	
	(sleep_until (volume_test_objects t_canyon2_big_guy (players)) 15)
	(save_game)
	(ai_place d_4/big_guy)
)

(script continuous d_kill_barrier_1
  (if (volume_test_object t_d_kill_barrier_1 (list_get (players) 0))
    (unit_kill (unit (list_get (players) 0)))
  )
  (if (volume_test_object t_d_kill_barrier_1 (list_get (players) 1))
    (unit_kill (unit (list_get (players) 1)))
  )
)

(script continuous d_kill_barrier_2
  (if (volume_test_object t_d_kill_barrier_2 (list_get (players) 0))
    (unit_kill (unit (list_get (players) 0)))
  )
  (if (volume_test_object t_d_kill_barrier_2 (list_get (players) 1))
    (unit_kill (unit (list_get (players) 1)))
  )
)

;]

;========== BSP E ==========
;[
(script startup e
	(if do_bsp_e
	(begin
	
	(sleep_until (volume_test_objects t_trenches_start (players)) 15)
	(save_game_unsafe)
	(stop_music)
	
	(ai_place e_1_allies)
	(ai_place e_1)
	
	;(object_teleport (player0) benis)
	
	(sleep_until (volume_test_objects t_trenches (players)) 15)
	(if do_music (wake music_death_game_tense))
	
	;(sleep 800)
	(save_game_unsafe)
	(activate_team_nav_point_flag "default_red" player "f_bunker1" 0)

	(sleep_until (volume_test_objects t_bunker1 (players)) 15)
	(deactivate_team_nav_point_flag player "f_bunker1")
	(activate_team_nav_point_flag "default_red" player "f_bunker2" 0)
	))
)

;]

;========== BSP F ==========
;[
(script startup f
	(if do_bsp_f
	(begin
	(object_destroy v_f_last_ds)
	
	(sleep_until (volume_test_objects t_bunker (players)) 15)
	(save_game_unsafe)
	(deactivate_team_nav_point_flag player "f_bunker2")
	(ai_place f_1_allies/1)
	;(stop_music)
	
	(wake objective_trenches)
	
	(sleep_until (volume_test_objects t_f_1 (players)) 15)
	
	;(if do_music (wake music_SC4m17))
	(if do_music (wake music_death_game))
	(activate_team_nav_point_flag "default_red" player "f_end" 0)
	
	(ai_place f_1/jaks1)
	(ai_place f_1/grunts3)
	
	(ai_place f_1/grunts1)
	(ai_command_list "f_1/grunts1" "cl_bitches")
	(fade_in 1 1 1 5)
	
	(sleep_until (volume_test_objects t_f_2 (players)) 15)
	(ai_place f_1/elites2)
	
	(ai_place f_1/grunts2)
	(ai_command_list "f_1/grunts2" "cl_bitches")
	
	(sleep_until (volume_test_objects t_f_3 (players)) 15)
	(ai_place f_1/elites1)
	(ai_place f_1_allies/2)
	(ai_command_list "f_1/elites1" "cl_bitches")
	
	(sleep 200)
	(ai_place f_1/elites3)
	(ai_place f_1_allies/2)
	
	(sleep_until (volume_test_objects t_f_4 (players)) 15)
	(ai_place f_1/jaks2)
	(ai_place f_1/grunts4)
	(ai_place f_1/jaks4)
	(ai_place f_1/jaks3)
	(ai_command_list "f_1/jaks2" "cl_bitches")
	
	;(sleep_until (volume_test_objects t_end_music (players)) 15)
	;(if do_music (wake music_death_game_tense))
	
	))
)

(script startup final_battle
	(sleep_until (volume_test_objects t_final_battle (players)) 15)
	(save_game_unsafe)
	(if do_music (wake music_death_game))
	
	(ai_erase f_1)
	(ai_erase f_1_allies)
	(ai_place f_final/hunters)
	(deactivate_team_nav_point_flag player "f_end")
	
	(object_create v_f_last_ds)
	(vehicle_hover v_f_last_ds true)
	(custom_animation v_f_last_ds levels\m1\animations\dropships\dropships f_last_ds false)
	
	(ai_place f_final/sword)
	(ai_place f_final/elites)
	
	(vehicle_load_magic v_f_last_ds "CD-passenger" (ai_actors f_final/sword))
	(vehicle_load_magic v_f_last_ds "CD-passenger" (ai_actors f_final/elites))
	(sleep 200)
	
	(vehicle_unload v_f_last_ds "CD-passenger")
	
	(sleep_until (= 0 (ai_living_count f_final)) 10)
	(stop_music)
	(cin_z)
	
)

;]

;========== Main ==========

(script startup main_sequence
	(ai_allegiance player human)
	(set sound_gain_under_dialog 0.4)
	
	;(enable_cinematic_stuff)
	;(switch_bsp 3)
	;(set cheat_deathless_player 1)
	
	(cin_d)
)
