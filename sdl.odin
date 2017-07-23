foreign_system_library (
	lib "SDL2.lib";
)

foreign lib {
	// Need to port SDL_RWops over to Odin, and that looks like a nightmare
	// write_be16 									:: proc() ->																																										#link_name "SDL_WriteBE16" ---;
	// write_be32 									:: proc() ->																																										#link_name "SDL_WriteBE32" ---;
	// write_be64 									:: proc() ->																																										#link_name "SDL_WriteBE64" ---;
	// write_le16 									:: proc() ->																																										#link_name "SDL_WriteLE16" ---;
	// write_le32 									:: proc() ->																																										#link_name "SDL_WriteLE32" ---;
	// write_le64 									:: proc() ->																																										#link_name "SDL_WriteLE64" ---;
	// write_u8 									:: proc() ->																																										#link_name "SDL_WriteU8" ---;
	// free_rw 										:: proc() ->																																										#link_name "SDL_FreeRW" ---;
	// game_controller_add_mappings_from_rw 		:: proc() ->																																										#link_name "SDL_GameControllerAddMappingsFromRW" ---;
	// load_bmp_rw 									:: proc() ->																																										#link_name "SDL_LoadBMP_RW" ---;
	// load_dollar_templates 						:: proc() ->																																										#link_name "SDL_LoadDollarTemplates" ---;
	// load_wav_rw 									:: proc() ->																																										#link_name "SDL_LoadWAV_RW" ---;
	// rw_from_const_mem 							:: proc() ->																																										#link_name "SDL_RWFromConstMem" ---;
	// rw_from_fp 									:: proc() ->																																										#link_name "SDL_RWFromFP" ---;
	// rw_from_file 								:: proc() ->																																										#link_name "SDL_RWFromFile" ---;
	// rw_from_mem 									:: proc() ->																																										#link_name "SDL_RWFromMem" ---;
	// read_be16 									:: proc() ->																																										#link_name "SDL_ReadBE16" ---;
	// read_be32 									:: proc() ->																																										#link_name "SDL_ReadBE32" ---;
	// read_be64 									:: proc() ->																																										#link_name "SDL_ReadBE64" ---;
	// read_le16 									:: proc() ->																																										#link_name "SDL_ReadLE16" ---;
	// read_le32 									:: proc() ->																																										#link_name "SDL_ReadLE32" ---;
	// read_le64 									:: proc() ->																																										#link_name "SDL_ReadLE64" ---;
	// read_u8 										:: proc() ->																																										#link_name "SDL_ReadU8" ---;
	// save_all_dollar_templates 					:: proc() ->																																										#link_name "SDL_SaveAllDollarTemplates" ---;
	// save_bmp_rw 									:: proc() ->																																										#link_name "SDL_SaveBMP_RW" ---;
	// save_dollar_template 						:: proc() ->																																										#link_name "SDL_SaveDollarTemplate" ---;
	// alloc_rw 									:: proc() -> 																																										#link_name "SDL_AllocRW" ---;

	// This one is missing from my source of SDL2 ???
	// dynapi_entry 								:: proc() ->																																										#link_name "SDL_DYNAPI_entry" ---;

	// The source for this one says you should never call it directly, but rather use the macros provided. Need to port those over still
	//report_assertion 								:: proc() ->																																										#link_name "SDL_ReportAssertion" ---;

	add_event_watch 								:: proc(filter: Event_Filter, userdata: rawptr)																																		#link_name "SDL_AddEventWatch" ---;
	add_hint_callback  								:: proc(name: ^u8, callback: Hint_Callback, userdata: rawptr)  																														#link_name "SDL_AddHintCallback" ---;
	add_timer 										:: proc(interval: u32, callback: Timer_Callback, param: rawptr) -> Timer_Id																											#link_name "SDL_AddTimer" ---;
	alloc_format 									:: proc(pixel_format: u32) -> Pixel_Format																																			#link_name "SDL_AllocFormat" ---;
	alloc_palette 									:: proc(ncolors: i32) -> ^Palette																																					#link_name "SDL_AllocPalette" ---;
	atomic_add 										:: proc(a: ^Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicAdd" ---;
	atomic_cas 										:: proc(a: ^Atomic, oldval: i32, newval: i32) -> Bool																																#link_name "SDL_AtomicCAS" ---;
	atomic_cas_ptr 									:: proc(a: ^rawptr, oldval: rawptr, newval: rawptr) -> Bool																															#link_name "SDL_AtomicCASPtr" ---;
	atomic_get 										:: proc(a: ^Atomic) -> i32																																							#link_name "SDL_AtomicGet" ---;
	atomic_get_ptr 									:: proc(a: ^rawptr) -> rawptr																																						#link_name "SDL_AtomicGetPtr" ---;
	atomic_lock 									:: proc(lock: ^Spin_Lock)																																							#link_name "SDL_AtomicLock" ---;
	atomic_set 										:: proc(a: ^Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicSet" ---;
	atomic_set_ptr 									:: proc(a: ^rawptr, v: rawptr) -> rawptr																																			#link_name "SDL_AtomicSetPtr" ---;
	atomic_try_lock 								:: proc(lock: ^Spin_Lock) -> Bool																																					#link_name "SDL_AtomicTryLock" ---;
	atomic_unlock 									:: proc(lock: ^Spin_Lock)																																							#link_name "SDL_AtomicUnlock" ---;
	audio_init 										:: proc(driver_name: ^u8) -> i32																																					#link_name "SDL_AudioInit" ---;
	audio_quit 										:: proc()																																											#link_name "SDL_AudioQuit" ---;
	build_audio_cvt 								:: proc(cvt: ^Audio_Cvt, src_format: Audio_Format, src_channels: u8, src_rate: i32, dst_format: Audio_Format, dst_channels: u8, dst_rate: i32) -> i32								#link_name "SDL_BuildAudioCVT" ---;
	calculate_gamma_ramp 							:: proc(gamma: f32, ramp: ^u16)																																						#link_name "SDL_CalculateGammaRamp" ---;
	capture_mouse 									:: proc(enabled: Bool) -> i32																																						#link_name "SDL_CaptureMouse" ---;
	clear_error 									:: proc()																																											#link_name "SDL_ClearError" ---;
	clear_hints 									:: proc()																																											#link_name "SDL_ClearHints" ---;
	clear_queued_audio 								:: proc(dev: Audio_Device)																																							#link_name "SDL_ClearQueuedAudio" ---;
	close_audio 									:: proc()																																											#link_name "SDL_CloseAudio" ---;
	close_audio_device 								:: proc(dev: Audio_Device)																																							#link_name "SDL_CloseAudioDevice" ---;
	cond_broadcast 									:: proc(cond: ^Cond) -> i32																																							#link_name "SDL_CondBroadcast" ---;
	cond_signal 									:: proc(cond: ^Cond) -> i32																																							#link_name "SDL_CondSignal" ---;
	cond_wait 										:: proc(cond: ^Cond, mutex: ^Mutex) -> i32																																			#link_name "SDL_CondWait" ---;
	cond_wait_timeout 								:: proc(cond: ^Cond, mutex: ^Mutex, ms: u32) -> i32																																	#link_name "SDL_CondWaitTimeout" ---;
	convert_audio 									:: proc(cvt: ^Audio_Cvt) -> i32																																						#link_name "SDL_ConvertAudio" ---;
	convert_pixels 									:: proc(width: i32, height: i32, src_format: u32, src: rawptr, src_pitch: i32, dst_format: u32, dst: rawptr, dst_pitch: i32) -> i32													#link_name "SDL_ConvertPixels" ---;
	convert_surface 								:: proc(src: ^Surface, fmt: ^Pixel_Format, flags: u32) -> ^Surface																													#link_name "SDL_ConvertSurface" ---;
	convert_surface_format 							:: proc(src: ^Surface, pixel_format: u32, flags: u32) -> ^Surface																													#link_name "SDL_ConvertSurfaceFormat" ---;
	create_color_cursor 							:: proc(surface: ^Surface, hot_x, hot_y: i32) -> ^Cursor																															#link_name "SDL_CreateColorCursor" ---;
	create_cond 									:: proc() -> ^Cond																																									#link_name "SDL_CreateCond" ---;
	create_cursor 									:: proc(data: ^u8, mask: ^u8, w, h: i32, hot_x, hot_y: i32) -> ^Cursor																												#link_name "SDL_CreateCursor" ---;
	create_mutex 									:: proc() -> ^Mutex																																									#link_name "SDL_CreateMutex" ---;
	create_rgb_surface 								:: proc(flags: u32, width, height, depth: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^Surface																							#link_name "SDL_CreateRGBSurface" ---;
	create_rgb_surface_from 						:: proc(pixels: rawptr, width, height, depth, pitch: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^Surface																				#link_name "SDL_CreateRGBSurfaceFrom" ---;
	create_rgb_surface_with_format 					:: proc(flags: u32, width, height, depth: i32, format: u32) -> ^Surface																												#link_name "SDL_CreateRGBSurfaceWithFormat" ---;
	create_rgb_surface_with_format_from 			:: proc(pixels: rawptr, width, height, depth, pitch: i32, format: u32) -> ^Surface																									#link_name "SDL_CreateRGBSurfaceWithFormatFrom" ---;
	create_renderer 								:: proc(window: ^Window, index: i32, flags: u32) -> ^Renderer																														#link_name "SDL_CreateRenderer" ---;
	create_semaphore 								:: proc(initial_value: u32) -> ^Sem																																					#link_name "SDL_CreateSemaphore" ---;
	create_shaped_window 							:: proc(title: ^u8, x, y, w, h: u32, flags: u32) -> ^Window																															#link_name "SDL_CreateShapedWindow" ---;
	create_software_renderer 						:: proc(surface: ^Surface) -> ^Renderer																																				#link_name "SDL_CreateSoftwareRenderer" ---;
	create_system_cursor 							:: proc(id: System_Cursor) -> ^Cursor																																				#link_name "SDL_CreateSystemCursor" ---;
	create_texture 									:: proc(renderer: ^Renderer, format: u32, access: i32, w, h: i32) -> ^Texture																										#link_name "SDL_CreateTexture" ---;
	create_texture_from_surface 					:: proc(renderer: ^Renderer, surface: ^Surface) -> ^Texture																															#link_name "SDL_CreateTextureFromSurface" ---;
	create_thread 									:: proc(fn: Thread_Function, name: ^u8, data: rawptr) -> ^Thread 																													#link_name "SDL_CreateThread" ---;
	create_window 									:: proc(title: ^u8, x, y, w, h: i32, flags: u32) -> ^Window																															#link_name "SDL_CreateWindow" ---;
	create_window_and_renderer 						:: proc(width, height: i32, window_flags: u32, window: ^^Window, renderer: ^^Renderer) -> i32																						#link_name "SDL_CreateWindowAndRenderer" ---;
	create_window_from 								:: proc(data: rawptr) -> ^Window																																					#link_name "SDL_CreateWindowFrom" ---;
	dxgi_get_output_info 							:: proc(display_index: i32, adapter_index: ^i32, output_index: ^i32) -> Bool																										#link_name "SDL_DXGIGetOutputInfo" ---;
	del_event_watch 								:: proc(filter: Event_Filter, userdata: rawptr)																																		#link_name "SDL_DelEventWatch" ---;
	del_hint_callback 								:: proc(name: ^u8, callback: Hint_Callback, userdata: rawptr)																														#link_name "SDL_DelHintCallback" ---;
	delay 											:: proc(ms: u32)																																									#link_name "SDL_Delay" ---;
	dequeue_audio 									:: proc(dev: Audio_Device_Id, data: rawptr, len: u32) -> u32																														#link_name "SDL_DequeueAudio" ---;
	destroy_cond 									:: proc(cond: ^Cond)																																								#link_name "SDL_DestroyCond" ---;
	destroy_mutex 									:: proc(mutex: ^Mutex)																																								#link_name "SDL_DestroyMutex" ---;
	destroy_renderer 								:: proc(renderer: ^Renderer)																																						#link_name "SDL_DestroyRenderer" ---;
	destroy_semaphore 								:: proc(sem: ^Sem)																																									#link_name "SDL_DestroySemaphore" ---;
	destroy_texture 								:: proc(texture: ^Texture)																																							#link_name "SDL_DestroyTexture" ---;
	destroy_window 									:: proc(window: ^Window)																																							#link_name "SDL_DestroyWindow" ---;
	detach_thread 									:: proc(thread: ^Thread)																																							#link_name "SDL_DetachThread" ---;
	direct_3d9_get_adapter_index 					:: proc(display_index: i32) -> i32																																					#link_name "SDL_Direct3D9GetAdapterIndex" ---;
	disable_screen_saver 							:: proc()																																											#link_name "SDL_DisableScreenSaver" ---;
	enable_screen_saver 							:: proc()																																											#link_name "SDL_EnableScreenSaver" ---;
	enclose_points 									:: proc(points: ^Point, count: i32, clip: ^Rect, result: ^Rect) -> Bool																												#link_name "SDL_EnclosePoints" ---;
	error 											:: proc(code: Error_Code) -> i32																																					#link_name "SDL_Error" ---;
	event_state 									:: proc(event_type: u32, state: i32) -> u8																																			#link_name "SDL_EventState" ---;
	fill_rect 										:: proc(dst: ^Surface, rect: ^Rect, color: u32) -> i32																																#link_name "SDL_FillRect" ---;
	fill_rects 										:: proc(dst: ^Surface, rect: ^Rect, count: i32, color: u32) -> i32																													#link_name "SDL_FillRects" ---;
	filter_events 									:: proc(filter: Event_Filter, userdata: rawptr)																																		#link_name "SDL_FilterEvents" ---;
	flush_event 									:: proc(event_type: u32)																																							#link_name "SDL_FlushEvent" ---;
	flush_events 									:: proc(min_type: u32, max_type: u32)																																				#link_name "SDL_FlushEvents" ---;
	free_cursor 									:: proc(cursor: ^Cursor)																																							#link_name "SDL_FreeCursor" ---;
	free_format 									:: proc(format: ^Pixel_Format)																																						#link_name "SDL_FreeFormat" ---;
	free_palette 									:: proc(palette: ^Palette)																																							#link_name "SDL_FreePalette" ---;
	free_surface 									:: proc(surface: ^Surface)																																							#link_name "SDL_FreeSurface" ---;
	free_wav 										:: proc(audio_buf: ^u8)																																								#link_name "SDL_FreeWAV" ---;
	gl_bind_texture 								:: proc(texture: ^Texture, texw, texh: ^f32) -> i32																																	#link_name "SDL_GL_BindTexture" ---;
	gl_create_context 								:: proc(window: ^Window) -> GL_Context																																				#link_name "SDL_GL_CreateContext" ---;
	gl_delete_context 								:: proc(gl_context: GL_Context)																																						#link_name "SDL_GL_DeleteContext" ---;
	gl_extension_supported 							:: proc(extension: ^u8) -> Bool																																						#link_name "SDL_GL_ExtensionSupported" ---;
	gl_get_attribute 								:: proc(attr: GL_Attr, value: ^i32) -> i32																																			#link_name "SDL_GL_GetAttribute" ---;
	gl_get_current_context 							:: proc() -> GL_Context																																								#link_name "SDL_GL_GetCurrentContext" ---;
	gl_get_current_window 							:: proc() -> ^Window																																								#link_name "SDL_GL_GetCurrentWindow" ---;
	gl_get_drawable_size 							:: proc(window: ^Window, w, h: ^i32)																																				#link_name "SDL_GL_GetDrawableSize" ---;
	gl_get_proc_address 							:: proc(name: ^u8) -> rawptr																																						#link_name "SDL_GL_GetProcAddress" ---;
	gl_get_swap_interval 							:: proc() -> i32																																									#link_name "SDL_GL_GetSwapInterval" ---;
	gl_load_library 								:: proc(path: ^u8) -> i32																																							#link_name "SDL_GL_LoadLibrary" ---;
	gl_make_current 								:: proc(window: ^Window, gl_context: GL_Context) -> i32																																#link_name "SDL_GL_MakeCurrent" ---;
	gl_reset_attributes 							:: proc()																																											#link_name "SDL_GL_ResetAttributes" ---;
	gl_set_attribute 								:: proc(attr: GL_Attr, value: i32) -> i32																																			#link_name "SDL_GL_SetAttribute" ---;
	gl_set_swap_interval 							:: proc(interval: i32) -> i32																																						#link_name "SDL_GL_SetSwapInterval" ---;
	gl_swap_window 									:: proc(window: ^Window)																																							#link_name "SDL_GL_SwapWindow" ---;
	gl_unbind_texture 								:: proc(texture: ^Texture) -> i32																																					#link_name "SDL_GL_UnbindTexture" ---;
	gl_unload_library 								:: proc()																																											#link_name "SDL_GL_UnloadLibrary" ---;
	game_controller_add_mapping 					:: proc(mapping_string: ^u8) -> i32																																					#link_name "SDL_GameControllerAddMapping" ---;
	game_controller_close 							:: proc(game_controller: ^Game_Controller)																																			#link_name "SDL_GameControllerClose" ---;
	game_controller_event_state 					:: proc(state: i32) -> i32																																							#link_name "SDL_GameControllerEventState" ---;
	game_controller_from_instance_id 				:: proc(joy_id: Joystick_Id) ->	^Game_Controller																																	#link_name "SDL_GameControllerFromInstanceID" ---;
	game_controller_get_attached 					:: proc(game_controller: ^Game_Controller) -> Bool																																	#link_name "SDL_GameControllerGetAttached" ---;
	game_controller_get_axis 						:: proc(game_controller: ^Game_Controller, axis: Game_Controller_Axis) -> i16																										#link_name "SDL_GameControllerGetAxis" ---;
	game_controller_get_axis_from_string 			:: proc(pch_string: ^u8) -> ^u8																																						#link_name "SDL_GameControllerGetAxisFromString" ---;
	game_controller_get_bind_for_axis 				:: proc(game_controller: ^Game_Controller, axis: Game_Controller_Axis) -> Game_Controller_Button_Bind																				#link_name "SDL_GameControllerGetBindForAxis" ---;
	game_controller_get_bind_for_button 			:: proc(game_controller: ^Game_Controller, button: Game_Controller_Button) -> Game_Controller_Button_Bind																			#link_name "SDL_GameControllerGetBindForButton" ---;
	game_controller_get_button 						:: proc(game_controller: ^Game_Controller, button: Game_Controller_Button) -> u8																									#link_name "SDL_GameControllerGetButton" ---;
	game_controller_get_button_from_string 			:: proc(pch_string: ^u8) -> Game_Controller_Button																																	#link_name "SDL_GameControllerGetButtonFromString" ---;
	game_controller_get_joystick 					:: proc(game_controller: ^Game_Controller) -> ^Joystick																																#link_name "SDL_GameControllerGetJoystick" ---;
	game_controller_get_string_for_axis 			:: proc(axis: Game_Controller_Axis) -> ^u8																																			#link_name "SDL_GameControllerGetStringForAxis" ---;
	game_controller_get_string_for_button 			:: proc(button: Game_Controller_Button) -> ^u8																																		#link_name "SDL_GameControllerGetStringForButton" ---;
	game_controller_mapping 						:: proc(game_controller: ^Game_Controller) -> ^u8																																	#link_name "SDL_GameControllerMapping" ---;
	game_controller_mapping_for_guid 				:: proc(guid: Joystick_Guid) -> ^u8																																					#link_name "SDL_GameControllerMappingForGUID" ---;
	game_controller_name 							:: proc(game_controller: ^Game_Controller) -> ^u8																																	#link_name "SDL_GameControllerName" ---;
	game_controller_name_for_index 					:: proc(joystick_index: i32) -> ^u8																																					#link_name "SDL_GameControllerNameForIndex" ---;
	game_controller_open 							:: proc(joystick_index: i32) -> ^Game_Controller																																	#link_name "SDL_GameControllerOpen" ---;
	game_controller_update 							:: proc()																																											#link_name "SDL_GameControllerUpdate" ---;
	get_assertion_handler 							:: proc(userdata: ^rawptr) -> Assertion_Handler																																		#link_name "SDL_GetAssertionHandler" ---;
	get_assertion_report 							:: proc() -> ^Assert_Data																																							#link_name "SDL_GetAssertionReport" ---;
	get_audio_device_name 							:: proc(index: i32, iscapture: i32) -> ^u8																																			#link_name "SDL_GetAudioDeviceName" ---;
	get_audio_device_status 						:: proc(dev: Audio_Device_Id) -> Audio_Status																																		#link_name "SDL_GetAudioDeviceStatus" ---;
	get_audio_driver 								:: proc(index: i32) -> ^u8																																							#link_name "SDL_GetAudioDriver" ---;
	get_audio_status 								:: proc() -> Audio_Status																																							#link_name "SDL_GetAudioStatus" ---;
	get_base_path 									:: proc() -> ^u8																																									#link_name "SDL_GetBasePath" ---;
	get_cpu_cache_line_size 						:: proc() -> i32																																									#link_name "SDL_GetCPUCacheLineSize" ---;
	get_cpu_count 									:: proc() -> i32																																									#link_name "SDL_GetCPUCount" ---;
	get_clip_rect 									:: proc(surface: ^Surface, rect: ^Rect)																																				#link_name "SDL_GetClipRect" ---;
	get_clipboard_text 								:: proc() -> ^u8																																									#link_name "SDL_GetClipboardText" ---;
	get_closest_display_mode 						:: proc(display_index: i32, mode: ^Display_Mode, closest: ^Display_Mode) -> ^Display_Mode																							#link_name "SDL_GetClosestDisplayMode" ---;
	get_color_key 									:: proc(surface: ^Surface, key: ^u32) -> i32																																		#link_name "SDL_GetColorKey" ---;
	get_current_audio_driver 						:: proc() -> ^u8																																									#link_name "SDL_GetCurrentAudioDriver" ---;
	get_current_display_mode 						:: proc(display_index: i32, mode: ^Display_Mode) -> i32																																#link_name "SDL_GetCurrentDisplayMode" ---;
	get_current_video_driver 						:: proc() -> ^u8																																									#link_name "SDL_GetCurrentVideoDriver" ---;
	get_cursor 										:: proc() -> ^Cursor																																								#link_name "SDL_GetCursor" ---;
	get_default_assertion_handler 					:: proc() -> Assertion_Handler																																						#link_name "SDL_GetDefaultAssertionHandler" ---;
	get_default_cursor 								:: proc() -> ^Cursor																																								#link_name "SDL_GetDefaultCursor" ---;
	get_desktop_display_mode 						:: proc(display_index: i32, mode: ^Display_Mode) -> i32																																#link_name "SDL_GetDesktopDisplayMode" ---;
	get_display_bounds 								:: proc(display_index: i32, rect: ^Rect) -> i32																																		#link_name "SDL_GetDisplayBounds" ---;
	get_display_dpi 								:: proc(display_index: i32, ddpi, hdpi, vdpi: ^f32) -> i32																															#link_name "SDL_GetDisplayDPI" ---;
	get_display_mode 								:: proc(display_index: i32, mode_index: i32, mode: ^Display_Mode) -> i32																											#link_name "SDL_GetDisplayMode" ---;
	get_display_name 								:: proc(display_index: i32) -> ^u8																																					#link_name "SDL_GetDisplayName" ---;
	get_display_usable_bounds 						:: proc(display_index: i32, rect: ^Rect) -> i32																																		#link_name "SDL_GetDisplayUsableBounds" ---;
	get_error 										:: proc() -> ^u8																																									#link_name "SDL_GetError" ---;
	get_event_filter 								:: proc(filter: ^Event_Filter, userdata: ^rawptr) -> Bool																															#link_name "SDL_GetEventFilter" ---;
	get_global_mouse_state 							:: proc(x, y: ^i32) -> u32																																							#link_name "SDL_GetGlobalMouseState" ---;
	get_grabbed_window 								:: proc() -> ^Window																																								#link_name "SDL_GetGrabbedWindow" ---;
	get_hint 										:: proc(name: ^u8) -> ^u8																																							#link_name "SDL_GetHint" ---;
	get_hint_boolean 								:: proc(name: ^u8, default_value: Bool) -> Bool																																		#link_name "SDL_GetHintBoolean" ---;
	get_key_from_name 								:: proc(name: ^u8) -> Keycode																																						#link_name "SDL_GetKeyFromName" ---;
	get_key_from_scancode 							:: proc(scancode: Scancode) -> Keycode																																				#link_name "SDL_GetKeyFromScancode" ---;
	get_key_name 									:: proc(key: Keycode) -> ^u8																																						#link_name "SDL_GetKeyName" ---;
	get_keyboard_focus 								:: proc() -> ^Window																																								#link_name "SDL_GetKeyboardFocus" ---;
	get_keyboard_state 								:: proc(numkeys: ^i32) -> ^u8																																						#link_name "SDL_GetKeyboardState" ---;
	get_mod_state 									:: proc() -> Keymod																																									#link_name "SDL_GetModState" ---;
	get_mouse_focus 								:: proc() -> ^Window																																								#link_name "SDL_GetMouseFocus" ---;
	get_mouse_state 								:: proc(x, y: ^i32) -> u32																																							#link_name "SDL_GetMouseState" ---;
	get_num_audio_devices 							:: proc(iscapture: i32) -> i32																																						#link_name "SDL_GetNumAudioDevices" ---;
	get_num_audio_drivers 							:: proc() -> i32																																									#link_name "SDL_GetNumAudioDrivers" ---;
	get_num_display_modes 							:: proc(display_index: i32) -> i32																																					#link_name "SDL_GetNumDisplayModes" ---;
	get_num_render_drivers 							:: proc() -> i32																																									#link_name "SDL_GetNumRenderDrivers" ---;
	get_num_touch_devices 							:: proc() -> i32																																									#link_name "SDL_GetNumTouchDevices" ---;
	get_num_touch_fingers 							:: proc(touch_id: Touch_Id) -> i32																																					#link_name "SDL_GetNumTouchFingers" ---;
	get_num_video_displays 							:: proc() -> i32																																									#link_name "SDL_GetNumVideoDisplays" ---;
	get_num_video_drivers 							:: proc() -> i32																																									#link_name "SDL_GetNumVideoDrivers" ---;
	get_performance_counter 						:: proc() -> u64																																									#link_name "SDL_GetPerformanceCounter" ---;
	get_performance_frequency 						:: proc() -> u64																																									#link_name "SDL_GetPerformanceFrequency" ---;
	get_pixel_format_name 							:: proc(format: u32) -> ^u8																																							#link_name "SDL_GetPixelFormatName" ---;
	get_platform 									:: proc() -> ^u8																																									#link_name "SDL_GetPlatform" ---;
	get_power_info 									:: proc(secs, pct: ^i32) -> Power_State																																				#link_name "SDL_GetPowerInfo" ---;
	get_pref_path 									:: proc(org, app: ^u8) -> ^u8																																						#link_name "SDL_GetPrefPath" ---;
	get_queued_audio_size 							:: proc(dev: Audio_Device_Id) -> u32																																				#link_name "SDL_GetQueuedAudioSize" ---;
	get_rgb 										:: proc(pixel: u32, format: ^Pixel_Format, r, g, b: ^u8)																															#link_name "SDL_GetRGB" ---;
	get_rgba 										:: proc(pixel: u32, format: ^Pixel_Format, r, g, b, a: ^u8)																															#link_name "SDL_GetRGBA" ---;
	get_relative_mouse_mode 						:: proc() -> Bool																																									#link_name "SDL_GetRelativeMouseMode" ---;
	get_relative_mouse_state 						:: proc(x, y: ^i32) -> u32																																							#link_name "SDL_GetRelativeMouseState" ---;
	get_render_draw_blend_mode 						:: proc(renderer: ^Renderer, blend_mode: ^Blend_Mode) -> i32																														#link_name "SDL_GetRenderDrawBlendMode" ---;
	get_render_draw_color 							:: proc(renderer: ^Renderer, r, g, b, a: ^u8) -> i32																																#link_name "SDL_GetRenderDrawColor" ---;
	get_render_driver_info 							:: proc(index: i32, info: ^Renderer_Info) -> i32																																	#link_name "SDL_GetRenderDriverInfo" ---;
	get_render_target 								:: proc(renderer: ^Renderer) -> ^Texture																																			#link_name "SDL_GetRenderTarget" ---;
	get_renderer 									:: proc(window: ^Window) -> ^Renderer																																				#link_name "SDL_GetRenderer" ---;
	get_renderer_info 								:: proc(renderer: ^Renderer, info: ^Renderer_Info) -> i32																															#link_name "SDL_GetRendererInfo" ---;
	get_renderer_output_size 						:: proc(renderer: ^Renderer, w, h: ^i32) -> i32																																		#link_name "SDL_GetRendererOutputSize" ---;
	get_revision 									:: proc() -> ^u8																																									#link_name "SDL_GetRevision" ---;
	get_revision_number 							:: proc() -> i32																																									#link_name "SDL_GetRevisionNumber" ---;
	get_scancode_from_key 							:: proc(key: Keycode) -> Scancode																																					#link_name "SDL_GetScancodeFromKey" ---;
	get_scancode_from_name 							:: proc(name: ^u8) -> Scancode																																						#link_name "SDL_GetScancodeFromName" ---;
	get_scancode_name 								:: proc(scancode: Scancode) -> ^u8																																					#link_name "SDL_GetScancodeName" ---;
	get_shaped_window_mode 							:: proc(window: ^Window, shape_mode: ^Window_Shape_Mode) -> i32																														#link_name "SDL_GetShapedWindowMode" ---;
	get_surface_alpha_mod 							:: proc(surface: ^Surface, alpha: ^u8) -> i32																																		#link_name "SDL_GetSurfaceAlphaMod" ---;
	get_surface_blend_mode 							:: proc(surface: ^Surface, blend_mode: ^Blend_Mode) -> i32																															#link_name "SDL_GetSurfaceBlendMode" ---;
	get_surface_color_mod 							:: proc(surface: ^Surface, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetSurfaceColorMod" ---;
	get_system_ram 									:: proc() -> i32																																									#link_name "SDL_GetSystemRAM" ---;
	get_texture_alpha_mod 							:: proc(texture: ^Texture, alpha: ^u8) -> i32																																		#link_name "SDL_GetTextureAlphaMod" ---;
	get_texture_blend_mode 							:: proc(texture: ^Texture, blend_mode: ^Blend_Mode) -> i32																															#link_name "SDL_GetTextureBlendMode" ---;
	get_texture_color_mod 							:: proc(texture: ^Texture, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetTextureColorMod" ---;
	get_thread_id 									:: proc(thread: ^Thread) -> Thread_Id																																				#link_name "SDL_GetThreadID" ---;
	get_thread_name 								:: proc(thread: ^Thread) -> ^u8																																						#link_name "SDL_GetThreadName" ---;
	get_ticks 										:: proc() -> u32																																									#link_name "SDL_GetTicks" ---;
	get_touch_device 								:: proc(index: i32) -> Touch_Id																																						#link_name "SDL_GetTouchDevice" ---;
	get_touch_finger 								:: proc(touch_id: Touch_Id, index: i32) -> ^Finger																																	#link_name "SDL_GetTouchFinger" ---;
	get_version 									:: proc(ver: ^Version)																																								#link_name "SDL_GetVersion" ---;
	get_video_driver 								:: proc(index: i32) -> ^u8																																							#link_name "SDL_GetVideoDriver" ---;
	get_window_borders_size 						:: proc(window: ^Window, top, left, bottom, right: ^i32) -> i32																														#link_name "SDL_GetWindowBordersSize" ---;
	get_window_brightness 							:: proc(window: ^Window) -> f32																																						#link_name "SDL_GetWindowBrightness" ---;
	get_window_data 								:: proc(window: ^Window, name: ^u8) -> rawptr																																		#link_name "SDL_GetWindowData" ---;
	get_window_display_index 						:: proc(window: ^Window) -> i32																																						#link_name "SDL_GetWindowDisplayIndex" ---;
	get_window_display_mode 						:: proc(window: ^Window, mode: ^Display_Mode) -> i32																																#link_name "SDL_GetWindowDisplayMode" ---;
	get_window_flags 								:: proc(window: ^Window) -> u32																																						#link_name "SDL_GetWindowFlags" ---;
	get_window_fromid 								:: proc(id: u32) -> ^Window																																							#link_name "SDL_GetWindowFromID" ---;
	get_window_gammaramp 							:: proc(window: ^Window, r, g, b: u16) -> i32																																		#link_name "SDL_GetWindowGammaRamp" ---;
	get_window_grab 								:: proc(window: ^Window) -> Bool																																					#link_name "SDL_GetWindowGrab" ---;
	get_window_id 									:: proc(window: ^Window) -> u32																																						#link_name "SDL_GetWindowID" ---;
	get_window_maximum_size 						:: proc(window: ^Window, w, h: ^i32)																																				#link_name "SDL_GetWindowMaximumSize" ---;
	get_window_minimum_size 						:: proc(window: ^Window, w, h: ^i32)																																				#link_name "SDL_GetWindowMinimumSize" ---;
	get_window_opacity 								:: proc(window: ^Window, opacity: ^f32) -> i32																																		#link_name "SDL_GetWindowOpacity" ---;
	get_window_pixel_format 						:: proc(window: ^Window) -> u32																																						#link_name "SDL_GetWindowPixelFormat" ---;
	get_window_position 							:: proc(window: ^Window, x, y: ^i32)																																				#link_name "SDL_GetWindowPosition" ---;
	get_window_size 								:: proc(window: ^Window, w, h: ^i32)																																				#link_name "SDL_GetWindowSize" ---;
	get_window_surface 								:: proc(window: ^Window) -> ^Surface																																				#link_name "SDL_GetWindowSurface" ---;
	get_window_title 								:: proc(window: ^Window) -> ^u8																																						#link_name "SDL_GetWindowTitle" ---;
	get_window_wm_info 								:: proc(window: ^Window, info: ^Sys_Wm_Info) -> Bool																																#link_name "SDL_GetWindowWMInfo" ---;
	haptic_close 									:: proc(haptic: ^Haptic)																																							#link_name "SDL_HapticClose" ---;
	haptic_destroy_effect 							:: proc(haptic: ^Haptic, effect: i32)																																				#link_name "SDL_HapticDestroyEffect" ---;
	haptic_effect_supported 						:: proc(haptic: ^Haptic, effect: ^Haptic_Effect) -> i32																																#link_name "SDL_HapticEffectSupported" ---;
	haptic_get_effect_status 						:: proc(haptic: ^Haptic, effect: i32) -> i32																																		#link_name "SDL_HapticGetEffectStatus" ---;
	haptic_index 									:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticIndex" ---;
	haptic_name 									:: proc(device_index: i32) -> ^u8																																					#link_name "SDL_HapticName" ---;
	haptic_new_effect 								:: proc(haptic: ^Haptic, effect: ^Haptic_Effect) -> i32																																#link_name "SDL_HapticNewEffect" ---;
	haptic_num_axes 								:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticNumAxes" ---;
	haptic_num_effects 								:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticNumEffects" ---;
	haptic_num_effects_playing 						:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticNumEffectsPlaying" ---;
	haptic_open 									:: proc(device_index: i32) -> ^Haptic																																				#link_name "SDL_HapticOpen" ---;
	haptic_open_from_joystick 						:: proc(joystick: ^Joystick) -> ^Haptic																																				#link_name "SDL_HapticOpenFromJoystick" ---;
	haptic_open_from_mouse 							:: proc() -> ^Haptic																																								#link_name "SDL_HapticOpenFromMouse" ---;
	haptic_opened 									:: proc(device_index: i32) -> i32																																					#link_name "SDL_HapticOpened" ---;
	haptic_pause 									:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticPause" ---;
	haptic_query 									:: proc(haptic: ^Haptic) ->	u32																																						#link_name "SDL_HapticQuery" ---;
	haptic_rumble_init 								:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticRumbleInit" ---;
	haptic_rumble_play 								:: proc(haptic: ^Haptic, strength: f32, length: u32) -> i32																															#link_name "SDL_HapticRumblePlay" ---;
	haptic_rumble_stop 								:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticRumbleStop" ---;
	haptic_rumble_supported 						:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticRumbleSupported" ---;
	haptic_run_effect 								:: proc(haptic: ^Haptic, effect: i32, iterations: u32) -> i32																														#link_name "SDL_HapticRunEffect" ---;
	haptic_set_autocenter 							:: proc(haptic: ^Haptic, autocenter: i32) -> i32																																	#link_name "SDL_HapticSetAutocenter" ---;
	haptic_set_gain 								:: proc(haptic: ^Haptic, gain: i32) -> i32																																			#link_name "SDL_HapticSetGain" ---;
	haptic_stop_all 								:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticStopAll" ---;
	haptic_stop_effect 								:: proc(haptic: ^Haptic, effect: i32) -> i32																																		#link_name "SDL_HapticStopEffect" ---;
	haptic_unpause 									:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticUnpause" ---;
	haptic_update_effect 							:: proc(haptic: ^Haptic, effect: i32, data: ^Haptic_Effect) -> i32																													#link_name "SDL_HapticUpdateEffect" ---;
	has_3d_now 										:: proc() -> Bool																																									#link_name "SDL_Has3DNow" ---;
	has_avx 										:: proc() -> Bool																																									#link_name "SDL_HasAVX" ---;
	has_avx2 										:: proc() -> Bool																																									#link_name "SDL_HasAVX2" ---;
	has_alti_vec 									:: proc() -> Bool																																									#link_name "SDL_HasAltiVec" ---;
	has_clipboard_text 								:: proc() -> Bool																																									#link_name "SDL_HasClipboardText" ---;
	has_event 										:: proc(event_type: u32) -> Bool																																					#link_name "SDL_HasEvent" ---;
	has_events 										:: proc(min_type: u32, max_type: u32) -> Bool																																		#link_name "SDL_HasEvents" ---;
	has_intersection 								:: proc(a, b: ^Rect) -> Bool																																						#link_name "SDL_HasIntersection" ---;
	has_mmx 										:: proc() -> Bool																																									#link_name "SDL_HasMMX" ---;
	has_rdtsc 										:: proc() -> Bool																																									#link_name "SDL_HasRDTSC" ---;
	has_sse 										:: proc() -> Bool																																									#link_name "SDL_HasSSE" ---;
	has_sse2 										:: proc() -> Bool																																									#link_name "SDL_HasSSE2" ---;
	has_sse3 										:: proc() -> Bool																																									#link_name "SDL_HasSSE3" ---;
	has_sse41 										:: proc() -> Bool																																									#link_name "SDL_HasSSE41" ---;
	has_sse42 										:: proc() -> Bool																																									#link_name "SDL_HasSSE42" ---;
	has_screen_keyboard_support 					:: proc() -> Bool																																									#link_name "SDL_HasScreenKeyboardSupport" ---;
	hide_window 									:: proc(window: ^Window)																																							#link_name "SDL_HideWindow" ---;
	init 											:: proc(flags: u32) -> i32																																							#link_name "SDL_Init" ---;
	init_sub_system 								:: proc(flags: u32) -> i32																																							#link_name "SDL_InitSubSystem" ---;
	intersect_rect 									:: proc(a, b, result: ^Rect) -> Bool																																				#link_name "SDL_IntersectRect" ---;
	intersect_rect_and_line 						:: proc(rect: ^Rect, x1, y1, x2, y2: ^i32) -> Bool																																	#link_name "SDL_IntersectRectAndLine" ---;
	is_game_controller 								:: proc(joystick_index: i32) -> Bool																																				#link_name "SDL_IsGameController" ---;
	is_screen_keyboard_shown 						:: proc(window: ^Window) -> Bool																																					#link_name "SDL_IsScreenKeyboardShown" ---;
	is_screen_saver_enabled 						:: proc() -> Bool																																									#link_name "SDL_IsScreenSaverEnabled" ---;
	is_shaped_window 								:: proc(window: Window) -> Bool																																						#link_name "SDL_IsShapedWindow" ---;
	is_text_input_active 							:: proc() -> Bool																																									#link_name "SDL_IsTextInputActive" ---;
	joystick_close 									:: proc(joystick: ^Joystick)																																						#link_name "SDL_JoystickClose" ---;
	joystick_current_power_level 					:: proc(joystick: ^Joystick) -> Joystick_Power_Level																																#link_name "SDL_JoystickCurrentPowerLevel" ---;
	joystick_event_state 							:: proc(state: i32) -> i32																																							#link_name "SDL_JoystickEventState" ---;
	joystick_from_instance_id 						:: proc(joystick_id: ^Joystick_Id) -> ^Joystick																																		#link_name "SDL_JoystickFromInstanceID" ---;
	joystick_get_attached 							:: proc(joystick: ^Joystick) -> Bool																																				#link_name "SDL_JoystickGetAttached" ---;
	joystick_get_axis 								:: proc(joystick: ^Joystick, axis: i32) -> i16																																		#link_name "SDL_JoystickGetAxis" ---;
	joystick_get_ball 								:: proc(joystick: ^Joystick, ball: i32, dx, dy: ^i32) -> i32																														#link_name "SDL_JoystickGetBall" ---;
	joystick_get_button 							:: proc(joystick: ^Joystick, button: i32) -> u8																																		#link_name "SDL_JoystickGetButton" ---;
	joystick_get_device_guid 						:: proc(device_index: i32) -> Joystick_Guid																																			#link_name "SDL_JoystickGetDeviceGUID" ---;
	joystick_get_guid 								:: proc(joystick: ^Joystick) -> Joystick_Guid																																		#link_name "SDL_JoystickGetGUID" ---;
	joystick_get_guid_from_string 					:: proc(pch_guid: ^u8) -> Joystick_Guid																																				#link_name "SDL_JoystickGetGUIDFromString" ---;
	joystick_get_guid_string 						:: proc(guid: Joystick_Guid, psz_guid: ^u8, cb_guid: i32)																															#link_name "SDL_JoystickGetGUIDString" ---;
	joystick_get_hat 								:: proc(joystick: ^Joystick, hat: i32) -> u8																																		#link_name "SDL_JoystickGetHat" ---;
	joystick_instance_id 							:: proc(joystick: ^Joystick) -> Joystick_Id																																			#link_name "SDL_JoystickInstanceID" ---;
	joystick_is_haptic 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickIsHaptic" ---;
	joystick_name 									:: proc(joystick: ^Joystick) -> ^u8																																					#link_name "SDL_JoystickName" ---;
	joystick_name_for_index 						:: proc(device_index: i32) -> ^u8																																					#link_name "SDL_JoystickNameForIndex" ---;
	joystick_num_axes 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickNumAxes" ---;
	joystick_num_balls 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickNumBalls" ---;
	joystick_num_buttons 							:: proc(joystick: ^Joystick) ->	i32																																					#link_name "SDL_JoystickNumButtons" ---;
	joystick_num_hats 								:: proc(joystick: ^Joystick) -> i32 																																				#link_name "SDL_JoystickNumHats" ---;
	joystick_open 									:: proc(device_index: i32) -> ^Joystick																																				#link_name "SDL_JoystickOpen" ---;
	joystick_update 								:: proc()																																											#link_name "SDL_JoystickUpdate" ---;
	load_function 									:: proc(handle: rawptr, name: ^u8) -> rawptr																																		#link_name "SDL_LoadFunction" ---;
	load_object 									:: proc(sofile: ^u8) -> ^u8																																							#link_name "SDL_LoadObject" ---;
	lock_audio 										:: proc()																																											#link_name "SDL_LockAudio" ---;
	lock_audio_device 								:: proc(dev: Audio_Device_Id)																																						#link_name "SDL_LockAudioDevice" ---;
	lock_mutex 										:: proc(mutex: ^Mutex) -> i32																																						#link_name "SDL_LockMutex" ---;
	lock_surface 									:: proc(surface: ^Surface) -> i32																																					#link_name "SDL_LockSurface" ---;
	lock_texture 									:: proc(texture: ^Texture, rect: ^Rect, pixels: ^rawptr, pitch: ^i32) -> i32																										#link_name "SDL_LockTexture" ---;

	// These might be wrong?
	log 											:: proc(fmt: ...^u8)																																								#link_name "SDL_Log" ---;
	log_critical 									:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogCritical" ---;
	log_debug 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogDebug" ---;
	log_error 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogError" ---;
	log_get_output_function 						:: proc(callback: ^Log_Output_Function, userdata: ^rawptr)																															#link_name "SDL_LogGetOutputFunction" ---;
	log_get_priority 								:: proc(category: i32) -> Log_Priority																																				#link_name "SDL_LogGetPriority" ---;
	log_info 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogInfo" ---;
	log_message 									:: proc(category: i32, priority: Log_Priority, fmt: ...^u8)																															#link_name "SDL_LogMessage" ---;
	log_message_v 									:: proc(category: i32, priority: Log_Priority, fmt: ^u8, va_list: ^u8)																												#link_name "SDL_LogMessageV" ---;
	log_reset_priorities 							:: proc()																																											#link_name "SDL_LogResetPriorities" ---;
	log_set_all_priority 							:: proc(priority: Log_Priority)																																						#link_name "SDL_LogSetAllPriority" ---;
	log_set_output_function 						:: proc(callback: Log_Output_Function, userdata: rawptr)																															#link_name "SDL_LogSetOutputFunction" ---;
	log_set_priority 								:: proc(category: i32, priority: Log_Priority)																																		#link_name "SDL_LogSetPriority" ---;
	log_verbose 									:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogVerbose" ---;
	log_warn 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogWarn" ---;

	lower_blit 										:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_LowerBlit" ---;
	lower_blit_scaled 								:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_LowerBlitScaled" ---;
	map_rgb 										:: proc(format: Pixel_Format, r, g, b: u8) -> u32																																	#link_name "SDL_MapRGB" ---;
	map_rgba 										:: proc(format: Pixel_Format, r, g, b, a: u8) -> u32																																#link_name "SDL_MapRGBA" ---;
	masks_to_pixel_format_enum 						:: proc(bpp: i32, r_mask, g_mask, b_mask, a_mask: u32) -> u32																														#link_name "SDL_MasksToPixelFormatEnum" ---;
	maximize_window 								:: proc(window: ^Window)																																							#link_name "SDL_MaximizeWindow" ---;
	minimize_window 								:: proc(window: ^Window)																																							#link_name "SDL_MinimizeWindow" ---;
	mix_audio 										:: proc(dst, src: ^u8, len: u32, volume: i32)																																		#link_name "SDL_MixAudio" ---;
	mix_audio_format 								:: proc(dst, src: ^u8, format: Audio_Format, len: u32, volume: i32)																													#link_name "SDL_MixAudioFormat" ---;
	mouse_is_haptic 								:: proc() -> i32																																									#link_name "SDL_MouseIsHaptic" ---;
	num_haptics 									:: proc() -> i32																																									#link_name "SDL_NumHaptics" ---;
	num_joysticks 									:: proc() -> i32																																									#link_name "SDL_NumJoysticks" ---;
	open_audio 										:: proc(desired, obtained: ^Audio_Spec) -> i32																																		#link_name "SDL_OpenAudio" ---;
	open_audio_device 								:: proc(device: ^u8, iscapture: i32, desired, obtained: ^Audio_Spec, allowed_changed: i32) -> Audio_Device_Id																		#link_name "SDL_OpenAudioDevice" ---;
	pause_audio 									:: proc(pause_on: i32)																																								#link_name "SDL_PauseAudio" ---;
	pause_audio_device 								:: proc(dev: Audio_Device_Id, pause_on: i32)																																		#link_name "SDL_PauseAudioDevice" ---;
	peep_events 									:: proc(events: ^Event, num_events: i32, action: Event_Action, min_type, max_type: u32) -> i32																						#link_name "SDL_PeepEvents" ---;
	pixel_format_enum_to_masks 						:: proc(format: u32, bpp: ^i32, r_mask, g_mask, b_mask, a_mask: ^u32) -> Bool																										#link_name "SDL_PixelFormatEnumToMasks" ---;
	poll_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_PollEvent" ---;
	pump_events 									:: proc()																																											#link_name "SDL_PumpEvents" ---;
	push_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_PushEvent" ---;
	query_texture 									:: proc(texture: ^Texture, format: ^u32, access, w, h: ^i32) -> i32																													#link_name "SDL_QueryTexture" ---;
	queue_audio 									:: proc(dev: Audio_Device_Id, data: rawptr, len: u32) -> i32																														#link_name "SDL_QueueAudio" ---;
	quit 											:: proc()																																											#link_name "SDL_Quit" ---;
	quit_sub_system 								:: proc(flags: u32)																																									#link_name "SDL_QuitSubSystem" ---;
	raise_window 									:: proc(window: ^Window)																																							#link_name "SDL_RaiseWindow" ---;
	record_gesture 									:: proc(touch_id: Touch_Id) -> i32																																					#link_name "SDL_RecordGesture" ---;
	register_app 									:: proc(name: ^u8, style: u32, h_inst: rawptr) -> i32																																#link_name "SDL_RegisterApp" ---;
	register_events 								:: proc(num_events: i32) -> u32																																						#link_name "SDL_RegisterEvents" ---;
	remove_timer 									:: proc(id: Timer_Id) -> Bool																																						#link_name "SDL_RemoveTimer" ---;
	render_clear 									:: proc(renderer: ^Renderer) -> i32																																					#link_name "SDL_RenderClear" ---;
	render_copy 									:: proc(renderer: ^Renderer, texture: ^Texture, srcrect, dstrect: ^Rect) -> i32																										#link_name "SDL_RenderCopy" ---;
	render_copy_ex 									:: proc(renderer: ^Renderer, texture: ^Texture, srcrect, dstrect: ^Rect, angle: f64, center: ^Point, flip: Renderer_Flip) -> i32													#link_name "SDL_RenderCopyEx" ---;
	render_draw_line 								:: proc(renderer: ^Renderer, x1, y1, x2, y2: i32) -> i32																															#link_name "SDL_RenderDrawLine" ---;
	render_draw_lines 								:: proc(renderer: ^Renderer, points: ^Point, count: i32) -> i32																														#link_name "SDL_RenderDrawLines" ---;
	render_draw_point 								:: proc(renderer: ^Renderer, x, y: i32) -> i32																																		#link_name "SDL_RenderDrawPoint" ---;
	render_draw_points 								:: proc(renderer: ^Renderer, points: ^Point, count: i32) -> i32																														#link_name "SDL_RenderDrawPoints" ---;
	render_draw_rect 								:: proc(renderer: ^Renderer, rect: ^Rect) -> i32																																	#link_name "SDL_RenderDrawRect" ---;
	render_draw_rects 								:: proc(renderer: ^Renderer, rects: ^Rect, count: i32) -> i32																														#link_name "SDL_RenderDrawRects" ---;
	render_fill_rect 								:: proc(dst: ^Surface, rect: ^Rect, color: u32) -> i32																																#link_name "SDL_RenderFillRect" ---;
	render_fill_rects 								:: proc(dst: ^Surface, rect: ^Rect, count: i32, color: u32) -> i32																													#link_name "SDL_RenderFillRects" ---;
	render_get_clip_rect 							:: proc(surface: ^Surface, rect: ^Rect)																																				#link_name "SDL_RenderGetClipRect" ---;
	render_get_d3d9_device 							:: proc(renderer: ^Renderer) ->	^IDirect3D_Device_9																																	#link_name "SDL_RenderGetD3D9Device" ---;
	render_get_integer_scale 						:: proc(renderer: ^Renderer) -> Bool																																				#link_name "SDL_RenderGetIntegerScale" ---;
	render_get_logical_size 						:: proc(renderer: ^Renderer, w, h: ^i32)																																			#link_name "SDL_RenderGetLogicalSize" ---;
	render_get_scale 								:: proc(renderer: ^Renderer, scale_x, scale_y: ^f32)																																#link_name "SDL_RenderGetScale" ---;
	render_get_viewport 							:: proc(renderer: ^Renderer, rect: ^Rect)																																			#link_name "SDL_RenderGetViewport" ---;
	render_is_clip_enabled 							:: proc(renderer: ^Renderer) -> Bool																																				#link_name "SDL_RenderIsClipEnabled" ---;
	render_present 									:: proc(renderer: ^Renderer)																																						#link_name "SDL_RenderPresent" ---;
	render_read_pixels 								:: proc(renderer: ^Renderer, rect: ^Rect, format: u32, pixels: rawptr, pitch: i32) -> i32																							#link_name "SDL_RenderReadPixels" ---;
	render_set_clip_rect 							:: proc(surface: ^Surface, rect: ^Rect) -> Bool																																		#link_name "SDL_RenderSetClipRect" ---;
	render_set_integer_scale 						:: proc(renderer: ^Renderer, enable: Bool) -> i32																																	#link_name "SDL_RenderSetIntegerScale" ---;
	render_set_logical_size 						:: proc(renderer: ^Renderer, w, h: i32) -> i32																																		#link_name "SDL_RenderSetLogicalSize" ---;
	render_set_scale 								:: proc(renderer: ^Renderer, scale_x, scale_y: f32) -> i32																															#link_name "SDL_RenderSetScale" ---;
	render_set_viewport 							:: proc(renderer: ^Renderer, rect: ^Rect)																																			#link_name "SDL_RenderSetViewport" ---;
	render_target_supported 						:: proc(renderer: ^Renderer) -> Bool																																				#link_name "SDL_RenderTargetSupported" ---;
	reset_assertion_report 							:: proc()																																											#link_name "SDL_ResetAssertionReport" ---;
	restore_window 									:: proc(window: ^Window)																																							#link_name "SDL_RestoreWindow" ---;
	sem_post 										:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemPost" ---;
	sem_try_wait 									:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemTryWait" ---;
	sem_value 										:: proc(sem: Sem) -> u32																																							#link_name "SDL_SemValue" ---;
	sem_wait 										:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemWait" ---;
	sem_wait_timeout 								:: proc(sem: Sem, ms: u32) -> i32																																					#link_name "SDL_SemWaitTimeout" ---;
	set_assertion_handler 							:: proc(handler: Assertion_Handler, userdata: rawptr)																																#link_name "SDL_SetAssertionHandler" ---;
	set_clip_rect 									:: proc(surface: ^Surface, rect: ^Rect) -> Bool																																		#link_name "SDL_SetClipRect" ---;
	set_clipboard_text 								:: proc(text: ^u8) -> i32																																							#link_name "SDL_SetClipboardText" ---;
	set_color_key 									:: proc(surface: ^Surface, flag: i32, key: u32) -> i32																																#link_name "SDL_SetColorKey" ---;
	set_cursor 										:: proc(cursor: ^Cursor)																																							#link_name "SDL_SetCursor" ---;
	set_error 										:: proc(fmt: ...^u8) -> i32																																							#link_name "SDL_SetError" ---;
	set_event_filter 								:: proc(filter: Event_Filter, userdata: rawptr)																																		#link_name "SDL_SetEventFilter" ---;
	set_hint 										:: proc(name, value: ^u8) -> Bool																																					#link_name "SDL_SetHint" ---;
	set_hint_with_priority 							:: proc(name, value: ^u8, priority: Hint_Priority) -> Bool																															#link_name "SDL_SetHintWithPriority" ---;
	set_main_ready 									:: proc()																																											#link_name "SDL_SetMainReady" ---;
	set_mod_state 									:: proc(modstate: Keymod)																																							#link_name "SDL_SetModState" ---;
	set_palette_colors 								:: proc(palette: ^Palette, colors: ^Color, firstcolor, ncolors: i32) -> i32																											#link_name "SDL_SetPaletteColors" ---;
	set_pixel_format_palette 						:: proc(format: ^Pixel_Format, palette: ^Palette) -> i32																															#link_name "SDL_SetPixelFormatPalette" ---;
	set_relative_mouse_mode 						:: proc(enabled: Bool) -> i32																																						#link_name "SDL_SetRelativeMouseMode" ---;
	set_render_draw_blend_mode 						:: proc(renderer: ^Renderer, blend_mode: Blend_Mode) -> i32																															#link_name "SDL_SetRenderDrawBlendMode" ---;
	set_render_draw_color 							:: proc(renderer: ^Renderer, r, g, b, a: u8) -> i32																																	#link_name "SDL_SetRenderDrawColor" ---;
	set_render_target 								:: proc(renderer: ^Renderer, texture: ^Texture) -> i32																																#link_name "SDL_SetRenderTarget" ---;
	set_surface_alpha_mod 							:: proc(surface: ^Surface, alpha: u8) -> i32																																		#link_name "SDL_SetSurfaceAlphaMod" ---;
	set_surface_blend_mode 							:: proc(surface: ^Surface, blend_mode: Blend_Mode) -> i32																															#link_name "SDL_SetSurfaceBlendMode" ---;
	set_surface_color_mod 							:: proc(surface: ^Surface, r, g, b: u8) -> i32																																		#link_name "SDL_SetSurfaceColorMod" ---;
	set_surface_palette 							:: proc(surface: ^Surface, palette: ^Palette) -> i32																																#link_name "SDL_SetSurfacePalette" ---;
	set_surface_rle 								:: proc(surface: ^Surface, flag: i32) -> i32																																		#link_name "SDL_SetSurfaceRLE" ---;
	set_text_input_rect 							:: proc(rect: ^Rect)																																								#link_name "SDL_SetTextInputRect" ---;
	set_texture_alpha_mod 							:: proc(texture: ^Texture, alpha: u8) -> i32																																		#link_name "SDL_SetTextureAlphaMod" ---;
	set_texture_blend_mode 							:: proc(texture: ^Texture, blend_mode: Blend_Mode) -> i32																															#link_name "SDL_SetTextureBlendMode" ---;
	set_texture_color_mod 							:: proc(texture: ^Texture, r, g, b: u8) -> i32																																		#link_name "SDL_SetTextureColorMod" ---;
	set_thread_priority 							:: proc(priority: Thread_Priority) -> i32																																			#link_name "SDL_SetThreadPriority" ---;
	set_window_bordered 							:: proc(window: ^Window, bordered: Bool)																																			#link_name "SDL_SetWindowBordered" ---;
	set_window_brightness 							:: proc(window: ^Window, brightness: f32) -> i32																																	#link_name "SDL_SetWindowBrightness" ---;
	set_window_data 								:: proc(window: ^Window, name: ^u8, userdata: rawptr) -> rawptr																														#link_name "SDL_SetWindowData" ---;
	set_window_display_mode 						:: proc(window: ^Window, mode: ^Display_Mode) -> i32																																#link_name "SDL_SetWindowDisplayMode" ---;
	set_window_fullscreen 							:: proc(window: ^Window, flags: u32) -> i32																																			#link_name "SDL_SetWindowFullscreen" ---;
	set_window_gamma_ramp 							:: proc(window: ^Window, r, g, b: ^u16) -> i32																																		#link_name "SDL_SetWindowGammaRamp" ---;
	set_window_grab 								:: proc(window: ^Window, grabbed: Bool)																																				#link_name "SDL_SetWindowGrab" ---;
	set_window_hit_test 							:: proc(window: ^Window, callback: Hit_Test, callback_data: rawptr) -> i32																											#link_name "SDL_SetWindowHitTest" ---;
	set_window_icon 								:: proc(window: ^Window, icon: ^Surface)																																			#link_name "SDL_SetWindowIcon" ---;
	set_window_input_focus 							:: proc(window: ^Window) -> i32																																						#link_name "SDL_SetWindowInputFocus" ---;
	set_window_maximum_size 						:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowMaximumSize" ---;
	set_window_minimum_size 						:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowMinimumSize" ---;
	set_window_modal_for 							:: proc(window: ^Window, parent_window: ^Window) -> i32																																#link_name "SDL_SetWindowModalFor" ---;
	set_window_opacity 								:: proc(window: ^Window, opacity: f32) -> i32																																		#link_name "SDL_SetWindowOpacity" ---;
	set_window_position 							:: proc(window: ^Window, x, y: i32)																																					#link_name "SDL_SetWindowPosition" ---;
	set_window_resizable 							:: proc(window: ^Window, resizable: Bool)																																			#link_name "SDL_SetWindowResizable" ---;
	set_window_shape 								:: proc(window: ^Window, shape: ^Surface, shape_mode: Window_Shape_Mode) -> i32																										#link_name "SDL_SetWindowShape" ---;
	set_window_size 								:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowSize" ---;
	set_window_title 								:: proc(window: ^Window, title: ^u8)																																				#link_name "SDL_SetWindowTitle" ---;
	set_windows_message_hook 						:: proc(callback: Windows_Message_Hook, userdata: rawptr)																															#link_name "SDL_SetWindowsMessageHook" ---;
	show_cursor 									:: proc(toggle: i32) -> i32																																							#link_name "SDL_ShowCursor" ---;
	show_message_box 								:: proc(message_box_data: ^Message_Box_Data, button_id: ^i32) -> i32																												#link_name "SDL_ShowMessageBox" ---;
	show_simple_message_box 						:: proc(flags: u32, title, message: ^u8, window: ^Window) -> i32																													#link_name "SDL_ShowSimpleMessageBox" ---;
	show_window 									:: proc(window: ^Window)																																							#link_name "SDL_ShowWindow" ---;
	soft_stretch 									:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_SoftStretch" ---;
	start_text_input 								:: proc()																																											#link_name "SDL_StartTextInput" ---;
	stop_text_input 								:: proc()																																											#link_name "SDL_StopTextInput" ---;
	tls_create 										:: proc() -> Tls_Id																																									#link_name "SDL_TLSCreate" ---;
	tls_get 										:: proc(id: Tls_Id) -> rawptr																																						#link_name "SDL_TLSGet" ---;
	tls_set 										:: proc(id: Tls_Id, value: rawptr, destructor: proc(data: rawptr)) -> i32																											#link_name "SDL_TLSSet" ---;
	thread_id 										:: proc() -> Thread_Id																																								#link_name "SDL_ThreadID" ---;
	try_lock_mutex 									:: proc(mutex: ^Mutex) -> i32																																						#link_name "SDL_TryLockMutex" ---;
	union_rect 										:: proc(a, b, result: ^Rect)																																						#link_name "SDL_UnionRect" ---;
	unload_object 									:: proc(handle: rawptr)																																								#link_name "SDL_UnloadObject" ---;
	unlock_audio 									:: proc()																																											#link_name "SDL_UnlockAudio" ---;
	unlock_audio_device 							:: proc(dev: Audio_Device_Id)																																						#link_name "SDL_UnlockAudioDevice" ---;
	unlock_mutex 									:: proc(mutex: ^Mutex) -> i32																																						#link_name "SDL_UnlockMutex" ---;
	unlock_surface 									:: proc(surface: ^Surface)																																							#link_name "SDL_UnlockSurface" ---;
	unlock_texture 									:: proc(texture: ^Texture)																																							#link_name "SDL_UnlockTexture" ---;
	unregister_app 									:: proc()																																											#link_name "SDL_UnregisterApp" ---;
	update_texture 									:: proc(texture: ^Texture, rect: ^Rect, pixels: rawptr, pitch: i32)																													#link_name "SDL_UpdateTexture" ---;
	update_window_surface 							:: proc(window: ^Window) -> i32																																						#link_name "SDL_UpdateWindowSurface" ---;
	update_window_surface_rects 					:: proc(window: ^Window, rects: ^Rect, num_rects: i32) -> i32																														#link_name "SDL_UpdateWindowSurfaceRects" ---;
	update_yuv_texture 								:: proc(texture: ^Texture, rect: ^Rect, y_plane: ^u8, y_pitch: i32, u_plane: ^u8, u_pitch: i32, v_plane: ^u8, v_pitch: i32) -> i32													#link_name "SDL_UpdateYUVTexture" ---;
	upper_blit 										:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_UpperBlit" ---;
	upper_blit_scaled 								:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_UpperBlitScaled" ---;
	video_init 										:: proc(driver_name: ^u8) -> i32																																					#link_name "SDL_VideoInit" ---;
	video_quit 										:: proc()																																											#link_name "SDL_VideoQuit" ---;
	wait_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_WaitEvent" ---;
	wait_event_timeout 								:: proc(event: ^Event, timeout: i32) -> i32																																			#link_name "SDL_WaitEventTimeout" ---;
	wait_thread 									:: proc(thread: ^Thread, status: ^i32)																																				#link_name "SDL_WaitThread" ---;
	warp_mouse_global 								:: proc(x, y: i32) -> i32																																							#link_name "SDL_WarpMouseGlobal" ---;
	warp_mouse_in_window 							:: proc(window: ^Window, x, y: i32)																																					#link_name "SDL_WarpMouseInWindow" ---;
	was_init 										:: proc(flags: u32) -> u32																																							#link_name "SDL_WasInit" ---;

	/* Probably don't need these at all?
	abs 											:: proc() ->																																										#link_name "SDL_abs" ---;
	acos 											:: proc() ->																																										#link_name "SDL_acos" ---;
	asin 											:: proc() ->																																										#link_name "SDL_asin" ---;
	atan 											:: proc() ->																																										#link_name "SDL_atan" ---;
	atan2 											:: proc() ->																																										#link_name "SDL_atan2" ---;
	atof 											:: proc() ->																																										#link_name "SDL_atof" ---;
	atoi 											:: proc() ->																																										#link_name "SDL_atoi" ---;
	calloc 											:: proc() ->																																										#link_name "SDL_calloc" ---;
	ceil 											:: proc() ->																																										#link_name "SDL_ceil" ---;
	copysign 										:: proc() ->																																										#link_name "SDL_copysign" ---;
	cos 											:: proc() ->																																										#link_name "SDL_cos" ---;
	cosf 											:: proc() ->																																										#link_name "SDL_cosf" ---;
	fabs 											:: proc() ->																																										#link_name "SDL_fabs" ---;
	floor 											:: proc() ->																																										#link_name "SDL_floor" ---;
	free 											:: proc() ->																																										#link_name "SDL_free" ---;
	getenv 											:: proc() ->																																										#link_name "SDL_getenv" ---;
	iconv 											:: proc() ->																																										#link_name "SDL_iconv" ---;
	iconvclose 										:: proc() ->																																										#link_name "SDL_iconv_close" ---;
	iconvopen 										:: proc() ->																																										#link_name "SDL_iconv_open" ---;
	iconvstring 									:: proc() ->																																										#link_name "SDL_iconv_string" ---;
	isdigit 										:: proc() ->																																										#link_name "SDL_isdigit" ---;
	isspace 										:: proc() ->																																										#link_name "SDL_isspace" ---;
	itoa 											:: proc() ->																																										#link_name "SDL_itoa" ---;
	lltoa 											:: proc() ->																																										#link_name "SDL_lltoa" ---;
	log 											:: proc() ->																																										#link_name "SDL_log" ---;
	ltoa 											:: proc() ->																																										#link_name "SDL_ltoa" ---;
	malloc 											:: proc() ->																																										#link_name "SDL_malloc" ---;
	memcmp 											:: proc() ->																																										#link_name "SDL_memcmp" ---;
	memcpy 											:: proc() ->																																										#link_name "SDL_memcpy" ---;
	memmove 										:: proc() ->																																										#link_name "SDL_memmove" ---;
	memset 											:: proc() ->																																										#link_name "SDL_memset" ---;
	pow 											:: proc() ->																																										#link_name "SDL_pow" ---;
	qsort 											:: proc() ->																																										#link_name "SDL_qsort" ---;
	realloc 										:: proc() ->																																										#link_name "SDL_realloc" ---;
	scalbn 											:: proc() ->																																										#link_name "SDL_scalbn" ---;
	setenv 											:: proc() ->																																										#link_name "SDL_setenv" ---;
	sin 											:: proc() ->																																										#link_name "SDL_sin" ---;
	sinf 											:: proc() ->																																										#link_name "SDL_sinf" ---;
	snprintf 										:: proc() ->																																										#link_name "SDL_snprintf" ---;
	sqrt 											:: proc() ->																																										#link_name "SDL_sqrt" ---;
	sqrtf 											:: proc() ->																																										#link_name "SDL_sqrtf" ---;
	sscanf 											:: proc() ->																																										#link_name "SDL_sscanf" ---;
	strcasecmp 										:: proc() ->																																										#link_name "SDL_strcasecmp" ---;
	strchr 											:: proc() ->																																										#link_name "SDL_strchr" ---;
	strcmp 											:: proc() ->																																										#link_name "SDL_strcmp" ---;
	strdup 											:: proc() ->																																										#link_name "SDL_strdup" ---;
	strlcat 										:: proc() ->																																										#link_name "SDL_strlcat" ---;
	strlcpy 										:: proc() ->																																										#link_name "SDL_strlcpy" ---;
	strlen 											:: proc() ->																																										#link_name "SDL_strlen" ---;
	strlwr 											:: proc() ->																																										#link_name "SDL_strlwr" ---;
	strncasecmp 									:: proc() ->																																										#link_name "SDL_strncasecmp" ---;
	strncmp 										:: proc() ->																																										#link_name "SDL_strncmp" ---;
	strrchr 										:: proc() ->																																										#link_name "SDL_strrchr" ---;
	strrev 											:: proc() ->																																										#link_name "SDL_strrev" ---;
	strstr 											:: proc() ->																																										#link_name "SDL_strstr" ---;
	strtod 											:: proc() ->																																										#link_name "SDL_strtod" ---;
	strtol 											:: proc() ->																																										#link_name "SDL_strtol" ---;
	strtoll 										:: proc() ->																																										#link_name "SDL_strtoll" ---;
	strtoul 										:: proc() ->																																										#link_name "SDL_strtoul" ---;
	strtoull 										:: proc() ->																																										#link_name "SDL_strtoull" ---;
	strupr 											:: proc() ->																																										#link_name "SDL_strupr" ---;
	tan 											:: proc() ->																																										#link_name "SDL_tan" ---;
	tanf 											:: proc() ->																																										#link_name "SDL_tanf" ---;
	tolower 										:: proc() ->																																										#link_name "SDL_tolower" ---;
	toupper 										:: proc() ->																																										#link_name "SDL_toupper" ---;
	uitoa 											:: proc() ->																																										#link_name "SDL_uitoa" ---;
	ulltoa 											:: proc() ->																																										#link_name "SDL_ulltoa" ---;
	ultoa 											:: proc() ->																																										#link_name "SDL_ultoa" ---;
	utf8strlcpy 									:: proc() ->																																										#link_name "SDL_utf8strlcpy" ---;
	vsnprintf 										:: proc() ->																																										#link_name "SDL_vsnprintf" ---;
	vsscanf 										:: proc() ->																																										#link_name "SDL_vsscanf" ---;
	wcslcat 										:: proc() ->																																										#link_name "SDL_wcslcat" ---;
	wcslcpy 										:: proc() ->																																										#link_name "SDL_wcslcpy" ---;
	wcslen 											:: proc() ->																																										#link_name "SDL_wcslen" ---;
	*/
}

INIT_TIMER :: 0x00000001;
INIT_AUDIO :: 0x00000010;
INIT_VIDEO :: 0x00000020;
INIT_JOYSTICK :: 0x00000200;
INIT_HAPTIC :: 0x00001000;
INIT_GAMECONTROLLER :: 0x00002000;
INIT_EVENTS :: 0x00004000;
INIT_NOPARACHUTE :: 0x00100000;
INIT_EVERYTHING :: INIT_TIMER | INIT_AUDIO | INIT_VIDEO | INIT_EVENTS | INIT_JOYSTICK | INIT_HAPTIC | INIT_GAMECONTROLLER;

WINDOW_FULLSCREEN :: 0x00000001;
WINDOW_OPENGL :: 0x00000002;
WINDOW_SHOWN :: 0x00000004;
WINDOW_HIDDEN :: 0x00000008;
WINDOW_BORDERLESS :: 0x00000010;
WINDOW_RESIZABLE :: 0x00000020;
WINDOW_MINIMIZED :: 0x00000040;
WINDOW_MAXIMIZED :: 0x00000080;
WINDOW_INPUT_GRABBED :: 0x00000100;
WINDOW_INPUT_FOCUS :: 0x00000200;
WINDOW_MOUSE_FOCUS :: 0x00000400;
WINDOW_FULLSCREEN_DESKTOP :: WINDOW_FULLSCREEN | 0x00001000;
WINDOW_FOREIGN :: 0x00000800;
WINDOW_ALLOW_HIGHDPI :: 0x00002000;
WINDOW_MOUSE_CAPTURE :: 0x00004000;
WINDOW_ALWAYS_ON_TOP :: 0x00008000;
WINDOW_SKIP_TASKBAR :: 0x00010000;
WINDOW_UTILITY :: 0x00020000;
WINDOW_TOOLTIP :: 0x00040000;
WINDOW_POPUP_MENU :: 0x00080000;
WINDOW_VULKAN :: 0x00100000;

WINDOWPOS_UNDEFINED :: 0x1FFF0000;
WINDOWPOS_CENTERED :: 0x2FFF0000;

RENDERER_SOFTWARE :: 0x00000001;
RENDERER_ACCELERATED :: 0x00000002;
RENDERER_PRESENTVSYNC :: 0x00000004;
RENDERER_TARGETTEXTURE :: 0x00000008;

Blend_Mode :: enum i32
{
    NONE = 0x00000000,     /**< no blending
                                              dstRGBA = srcRGBA */
    BLEND = 0x00000001,    /**< alpha blending
                                              dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
                                              dstA = srcA + (dstA * (1-srcA)) */
    ADD = 0x00000002,      /**< additive blending
                                              dstRGB = (srcRGB * srcA) + dstRGB
                                              dstA = dstA */
    MOD = 0x00000004       /**< color modulate
                                              dstRGB = srcRGB * dstRGB
                                              dstA = dstA */
}

Error_Code :: enum i32
{
    ENOMEM,
    EFREAD,
    EFWRITE,
    EFSEEK,
    UNSUPPORTED,
    LASTERROR
}

Joystick_Power_Level :: enum i32
{
    UNKNOWN = -1,
    EMPTY,
    LOW,
    MEDIUM,
    FULL,
    WIRED,
    MAX
}

Hint_Priority :: enum i32
{
    DEFAULT,
    NORMAL,
    OVERRIDE
}

Thread_Priority :: enum i32
{
    LOW,
    NORMAL,
    HIGH
}

Assert_State :: enum i32
{
    RETRY,  /**< Retry the assert immediately. */
    BREAK,  /**< Make the debugger trigger a breakpoint. */
    ABORT,  /**< Terminate the program. */
    IGNORE,  /**< Ignore the assert. */
    ALWAYS_IGNORE  /**< Ignore the assert from now on. */
}

Event_Action :: enum i32
{
    ADDEVENT,
    PEEKEVENT,
    GETEVENT
}

Hit_Test_Result :: enum i32
{
    NORMAL,  /**< Region is normal. No special properties. */
    DRAGGABLE,  /**< Region can drag entire window. */
    RESIZE_TOPLEFT,
    RESIZE_TOP,
    RESIZE_TOPRIGHT,
    RESIZE_RIGHT,
    RESIZE_BOTTOMRIGHT,
    RESIZE_BOTTOM,
    RESIZE_BOTTOMLEFT,
    RESIZE_LEFT
}

Bool :: enum i32
{
    False,
    True
}

Window_Shape_Modes :: enum i32
{
    /** \brief The default mode, a binarized alpha cutoff of 1. */
    DEFAULT,
    /** \brief A binarized alpha cutoff with a given integer value. */
    BINARIZE_ALPHA,
    /** \brief A binarized alpha cutoff with a given integer value, but with the opposite comparison. */
    REVERSE_BINARIZE_ALPHA,
    /** \brief A color key is applied. */
    COLOR_KEY
}

Keymod :: enum i32
{
    NONE = 0x0000,
    LSHIFT = 0x0001,
    RSHIFT = 0x0002,
    LCTRL = 0x0040,
    RCTRL = 0x0080,
    LALT = 0x0100,
    RALT = 0x0200,
    LGUI = 0x0400,
    RGUI = 0x0800,
    NUM = 0x1000,
    CAPS = 0x2000,
    MODE = 0x4000,
    RESERVED = 0x8000
}

Renderer_Flip :: enum i32
{
    NONE = 0x00000000,     /**< Do not flip */
    HORIZONTAL = 0x00000001,    /**< flip horizontally */
    VERTICAL = 0x00000002     /**< flip vertically */
}

GL_Attr :: enum i32
{
    RED_SIZE,
    GREEN_SIZE,
    BLUE_SIZE,
    ALPHA_SIZE,
    BUFFER_SIZE,
    DOUBLEBUFFER,
    DEPTH_SIZE,
    STENCIL_SIZE,
    ACCUM_RED_SIZE,
    ACCUM_GREEN_SIZE,
    ACCUM_BLUE_SIZE,
    ACCUM_ALPHA_SIZE,
    STEREO,
    MULTISAMPLEBUFFERS,
    MULTISAMPLESAMPLES,
    ACCELERATED_VISUAL,
    RETAINED_BACKING,
    CONTEXT_MAJOR_VERSION,
    CONTEXT_MINOR_VERSION,
    CONTEXT_EGL,
    CONTEXT_FLAGS,
    CONTEXT_PROFILE_MASK,
    SHARE_WITH_CURRENT_CONTEXT,
    FRAMEBUFFER_SRGB_CAPABLE,
    CONTEXT_RELEASE_BEHAVIOR
}

Message_Box_Color_Type :: enum i32
{
    BACKGROUND,
    TEXT,
    BUTTON_BORDER,
    BUTTON_BACKGROUND,
    BUTTON_SELECTED,
    MAX
}

Audio_Status :: enum i32
{
    STOPPED = 0,
    PLAYING,
    PAUSED
}

Power_State :: enum i32
{
    UNKNOWN,      /**< cannot determine power status */
    ON_BATTERY,   /**< Not plugged in, running on the battery */
    NO_BATTERY,   /**< Plugged in, no battery available */
    CHARGING,     /**< Plugged in, charging battery */
    CHARGED       /**< Plugged in, battery charged */
}

Log_Priority :: enum i32
{
    VERBOSE = 1,
    DEBUG,
    INFO,
    WARN,
    ERROR,
    CRITICAL,
    NUM_LOG_PRIORITIES
}


// Input stuff


Game_Controller_Button :: enum i32
{
    INVALID = -1,
    A,
    B,
    X,
    Y,
    BACK,
    GUIDE,
    START,
    LEFTSTICK,
    RIGHTSTICK,
    LEFTSHOULDER,
    RIGHTSHOULDER,
    DPAD_UP,
    DPAD_DOWN,
    DPAD_LEFT,
    DPAD_RIGHT,
    MAX
}

Game_Controller_Axis :: enum i32
{
    INVALID = -1,
    LEFTX,
    LEFTY,
    RIGHTX,
    RIGHTY,
    TRIGGERLEFT,
    TRIGGERRIGHT,
    MAX
}

Game_Controller_Bind_Type :: enum i32
{
    NONE = 0,
    BUTTON,
    AXIS,
    HAT
}

System_Cursor :: enum i32
{
    ARROW,     /**< Arrow */
    IBEAM,     /**< I-beam */
    WAIT,      /**< Wait */
    CROSSHAIR, /**< Crosshair */
    WAITARROW, /**< Small wait cursor (or Wait if not available) */
    SIZENWSE,  /**< Double arrow pointing northwest and southeast */
    SIZENESW,  /**< Double arrow pointing northeast and southwest */
    SIZEWE,    /**< Double arrow pointing west and east */
    SIZENS,    /**< Double arrow pointing north and south */
    SIZEALL,   /**< Four pointed arrow pointing north, south, east, and west */
    NO,        /**< Slashed circle or crossbones */
    HAND,      /**< Hand */
    NUM_SYSTEM_CURSORS
}


Scancode :: enum i32
{
    UNKNOWN = 0,

    /**
     *  \name Usage page 0x07
     *
     *  These values are from usage page 0x07 (USB keyboard page).
     */
    /* @{ */

    A = 4,
    B = 5,
    C = 6,
    D = 7,
    E = 8,
    F = 9,
    G = 10,
    H = 11,
    I = 12,
    J = 13,
    K = 14,
    L = 15,
    M = 16,
    N = 17,
    O = 18,
    P = 19,
    Q = 20,
    R = 21,
    S = 22,
    T = 23,
    U = 24,
    V = 25,
    W = 26,
    X = 27,
    Y = 28,
    Z = 29,

    NR_1 = 30,
    NR_2 = 31,
    NR_3 = 32,
    NR_4 = 33,
    NR_5 = 34,
    NR_6 = 35,
    NR_7 = 36,
    NR_8 = 37,
    NR_9 = 38,
    NR_0 = 39,

    RETURN = 40,
    ESCAPE = 41,
    BACKSPACE = 42,
    TAB = 43,
    SPACE = 44,

    MINUS = 45,
    EQUALS = 46,
    LEFTBRACKET = 47,
    RIGHTBRACKET = 48,
    BACKSLASH = 49, /**< Located at the lower left of the return
                                  *   key on ISO keyboards and at the right end
                                  *   of the QWERTY row on ANSI keyboards.
                                  *   Produces REVERSE SOLIDUS (backslash) and
                                  *   VERTICAL LINE in a US layout, REVERSE
                                  *   SOLIDUS and VERTICAL LINE in a UK Mac
                                  *   layout, NUMBER SIGN and TILDE in a UK
                                  *   Windows layout, DOLLAR SIGN and POUND SIGN
                                  *   in a Swiss German layout, NUMBER SIGN and
                                  *   APOSTROPHE in a German layout, GRAVE
                                  *   ACCENT and POUND SIGN in a French Mac
                                  *   layout, and ASTERISK and MICRO SIGN in a
                                  *   French Windows layout.
                                  */
    NONUSHASH = 50, /**< ISO USB keyboards actually use this code
                                  *   instead of 49 for the same key, but all
                                  *   OSes I've seen treat the two codes
                                  *   identically. So, as an implementor, unless
                                  *   your keyboard generates both of those
                                  *   codes and your OS treats them differently,
                                  *   you should generate BACKSLASH
                                  *   instead of this code. As a user, you
                                  *   should not rely on this code because SDL
                                  *   will never generate it with most (all?)
                                  *   keyboards.
                                  */
    SEMICOLON = 51,
    APOSTROPHE = 52,
    GRAVE = 53, /**< Located in the top left corner (on both ANSI
                              *   and ISO keyboards). Produces GRAVE ACCENT and
                              *   TILDE in a US Windows layout and in US and UK
                              *   Mac layouts on ANSI keyboards, GRAVE ACCENT
                              *   and NOT SIGN in a UK Windows layout, SECTION
                              *   SIGN and PLUS-MINUS SIGN in US and UK Mac
                              *   layouts on ISO keyboards, SECTION SIGN and
                              *   DEGREE SIGN in a Swiss German layout (Mac:
                              *   only on ISO keyboards), CIRCUMFLEX ACCENT and
                              *   DEGREE SIGN in a German layout (Mac: only on
                              *   ISO keyboards), SUPERSCRIPT TWO and TILDE in a
                              *   French Windows layout, COMMERCIAL AT and
                              *   NUMBER SIGN in a French Mac layout on ISO
                              *   keyboards, and LESS-THAN SIGN and GREATER-THAN
                              *   SIGN in a Swiss German, German, or French Mac
                              *   layout on ANSI keyboards.
                              */
    COMMA = 54,
    PERIOD = 55,
    SLASH = 56,

    CAPSLOCK = 57,

    F1 = 58,
    F2 = 59,
    F3 = 60,
    F4 = 61,
    F5 = 62,
    F6 = 63,
    F7 = 64,
    F8 = 65,
    F9 = 66,
    F10 = 67,
    F11 = 68,
    F12 = 69,

    PRINTSCREEN = 70,
    SCROLLLOCK = 71,
    PAUSE = 72,
    INSERT = 73, /**< insert on PC, help on some Mac keyboards (but
                                   does send code 73, not 117) */
    HOME = 74,
    PAGEUP = 75,
    DELETE = 76,
    END = 77,
    PAGEDOWN = 78,
    RIGHT = 79,
    LEFT = 80,
    DOWN = 81,
    UP = 82,

    NUMLOCKCLEAR = 83, /**< num lock on PC, clear on Mac keyboards
                                     */
    KP_DIVIDE = 84,
    KP_MULTIPLY = 85,
    KP_MINUS = 86,
    KP_PLUS = 87,
    KP_ENTER = 88,
    KP_1 = 89,
    KP_2 = 90,
    KP_3 = 91,
    KP_4 = 92,
    KP_5 = 93,
    KP_6 = 94,
    KP_7 = 95,
    KP_8 = 96,
    KP_9 = 97,
    KP_0 = 98,
    KP_PERIOD = 99,

    NONUSBACKSLASH = 100, /**< This is the additional key that ISO
                                        *   keyboards have over ANSI ones,
                                        *   located between left shift and Y.
                                        *   Produces GRAVE ACCENT and TILDE in a
                                        *   US or UK Mac layout, REVERSE SOLIDUS
                                        *   (backslash) and VERTICAL LINE in a
                                        *   US or UK Windows layout, and
                                        *   LESS-THAN SIGN and GREATER-THAN SIGN
                                        *   in a Swiss German, German, or French
                                        *   layout. */
    APPLICATION = 101, /**< windows contextual menu, compose */
    POWER = 102, /**< The USB document says this is a status flag,
                               *   not a physical key - but some Mac keyboards
                               *   do have a power key. */
    KP_EQUALS = 103,
    F13 = 104,
    F14 = 105,
    F15 = 106,
    F16 = 107,
    F17 = 108,
    F18 = 109,
    F19 = 110,
    F20 = 111,
    F21 = 112,
    F22 = 113,
    F23 = 114,
    F24 = 115,
    EXECUTE = 116,
    HELP = 117,
    MENU = 118,
    SELECT = 119,
    STOP = 120,
    AGAIN = 121,   /**< redo */
    UNDO = 122,
    CUT = 123,
    COPY = 124,
    PASTE = 125,
    FIND = 126,
    MUTE = 127,
    VOLUMEUP = 128,
    VOLUMEDOWN = 129,
/* not sure whether there's a reason to enable these */
/*     LOCKINGCAPSLOCK = 130,  */
/*     LOCKINGNUMLOCK = 131, */
/*     LOCKINGSCROLLLOCK = 132, */
    KP_COMMA = 133,
    KP_EQUALSAS400 = 134,

    INTERNATIONAL1 = 135, /**< used on Asian keyboards, see
                                            footnotes in USB doc */
    INTERNATIONAL2 = 136,
    INTERNATIONAL3 = 137, /**< Yen */
    INTERNATIONAL4 = 138,
    INTERNATIONAL5 = 139,
    INTERNATIONAL6 = 140,
    INTERNATIONAL7 = 141,
    INTERNATIONAL8 = 142,
    INTERNATIONAL9 = 143,
    LANG1 = 144, /**< Hangul/English toggle */
    LANG2 = 145, /**< Hanja conversion */
    LANG3 = 146, /**< Katakana */
    LANG4 = 147, /**< Hiragana */
    LANG5 = 148, /**< Zenkaku/Hankaku */
    LANG6 = 149, /**< reserved */
    LANG7 = 150, /**< reserved */
    LANG8 = 151, /**< reserved */
    LANG9 = 152, /**< reserved */

    ALTERASE = 153, /**< Erase-Eaze */
    SYSREQ = 154,
    CANCEL = 155,
    CLEAR = 156,
    PRIOR = 157,
    RETURN2 = 158,
    SEPARATOR = 159,
    OUT = 160,
    OPER = 161,
    CLEARAGAIN = 162,
    CRSEL = 163,
    EXSEL = 164,

    KP_00 = 176,
    KP_000 = 177,
    THOUSANDSSEPARATOR = 178,
    DECIMALSEPARATOR = 179,
    CURRENCYUNIT = 180,
    CURRENCYSUBUNIT = 181,
    KP_LEFTPAREN = 182,
    KP_RIGHTPAREN = 183,
    KP_LEFTBRACE = 184,
    KP_RIGHTBRACE = 185,
    KP_TAB = 186,
    KP_BACKSPACE = 187,
    KP_A = 188,
    KP_B = 189,
    KP_C = 190,
    KP_D = 191,
    KP_E = 192,
    KP_F = 193,
    KP_XOR = 194,
    KP_POWER = 195,
    KP_PERCENT = 196,
    KP_LESS = 197,
    KP_GREATER = 198,
    KP_AMPERSAND = 199,
    KP_DBLAMPERSAND = 200,
    KP_VERTICALBAR = 201,
    KP_DBLVERTICALBAR = 202,
    KP_COLON = 203,
    KP_HASH = 204,
    KP_SPACE = 205,
    KP_AT = 206,
    KP_EXCLAM = 207,
    KP_MEMSTORE = 208,
    KP_MEMRECALL = 209,
    KP_MEMCLEAR = 210,
    KP_MEMADD = 211,
    KP_MEMSUBTRACT = 212,
    KP_MEMMULTIPLY = 213,
    KP_MEMDIVIDE = 214,
    KP_PLUSMINUS = 215,
    KP_CLEAR = 216,
    KP_CLEARENTRY = 217,
    KP_BINARY = 218,
    KP_OCTAL = 219,
    KP_DECIMAL = 220,
    KP_HEXADECIMAL = 221,

    LCTRL = 224,
    LSHIFT = 225,
    LALT = 226, /**< alt, option */
    LGUI = 227, /**< windows, command (apple), meta */
    RCTRL = 228,
    RSHIFT = 229,
    RALT = 230, /**< alt gr, option */
    RGUI = 231, /**< windows, command (apple), meta */

    MODE = 257,    /**< I'm not sure if this is really not covered
                                 *   by any of the above, but since there's a
                                 *   special KMOD_MODE for it I'm adding it here
                                 */

    /* @} *//* Usage page 0x07 */

    /**
     *  \name Usage page 0x0C
     *
     *  These values are mapped from usage page 0x0C (USB consumer page).
     */
    /* @{ */

    AUDIONEXT = 258,
    AUDIOPREV = 259,
    AUDIOSTOP = 260,
    AUDIOPLAY = 261,
    AUDIOMUTE = 262,
    MEDIASELECT = 263,
    WWW = 264,
    MAIL = 265,
    CALCULATOR = 266,
    COMPUTER = 267,
    AC_SEARCH = 268,
    AC_HOME = 269,
    AC_BACK = 270,
    AC_FORWARD = 271,
    AC_STOP = 272,
    AC_REFRESH = 273,
    AC_BOOKMARKS = 274,

    /* @} *//* Usage page 0x0C */

    /**
     *  \name Walther keys
     *
     *  These are values that Christian Walther added (for mac keyboard?).
     */
    /* @{ */

    BRIGHTNESSDOWN = 275,
    BRIGHTNESSUP = 276,
    DISPLAYSWITCH = 277, /**< display mirroring/dual display
                                           switch, video mode switch */
    KBDILLUMTOGGLE = 278,
    KBDILLUMDOWN = 279,
    KBDILLUMUP = 280,
    EJECT = 281,
    SLEEP = 282,

    APP1 = 283,
    APP2 = 284,

    /* @} *//* Walther keys */

    /* Add any other keys here. */

    NUM_SCANCODES = 512 /**< not a key, just marks the number of scancodes
                                 for array bounds */
}


SDLK_UNKNOWN :: 0;

SDLK_RETURN :: '\r';
SDLK_ESCAPE :: '\033';
SDLK_BACKSPACE :: '\b';
SDLK_TAB :: '\t';
SDLK_SPACE :: ' ';
SDLK_EXCLAIM :: '!';
SDLK_QUOTEDBL :: '"';
SDLK_HASH :: '#';
SDLK_PERCENT :: '%';
SDLK_DOLLAR :: '$';
SDLK_AMPERSAND :: '&';
SDLK_QUOTE :: '\'';
SDLK_LEFTPAREN :: '(';
SDLK_RIGHTPAREN :: ')';
SDLK_ASTERISK :: '*';
SDLK_PLUS :: '+';
SDLK_COMMA :: ',';
SDLK_MINUS :: '-';
SDLK_PERIOD :: '.';
SDLK_SLASH :: '/';
SDLK_0 :: '0';
SDLK_1 :: '1';
SDLK_2 :: '2';
SDLK_3 :: '3';
SDLK_4 :: '4';
SDLK_5 :: '5';
SDLK_6 :: '6';
SDLK_7 :: '7';
SDLK_8 :: '8';
SDLK_9 :: '9';
SDLK_COLON :: ':';
SDLK_SEMICOLON :: ';';
SDLK_LESS :: '<';
SDLK_EQUALS :: '=';
SDLK_GREATER :: '>';
SDLK_QUESTION :: '?';
SDLK_AT :: '@';
/*
   Skip uppercase letters
 */
SDLK_LEFTBRACKET :: '[';
SDLK_BACKSLASH :: '\\';
SDLK_RIGHTBRACKET :: ']';
SDLK_CARET :: '^';
SDLK_UNDERSCORE :: '_';
SDLK_BACKQUOTE :: '`';
SDLK_a :: 'a';
SDLK_b :: 'b';
SDLK_c :: 'c';
SDLK_d :: 'd';
SDLK_e :: 'e';
SDLK_f :: 'f';
SDLK_g :: 'g';
SDLK_h :: 'h';
SDLK_i :: 'i';
SDLK_j :: 'j';
SDLK_k :: 'k';
SDLK_l :: 'l';
SDLK_m :: 'm';
SDLK_n :: 'n';
SDLK_o :: 'o';
SDLK_p :: 'p';
SDLK_q :: 'q';
SDLK_r :: 'r';
SDLK_s :: 's';
SDLK_t :: 't';
SDLK_u :: 'u';
SDLK_v :: 'v';
SDLK_w :: 'w';
SDLK_x :: 'x';
SDLK_y :: 'y';
SDLK_z :: 'z';

SDLK_CAPSLOCK :: Scancode.CAPSLOCK | SDLK_SCANCODE_MASK;

SDLK_F1 :: Scancode.F1 | SDLK_SCANCODE_MASK;
SDLK_F2 :: Scancode.F2 | SDLK_SCANCODE_MASK;
SDLK_F3 :: Scancode.F3 | SDLK_SCANCODE_MASK;
SDLK_F4 :: Scancode.F4 | SDLK_SCANCODE_MASK;
SDLK_F5 :: Scancode.F5 | SDLK_SCANCODE_MASK;
SDLK_F6 :: Scancode.F6 | SDLK_SCANCODE_MASK;
SDLK_F7 :: Scancode.F7 | SDLK_SCANCODE_MASK;
SDLK_F8 :: Scancode.F8 | SDLK_SCANCODE_MASK;
SDLK_F9 :: Scancode.F9 | SDLK_SCANCODE_MASK;
SDLK_F10 :: Scancode.F10 | SDLK_SCANCODE_MASK;
SDLK_F11 :: Scancode.F11 | SDLK_SCANCODE_MASK;
SDLK_F12 :: Scancode.F12 | SDLK_SCANCODE_MASK;

SDLK_PRINTSCREEN :: Scancode.PRINTSCREEN | SDLK_SCANCODE_MASK;
SDLK_SCROLLLOCK :: Scancode.SCROLLLOCK | SDLK_SCANCODE_MASK;
SDLK_PAUSE :: Scancode.PAUSE | SDLK_SCANCODE_MASK;
SDLK_INSERT :: Scancode.INSERT | SDLK_SCANCODE_MASK;
SDLK_HOME :: Scancode.HOME | SDLK_SCANCODE_MASK;
SDLK_PAGEUP :: Scancode.PAGEUP | SDLK_SCANCODE_MASK;
SDLK_DELETE :: '\177';
SDLK_END :: Scancode.END | SDLK_SCANCODE_MASK;
SDLK_PAGEDOWN :: Scancode.PAGEDOWN | SDLK_SCANCODE_MASK;
SDLK_RIGHT :: Scancode.RIGHT | SDLK_SCANCODE_MASK;
SDLK_LEFT :: Scancode.LEFT | SDLK_SCANCODE_MASK;
SDLK_DOWN :: Scancode.DOWN | SDLK_SCANCODE_MASK;
SDLK_UP :: Scancode.UP | SDLK_SCANCODE_MASK;

SDLK_NUMLOCKCLEAR :: Scancode.NUMLOCKCLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_DIVIDE :: Scancode.KP_DIVIDE | SDLK_SCANCODE_MASK;
SDLK_KP_MULTIPLY :: Scancode.KP_MULTIPLY | SDLK_SCANCODE_MASK;
SDLK_KP_MINUS :: Scancode.KP_MINUS | SDLK_SCANCODE_MASK;
SDLK_KP_PLUS :: Scancode.KP_PLUS | SDLK_SCANCODE_MASK;
SDLK_KP_ENTER :: Scancode.KP_ENTER | SDLK_SCANCODE_MASK;
SDLK_KP_1 :: Scancode.KP_1 | SDLK_SCANCODE_MASK;
SDLK_KP_2 :: Scancode.KP_2 | SDLK_SCANCODE_MASK;
SDLK_KP_3 :: Scancode.KP_3 | SDLK_SCANCODE_MASK;
SDLK_KP_4 :: Scancode.KP_4 | SDLK_SCANCODE_MASK;
SDLK_KP_5 :: Scancode.KP_5 | SDLK_SCANCODE_MASK;
SDLK_KP_6 :: Scancode.KP_6 | SDLK_SCANCODE_MASK;
SDLK_KP_7 :: Scancode.KP_7 | SDLK_SCANCODE_MASK;
SDLK_KP_8 :: Scancode.KP_8 | SDLK_SCANCODE_MASK;
SDLK_KP_9 :: Scancode.KP_9 | SDLK_SCANCODE_MASK;
SDLK_KP_0 :: Scancode.KP_0 | SDLK_SCANCODE_MASK;
SDLK_KP_PERIOD :: Scancode.KP_PERIOD | SDLK_SCANCODE_MASK;

SDLK_APPLICATION :: Scancode.APPLICATION | SDLK_SCANCODE_MASK;
SDLK_POWER :: Scancode.POWER | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALS :: Scancode.KP_EQUALS | SDLK_SCANCODE_MASK;
SDLK_F13 :: Scancode.F13 | SDLK_SCANCODE_MASK;
SDLK_F14 :: Scancode.F14 | SDLK_SCANCODE_MASK;
SDLK_F15 :: Scancode.F15 | SDLK_SCANCODE_MASK;
SDLK_F16 :: Scancode.F16 | SDLK_SCANCODE_MASK;
SDLK_F17 :: Scancode.F17 | SDLK_SCANCODE_MASK;
SDLK_F18 :: Scancode.F18 | SDLK_SCANCODE_MASK;
SDLK_F19 :: Scancode.F19 | SDLK_SCANCODE_MASK;
SDLK_F20 :: Scancode.F20 | SDLK_SCANCODE_MASK;
SDLK_F21 :: Scancode.F21 | SDLK_SCANCODE_MASK;
SDLK_F22 :: Scancode.F22 | SDLK_SCANCODE_MASK;
SDLK_F23 :: Scancode.F23 | SDLK_SCANCODE_MASK;
SDLK_F24 :: Scancode.F24 | SDLK_SCANCODE_MASK;
SDLK_EXECUTE :: Scancode.EXECUTE | SDLK_SCANCODE_MASK;
SDLK_HELP :: Scancode.HELP | SDLK_SCANCODE_MASK;
SDLK_MENU :: Scancode.MENU | SDLK_SCANCODE_MASK;
SDLK_SELECT :: Scancode.SELECT | SDLK_SCANCODE_MASK;
SDLK_STOP :: Scancode.STOP | SDLK_SCANCODE_MASK;
SDLK_AGAIN :: Scancode.AGAIN | SDLK_SCANCODE_MASK;
SDLK_UNDO :: Scancode.UNDO | SDLK_SCANCODE_MASK;
SDLK_CUT :: Scancode.CUT | SDLK_SCANCODE_MASK;
SDLK_COPY :: Scancode.COPY | SDLK_SCANCODE_MASK;
SDLK_PASTE :: Scancode.PASTE | SDLK_SCANCODE_MASK;
SDLK_FIND :: Scancode.FIND | SDLK_SCANCODE_MASK;
SDLK_MUTE :: Scancode.MUTE | SDLK_SCANCODE_MASK;
SDLK_VOLUMEUP :: Scancode.VOLUMEUP | SDLK_SCANCODE_MASK;
SDLK_VOLUMEDOWN :: Scancode.VOLUMEDOWN | SDLK_SCANCODE_MASK;
SDLK_KP_COMMA :: Scancode.KP_COMMA | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALSAS400 :: Scancode.KP_EQUALSAS400 | SDLK_SCANCODE_MASK;

SDLK_ALTERASE :: Scancode.ALTERASE | SDLK_SCANCODE_MASK;
SDLK_SYSREQ :: Scancode.SYSREQ | SDLK_SCANCODE_MASK;
SDLK_CANCEL :: Scancode.CANCEL | SDLK_SCANCODE_MASK;
SDLK_CLEAR :: Scancode.CLEAR | SDLK_SCANCODE_MASK;
SDLK_PRIOR :: Scancode.PRIOR | SDLK_SCANCODE_MASK;
SDLK_RETURN2 :: Scancode.RETURN2 | SDLK_SCANCODE_MASK;
SDLK_SEPARATOR :: Scancode.SEPARATOR | SDLK_SCANCODE_MASK;
SDLK_OUT :: Scancode.OUT | SDLK_SCANCODE_MASK;
SDLK_OPER :: Scancode.OPER | SDLK_SCANCODE_MASK;
SDLK_CLEARAGAIN :: Scancode.CLEARAGAIN | SDLK_SCANCODE_MASK;
SDLK_CRSEL :: Scancode.CRSEL | SDLK_SCANCODE_MASK;
SDLK_EXSEL :: Scancode.EXSEL | SDLK_SCANCODE_MASK;

SDLK_KP_00 :: Scancode.KP_00 | SDLK_SCANCODE_MASK;
SDLK_KP_000 :: Scancode.KP_000 | SDLK_SCANCODE_MASK;
SDLK_THOUSANDSSEPARATOR :: Scancode.THOUSANDSSEPARATOR | SDLK_SCANCODE_MASK;
SDLK_DECIMALSEPARATOR :: Scancode.DECIMALSEPARATOR | SDLK_SCANCODE_MASK;
SDLK_CURRENCYUNIT :: Scancode.CURRENCYUNIT | SDLK_SCANCODE_MASK;
SDLK_CURRENCYSUBUNIT :: Scancode.CURRENCYSUBUNIT | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTPAREN :: Scancode.KP_LEFTPAREN | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTPAREN :: Scancode.KP_RIGHTPAREN | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTBRACE :: Scancode.KP_LEFTBRACE | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTBRACE :: Scancode.KP_RIGHTBRACE | SDLK_SCANCODE_MASK;
SDLK_KP_TAB :: Scancode.KP_TAB | SDLK_SCANCODE_MASK;
SDLK_KP_BACKSPACE :: Scancode.KP_BACKSPACE | SDLK_SCANCODE_MASK;
SDLK_KP_A :: Scancode.KP_A | SDLK_SCANCODE_MASK;
SDLK_KP_B :: Scancode.KP_B | SDLK_SCANCODE_MASK;
SDLK_KP_C :: Scancode.KP_C | SDLK_SCANCODE_MASK;
SDLK_KP_D :: Scancode.KP_D | SDLK_SCANCODE_MASK;
SDLK_KP_E :: Scancode.KP_E | SDLK_SCANCODE_MASK;
SDLK_KP_F :: Scancode.KP_F | SDLK_SCANCODE_MASK;
SDLK_KP_XOR :: Scancode.KP_XOR | SDLK_SCANCODE_MASK;
SDLK_KP_POWER :: Scancode.KP_POWER | SDLK_SCANCODE_MASK;
SDLK_KP_PERCENT :: Scancode.KP_PERCENT | SDLK_SCANCODE_MASK;
SDLK_KP_LESS :: Scancode.KP_LESS | SDLK_SCANCODE_MASK;
SDLK_KP_GREATER :: Scancode.KP_GREATER | SDLK_SCANCODE_MASK;
SDLK_KP_AMPERSAND :: Scancode.KP_AMPERSAND | SDLK_SCANCODE_MASK;
SDLK_KP_DBLAMPERSAND :: Scancode.KP_DBLAMPERSAND | SDLK_SCANCODE_MASK;
SDLK_KP_VERTICALBAR :: Scancode.KP_VERTICALBAR | SDLK_SCANCODE_MASK;
SDLK_KP_DBLVERTICALBAR :: Scancode.KP_DBLVERTICALBAR | SDLK_SCANCODE_MASK;
SDLK_KP_COLON :: Scancode.KP_COLON | SDLK_SCANCODE_MASK;
SDLK_KP_HASH :: Scancode.KP_HASH | SDLK_SCANCODE_MASK;
SDLK_KP_SPACE :: Scancode.KP_SPACE | SDLK_SCANCODE_MASK;
SDLK_KP_AT :: Scancode.KP_AT | SDLK_SCANCODE_MASK;
SDLK_KP_EXCLAM :: Scancode.KP_EXCLAM | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSTORE :: Scancode.KP_MEMSTORE | SDLK_SCANCODE_MASK;
SDLK_KP_MEMRECALL :: Scancode.KP_MEMRECALL | SDLK_SCANCODE_MASK;
SDLK_KP_MEMCLEAR :: Scancode.KP_MEMCLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_MEMADD :: Scancode.KP_MEMADD | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSUBTRACT :: Scancode.KP_MEMSUBTRACT | SDLK_SCANCODE_MASK;
SDLK_KP_MEMMULTIPLY :: Scancode.KP_MEMMULTIPLY | SDLK_SCANCODE_MASK;
SDLK_KP_MEMDIVIDE :: Scancode.KP_MEMDIVIDE | SDLK_SCANCODE_MASK;
SDLK_KP_PLUSMINUS :: Scancode.KP_PLUSMINUS | SDLK_SCANCODE_MASK;
SDLK_KP_CLEAR :: Scancode.KP_CLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_CLEARENTRY :: Scancode.KP_CLEARENTRY | SDLK_SCANCODE_MASK;
SDLK_KP_BINARY :: Scancode.KP_BINARY | SDLK_SCANCODE_MASK;
SDLK_KP_OCTAL :: Scancode.KP_OCTAL | SDLK_SCANCODE_MASK;
SDLK_KP_DECIMAL :: Scancode.KP_DECIMAL | SDLK_SCANCODE_MASK;
SDLK_KP_HEXADECIMAL :: Scancode.KP_HEXADECIMAL | SDLK_SCANCODE_MASK;

SDLK_LCTRL :: Scancode.LCTRL | SDLK_SCANCODE_MASK;
SDLK_LSHIFT :: Scancode.LSHIFT | SDLK_SCANCODE_MASK;
SDLK_LALT :: Scancode.LALT | SDLK_SCANCODE_MASK;
SDLK_LGUI :: Scancode.LGUI | SDLK_SCANCODE_MASK;
SDLK_RCTRL :: Scancode.RCTRL | SDLK_SCANCODE_MASK;
SDLK_RSHIFT :: Scancode.RSHIFT | SDLK_SCANCODE_MASK;
SDLK_RALT :: Scancode.RALT | SDLK_SCANCODE_MASK;
SDLK_RGUI :: Scancode.RGUI | SDLK_SCANCODE_MASK;

SDLK_MODE :: Scancode.MODE | SDLK_SCANCODE_MASK;

SDLK_AUDIONEXT :: Scancode.AUDIONEXT | SDLK_SCANCODE_MASK;
SDLK_AUDIOPREV :: Scancode.AUDIOPREV | SDLK_SCANCODE_MASK;
SDLK_AUDIOSTOP :: Scancode.AUDIOSTOP | SDLK_SCANCODE_MASK;
SDLK_AUDIOPLAY :: Scancode.AUDIOPLAY | SDLK_SCANCODE_MASK;
SDLK_AUDIOMUTE :: Scancode.AUDIOMUTE | SDLK_SCANCODE_MASK;
SDLK_MEDIASELECT :: Scancode.MEDIASELECT | SDLK_SCANCODE_MASK;
SDLK_WWW :: Scancode.WWW | SDLK_SCANCODE_MASK;
SDLK_MAIL :: Scancode.MAIL | SDLK_SCANCODE_MASK;
SDLK_CALCULATOR :: Scancode.CALCULATOR | SDLK_SCANCODE_MASK;
SDLK_COMPUTER :: Scancode.COMPUTER | SDLK_SCANCODE_MASK;
SDLK_AC_SEARCH :: Scancode.AC_SEARCH | SDLK_SCANCODE_MASK;
SDLK_AC_HOME :: Scancode.AC_HOME | SDLK_SCANCODE_MASK;
SDLK_AC_BACK :: Scancode.AC_BACK | SDLK_SCANCODE_MASK;
SDLK_AC_FORWARD :: Scancode.AC_FORWARD | SDLK_SCANCODE_MASK;
SDLK_AC_STOP :: Scancode.AC_STOP | SDLK_SCANCODE_MASK;
SDLK_AC_REFRESH :: Scancode.AC_REFRESH | SDLK_SCANCODE_MASK;
SDLK_AC_BOOKMARKS :: Scancode.AC_BOOKMARKS | SDLK_SCANCODE_MASK;

SDLK_BRIGHTNESSDOWN :: Scancode.BRIGHTNESSDOWN | SDLK_SCANCODE_MASK;
SDLK_BRIGHTNESSUP :: Scancode.BRIGHTNESSUP | SDLK_SCANCODE_MASK;
SDLK_DISPLAYSWITCH :: Scancode.DISPLAYSWITCH | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMTOGGLE :: Scancode.KBDILLUMTOGGLE | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMDOWN :: Scancode.KBDILLUMDOWN | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMUP :: Scancode.KBDILLUMUP | SDLK_SCANCODE_MASK;
SDLK_EJECT :: Scancode.EJECT | SDLK_SCANCODE_MASK;
SDLK_SLEEP :: Scancode.SLEEP | SDLK_SCANCODE_MASK;

SDLK_SCANCODE_MASK :: 1<<30;


HAT_CENTERED :: 0x00;
HAT_UP :: 0x01;
HAT_RIGHT :: 0x02;
HAT_DOWN :: 0x04;
HAT_LEFT :: 0x08;
HAT_RIGHTUP :: HAT_RIGHT | HAT_UP;
HAT_RIGHTDOWN :: HAT_RIGHT | HAT_DOWN;
HAT_LEFTUP :: HAT_LEFT | HAT_UP;
HAT_LEFTDOWN :: HAT_LEFT | HAT_DOWN;



FIRST_EVENT :: 0;     /**< Unused (do not remove) */

/* Application events */
QUIT :: 0x100; /**< User-requested quit */

/* These application events have special meaning on iOS, see README-ios.md for details */
APP_TERMINATING :: 257;        /**< The application is being terminated by the OS
                                 Called on iOS in applicationWillTerminate()
                                 Called on Android in onDestroy()
                            */
APP_LOW_MEMORY :: 258;          /**< The application is low on memory, free memory if possible.
                                 Called on iOS in applicationDidReceiveMemoryWarning()
                                 Called on Android in onLowMemory()
                            */
APP_WILL_ENTER_BACKGROUND :: 259; /**< The application is about to enter the background
                                 Called on iOS in applicationWillResignActive()
                                 Called on Android in onPause()
                            */
APP_DID_ENTER_BACKGROUND :: 260; /**< The application did enter the background and may not get CPU for some time
                                 Called on iOS in applicationDidEnterBackground()
                                 Called on Android in onPause()
                            */
APP_WILL_ENTER_FOREGROUND :: 261; /**< The application is about to enter the foreground
                                 Called on iOS in applicationWillEnterForeground()
                                 Called on Android in onResume()
                            */
APP_DID_ENTER_FOREGROUND :: 262; /**< The application is now interactive
                                 Called on iOS in applicationDidBecomeActive()
                                 Called on Android in onResume()
                            */

/* Window events */
WINDOW_EVENT :: 0x200; /**< Window state change */
SYS_WM_EVENT :: 513;             /**< System specific event */

/* Keyboard events */
KEY_DOWN :: 0x300; /**< Key pressed */
KEY_UP :: 769;                  /**< Key released */
TEXT_EDITING :: 770;            /**< Keyboard text editing (composition) */
TEXT_INPUT :: 771;              /**< Keyboard text input */
KEY_MAP_CHANGED :: 772;          /**< Keymap changed due to a system event such as an
                                 input language or keyboard layout change.
                            */

/* Mouse events */
MOUSE_MOTION :: 0x400; /**< Mouse moved */
MOUSE_BUTTON_DOWN :: 1025;        /**< Mouse button pressed */
MOUSE_BUTTON_UP :: 1026;         /**< Mouse button released */
MOUSE_WHEEL :: 1027;             /**< Mouse wheel motion */

/* Joystick events */
JOY_AXIS_MOTION :: 0x600; /**< Joystick axis motion */
JOY_BALL_MOTION :: 1537;          /**< Joystick trackball motion */
JOY_HAT_MOTION :: 1538;           /**< Joystick hat position change */
JOY_BUTTON_DOWN :: 1539;          /**< Joystick button pressed */
JOY_BUTTON_UP :: 1540;            /**< Joystick button released */
JOY_DEVICE_ADDED :: 1541;         /**< A new joystick has been inserted into the system */
JOY_DEVICE_REMOVED :: 1542;       /**< An opened joystick has been removed */

/* Game controller events */
CONTROLLER_AXIS_MOTION :: 0x650; /**< Game controller axis motion */
CONTROLLER_BUTTON_DOWN :: 1617;          /**< Game controller button pressed */
CONTROLLER_BUTTON_UP :: 1618;            /**< Game controller button released */
CONTROLLER_DEVICE_ADDED :: 1619;         /**< A new Game controller has been inserted into the system */
CONTROLLER_DEVICE_REMOVED :: 1620;       /**< An opened Game controller has been removed */
CONTROLLER_DEVICE_REMAPPED :: 1621;      /**< The controller mapping was updated */

/* Touch events */
FINGER_DOWN :: 0x700;
FINGER_UP :: 1793;
FINGER_MOTION :: 1794;

/* Gesture events */
DOLLAR_GESTURE :: 0x800;
DOLLAR_RECORD :: 2049;
MULTIGESTURE :: 2050;

/* Clipboard events */
CLIPBOARD_UPDATE :: 0x900; /**< The clipboard changed */

/* Drag and drop events */
DROP_FILE :: 0x1000; /**< The system requests a file open */
DROP_TEXT :: 4097;                 /**< text/plain drag-and-drop event */
DROP_BEGIN :: 4098;                /**< A new set of drops is beginning (NULL filename) */
DROP_COMPLETE :: 4099;             /**< Current set of drops is now complete (NULL filename) */

/* Audio hotplug events */
AUDIO_DEVICE_ADDED :: 0x1100; /**< A new audio device is available */
AUDIO_DEVICE_REMOVED :: 4353;        /**< An audio device has been removed. */

/* Render events */
RENDER_TARGETS_RESET :: 0x2000; /**< The render targets have been reset and their contents need to be updated */
RENDER_DEVICE_RESET :: 8193; /**< The device has been reset and all textures need to be recreated */

/** Events ::USER_EVENT through ::LAST_EVENT are for your use,
 *  and should be allocated with RegisterEvents()
 */
USER_EVENT :: 0x8000;

/**
 *  This last event is only for bounding internal arrays
 */
LAST_EVENT :: 0xFFFF;

GL_Context :: rawptr;

BlitMap :: struct #ordered {};
Window :: struct #ordered {};
Renderer :: struct #ordered {};
Texture :: struct #ordered {};
Cond :: struct #ordered {};
Mutex :: struct #ordered {};
Sem :: struct #ordered {};
Thread :: struct #ordered {};
Haptic :: struct #ordered {};
Joystick :: struct #ordered {};
Game_Controller :: struct #ordered {};
Cursor :: struct #ordered {};
IDirect3D_Device_9 :: struct #ordered {};

// Unsure of these
Sys_Wm_Info :: struct #ordered {};
Sys_Wm_Msg :: struct #ordered {};

Joystick_Id :: i32;
Timer_Id :: i32;
Spin_Lock :: i32;
Tls_Id :: u32;
Audio_Device_Id :: u32;
Audio_Device :: u32;
Audio_Format :: u16;
Keycode :: i32;
Thread_Id :: u64;
Touch_Id :: i64;
Finger_Id :: i64;

Hint_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
Event_Filter :: proc(userdata: rawptr, param: ^Event) -> i32 #cc_c;
Timer_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
Audio_Callback :: proc(userdata: rawptr, stream: ^u8, len: i32) #cc_c;
Assertion_Handler :: proc(data: ^Assert_Data, userdata: rawptr) -> Assert_State #cc_c;
Audio_Filter :: proc(cvt: ^Audio_Cvt, format: Audio_Format) #cc_c;
Thread_Function :: proc(data: rawptr) -> i32 #cc_c;
Hit_Test :: proc(window: ^Window, area: ^Point, data: rawptr) -> Hit_Test_Result #cc_c;
Windows_Message_Hook :: proc(userdata: rawptr, hwnd: rawptr, message: u32, wparam: u64, lparam: i64) #cc_c;
Log_Output_Function :: proc(userdata: rawptr, category: i32, priority: Log_Priority, message: ^u8) #cc_c;

// Thanks gingerBill for this one!
Game_Controller_Button_Bind :: struct #ordered
{
    bind_type: Game_Controller_Bind_Type;
    value: struct #raw_union
    {
        button: i32;
        axis:   i32;
        using hat_mask: struct #ordered
        {
            hat, mask: i32;
        };
    };
};

Message_Box_Data :: struct #ordered
{
    flags: u32;
    window: ^Window;
    title: ^u8;
    message: ^u8;

    numbuttons: i32;
    buttons: ^Message_Box_Button_Data;

    colorScheme: ^Message_Box_Color_Scheme;
}

Message_Box_Button_Data :: struct #ordered
{
    flags: u32;       /**< ::MessageBoxButtonFlags */
    buttonid: i32;       /**< User defined button id (value returned via ShowMessageBox) */
    text: ^u8;  /**< The UTF-8 button text */
}

Message_Box_Color_Scheme :: struct #ordered
{
    colors: [Message_Box_Color_Type.MAX]Message_Box_Color;
}

Message_Box_Color :: struct #ordered
{
    r, g, b: u8;
}

Assert_Data :: struct #ordered
{
    always_ignore: i32;
    trigger_count: u32;
    condition: ^u8;
    filename: ^u8;
    linenum: i32;
    function: ^u8;
    next: ^Assert_Data;
}

Window_Shape_Params :: struct #raw_union
{
    /** \brief a cutoff alpha value for binarization of the window shape's alpha channel. */
    binarizationCutoff: u8;
    colorKey: Color;
}

Window_Shape_Mode :: struct #ordered
{
    mode: Window_Shape_Modes;
    parameters: Window_Shape_Params;
}

Point :: struct #ordered
{
    x: i32;
    y: i32;
}

Renderer_Info :: struct #ordered
{
    name: ^u8;           /**< The name of the renderer */
    flags: u32;               /**< Supported ::RendererFlags */
    num_texture_formats: u32; /**< The number of available texture formats */
    texture_formats: [16]u32; /**< The available texture formats */
    max_texture_width: i32;      /**< The maximum texture width */
    max_texture_height: i32;     /**< The maximum texture height */
}

Version :: struct #ordered
{
    major: u8;        /**< major version */
    minor: u8;        /**< minor version */
    patch: u8;        /**< update version */
}

Display_Mode :: struct #ordered
{
    format: u32;              /**< pixel format */
    w: i32;                      /**< width, in screen coordinates */
    h: i32;                      /**< height, in screen coordinates */
    refresh_rate: i32;           /**< refresh rate (or zero for unspecified) */
    driverdata: rawptr;           /**< driver-specific data, initialize to 0 */
}

Finger :: struct #ordered
{
    id: Finger_Id;
    x: f32;
    y: f32;
    pressure: f32;
}

Audio_Spec :: struct #ordered
{
    freq: i32;                   /**< DSP frequency -- samples per second */
    format: Audio_Format;     /**< Audio data format */
    channels: u8;             /**< Number of channels: 1 mono, 2 stereo */
    silence: u8;              /**< Audio buffer silence value (calculated) */
    samples: u16;             /**< Audio buffer size in samples (power of 2) */
    padding: u16;             /**< Necessary for some compile environments */
    size: u32;                /**< Audio buffer size in bytes (calculated) */
    callback: Audio_Callback; /**< Callback that feeds the audio device (NULL to use QueueAudio()). */
    userdata: rawptr;             /**< Userdata passed to callback (ignored for NULL callbacks). */
}

Joystick_Guid :: struct #ordered
{
    data: [16]u8;
}

Audio_Cvt :: struct #ordered
{
    needed: i32;                 /**< Set to 1 if conversion possible */
    src_format: Audio_Format; /**< Source audio format */
    dst_format: Audio_Format; /**< Target audio format */
    rate_incr: i64;           /**< Rate conversion increment */
    buf: ^u8;                 /**< Buffer to hold entire audio data */
    len: i32;                    /**< Length of original audio buffer */
    len_cvt: i32;                /**< Length of converted audio buffer */
    len_mult: i32;               /**< buffer must be len*len_mult big */
    len_ratio: i64;           /**< Given len, final size is len*len_ratio */
    filters: [10]Audio_Filter;        /**< Filter list */
    filter_index: i32;           /**< Current audio conversion function */
}

Surface :: struct #ordered
{
    flags: u32;
    format: ^Pixel_Format;
    w, h: i32;
    pitch: i32;
    pixels: rawptr;

    userdata: rawptr;

    locked: i32;
    lock_data: rawptr;

    clip_rect: Rect;
    blip_map: ^BlitMap;

    refcount: i32;
}

Color :: struct #ordered
{
    r: u8;
    g: u8;
    b: u8;
    a: u8;
}

Palette :: struct #ordered
{
    ncolors: i32;
    colors: ^Color;
    version: u32;
    refcount: i32;
}

Pixel_Format :: struct #ordered
{
    format: u32;
    palette: ^Palette;
    bits_per_pixel: u8;
    bytes_per_pixel: u8;
    padding: [2]u8;
    r_mask: u32;
    g_mask: u32;
    b_mask: u32;
    a_mask: u32;
    r_loss: u8;
    g_loss: u8;
    b_loss: u8;
    a_loss: u8;
    r_shift: u8;
    g_shift: u8;
    b_shift: u8;
    a_shift: u8;
    refcount: i32;
    next: ^Pixel_Format;
}

Rect :: struct #ordered
{
    x, y: u32;
    w, h: u32;
}

Atomic :: struct #ordered
{
    value: i32;
}

Keysym :: struct #ordered
{
    scancode: u32;      /**< SDL physical key code - see ::Scancode for details */
    sym: i32;            /**< SDL virtual key code - see ::Keycode for details */
    mod: u16;                 /**< current key modifiers */
    unused: u32;
}

Haptic_Effect :: struct #raw_union
{
    /* Common for all force feedback effects */
    haptic_type: u16;                    /**< Effect type. */
    constant: Haptic_Constant;    /**< Constant effect. */
    periodic: Haptic_Periodic;    /**< Periodic effect. */
    condition: Haptic_Condition;  /**< Condition effect. */
    ramp: Haptic_Ramp;            /**< Ramp effect. */
    leftright: Haptic_Left_Right;  /**< Left/Right effect. */
    custom: Haptic_Custom;        /**< Custom effect. */
}

Haptic_Constant :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::HAPTIC_CONSTANT */
    direction: Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Constant */
    level: i16;           /**< Strength of the constant effect. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
}

Haptic_Periodic :: struct
{
    /* Header */
    haptic_type: u16;        /**< ::HAPTIC_SINE, ::HAPTIC_LEFTRIGHT,
                             ::HAPTIC_TRIANGLE, ::HAPTIC_SAWTOOTHUP or
                             ::HAPTIC_SAWTOOTHDOWN */
    direction: Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;      /**< Duration of the effect. */
    delay: u16;       /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;      /**< Button that triggers the effect. */
    interval: u16;    /**< How soon it can be triggered again after button. */

    /* Periodic */
    period: u16;      /**< Period of the wave. */
    magnitude: i16;   /**< Peak value; if negative, equivalent to 180 degrees extra phase shift. */
    offset: i16;      /**< Mean value of the wave. */
    phase: u16;       /**< Positive phase shift given by hundredth of a degree. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16; /**< Duration of the fade. */
    fade_level: u16;  /**< Level at the end of the fade. */
}

Haptic_Direction :: struct
{
    haptic_type: u8;         /**< The type of encoding. */
    dir: [3]i32;      /**< The encoded direction. */
}

Haptic_Condition :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::HAPTIC_SPRING, ::HAPTIC_DAMPER,
                                 ::HAPTIC_INERTIA or ::HAPTIC_FRICTION */
    direction: Haptic_Direction;  /**< Direction of the effect - Not used ATM. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Condition */
    right_sat: [3]u16;    /**< Level when joystick is to the positive side; max 0xFFFF. */
    left_sat: [3]u16;     /**< Level when joystick is to the negative side; max 0xFFFF. */
    right_coeff: [3]i16;  /**< How fast to increase the force towards the positive side. */
    left_coeff: [3]i16;   /**< How fast to increase the force towards the negative side. */
    deadband: [3]u16;     /**< Size of the dead zone; max 0xFFFF: whole axis-range when 0-centered. */
    center: [3]i16;       /**< Position of the dead zone. */
}

Haptic_Ramp :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::HAPTIC_RAMP */
    direction: Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Ramp */
    start: i16;           /**< Beginning strength level. */
    end: i16;             /**< Ending strength level. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
}

Haptic_Left_Right :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::HAPTIC_LEFTRIGHT */

    /* Replay */
    length: u32;          /**< Duration of the effect. */

    /* Rumble */
    large_magnitude: u16; /**< Control of the large controller motor. */
    small_magnitude: u16; /**< Control of the small controller motor. */
}

Haptic_Custom :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::HAPTIC_CUSTOM */
    direction: Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Custom */
    channels: u8;         /**< Axes to use, minimum of one. */
    period: u16;          /**< Sample periods. */
    samples: u16;         /**< Amount of samples. */
    data: ^u16;           /**< Should contain channels*samples items. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
}

Event :: struct #raw_union
{
    event_type: u32;                    /**< Event type, shared with all events */
    common: Common_Event;         /**< Common event data */
    window: Window_Event;         /**< Window event data */
    key: Keyboard_Event;          /**< Keyboard event data */
    edit: Text_Editing_Event;      /**< Text editing event data */
    text: Text_Input_Event;        /**< Text input event data */
    motion: Mouse_Motion_Event;    /**< Mouse motion event data */
    button: Mouse_Button_Event;    /**< Mouse button event data */
    wheel: Mouse_Wheel_Event;      /**< Mouse wheel event data */
    jaxis: Joy_Axis_Event;         /**< Joystick axis event data */
    jball: Joy_Ball_Event;         /**< Joystick ball event data */
    jhat: Joy_Hat_Event;           /**< Joystick hat event data */
    jbutton: Joy_Button_Event;     /**< Joystick button event data */
    jdevice: Joy_Device_Event;     /**< Joystick device change event data */
    caxis: Controller_Axis_Event;      /**< Game Controller axis event data */
    cbutton: Controller_Button_Event;  /**< Game Controller button event data */
    cdevice: Controller_Device_Event;  /**< Game Controller device event data */
    adevice: Audio_Device_Event;   /**< Audio device event data */
    quit: Quit_Event;             /**< Quit request event data */
    user: User_Event;             /**< Custom event data */
    syswm: Sys_Wm_Event;           /**< System dependent window event data */
    tfinger: Touch_Finger_Event;   /**< Touch finger event data */
    mgesture: Multi_Gesture_Event; /**< Gesture event data */
    dgesture: Dollar_Gesture_Event; /**< Gesture event data */
    drop: Drop_Event;             /**< Drag and drop event data */

    /* This is necessary for ABI compatibility between Visual C++ and GCC
       Visual C++ will respect the push pack pragma and use 52 bytes for
       this structure, and GCC will use the alignment of the largest datatype
       within the union, which is 8 bytes.

       So... we'll add padding to force the size to be 56 bytes for both.
    */
    padding: [56]u8;
}


/**
 *  \brief Fields shared by every event
 */
Common_Event :: struct #ordered
{
    event_type: u32;
    timestamp: u32;
}

/**
 *  \brief Window state change event data (event.window.*)
 */
Window_Event :: struct #ordered
{
    event_type: u32;        /**< ::WINDOW_EVENT */
    timestamp: u32;
    windowID: u32;    /**< The associated window */
    event: u8;        /**< ::Window_EventID */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    data1: i32;       /**< event dependent data */
    data2: i32;       /**< event dependent data */
}

/**
 *  \brief Keyboard button event structure (event.key.*)
 */
Keyboard_Event :: struct #ordered
{
    event_type: u32;        /**< ::KEY_DOWN or ::KEY_UP */
    timestamp: u32;
    windowID: u32;    /**< The window with keyboard focus, if any */
    state: u8;        /**< ::PRESSED or ::RELEASED */
    repeat: u8;       /**< Non-zero if this is a key repeat */
    padding2: u8;
    padding3: u8;
    keysym: Keysym;  /**< The key that was pressed or released */
}

TEXT_EDITING_EVENT_TEXT_SIZE :: 32;
/**
 *  \brief Keyboard text editing event structure (event.edit.*)
 */
Text_Editing_Event :: struct #ordered
{
    event_type: u32;                                /**< ::TEXT_EDITING */
    timestamp: u32;
    windowID: u32;                            /**< The window with keyboard focus, if any */
    text: [TEXT_EDITING_EVENT_TEXT_SIZE]u8;  /**< The editing text */
    start: i32;                               /**< The start cursor of selected editing text */
    length: i32;                              /**< The length of selected editing text */
}


TEXT_INPUT_EVENT_TEXT_SIZE :: 32;
/**
 *  \brief Keyboard text input event structure (event.text.*)
 */
Text_Input_Event :: struct #ordered
{
    event_type: u32;                              /**< ::TEXT_INPUT */
    timestamp: u32;
    windowID: u32;                          /**< The window with keyboard focus, if any */
    text: [TEXT_INPUT_EVENT_TEXT_SIZE]u8;  /**< The input text */
}

/**
 *  \brief Mouse motion event structure (event.motion.*)
 */
Mouse_Motion_Event :: struct #ordered
{
    event_type: u32;        /**< ::MOUSE_MOTION */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or TOUCH_MOUSEID */
    state: u32;       /**< The current button state */
    x: i32;           /**< X coordinate, relative to window */
    y: i32;           /**< Y coordinate, relative to window */
    xrel: i32;        /**< The relative motion in the X direction */
    yrel: i32;        /**< The relative motion in the Y direction */
}

/**
 *  \brief Mouse button event structure (event.button.*)
 */
Mouse_Button_Event :: struct #ordered
{
    event_type: u32;        /**< ::MOUSE_BUTTON_DOWN or ::MOUSE_BUTTON_UP */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or TOUCH_MOUSEID */
    button: u8;       /**< The mouse button index */
    state: u8;        /**< ::PRESSED or ::RELEASED */
    clicks: u8;       /**< 1 for single-click, 2 for double-click, etc. */
    padding1: u8;
    x: i32;           /**< X coordinate, relative to window */
    y: i32;           /**< Y coordinate, relative to window */
}

/**
 *  \brief Mouse wheel event structure (event.wheel.*)
 */
Mouse_Wheel_Event :: struct #ordered
{
    event_type: u32;        /**< ::MOUSE_WHEEL */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or TOUCH_MOUSEID */
    x: i32;           /**< The amount scrolled horizontally, positive to the right and negative to the left */
    y: i32;           /**< The amount scrolled vertically, positive away from the user and negative toward the user */
    direction: u32;   /**< Set to one of the MOUSE_WHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back */
}

/**
 *  \brief Joystick axis motion event structure (event.jaxis.*)
 */
Joy_Axis_Event :: struct #ordered
{
    event_type: u32;        /**< ::JOY_AXIS_MOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    axis: u8;         /**< The joystick axis index */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    value: i16;       /**< The axis value (range: -32768 to 32767) */
    padding4: u16;
}

/**
 *  \brief Joystick trackball motion event structure (event.jball.*)
 */
Joy_Ball_Event :: struct #ordered
{
    event_type: u32;        /**< ::JOY_BALL_MOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    ball: u8;         /**< The joystick trackball index */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    xrel: i16;        /**< The relative motion in the X direction */
    yrel: i16;        /**< The relative motion in the Y direction */
}

/**
 *  \brief Joystick hat position change event structure (event.jhat.*)
 */
Joy_Hat_Event :: struct #ordered
{
    event_type: u32;        /**< ::JOY_HAT_MOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    hat: u8;          /**< The joystick hat index */
    value: u8;        /**< The hat position value.
                         *   \sa ::HAT_LEFT_UP ::HAT_UP ::HAT_RIGHT_UP
                         *   \sa ::HAT_LEFT ::HAT_CENTERED ::HAT_RIGHT
                         *   \sa ::HAT_LEFT_DOWN ::HAT_DOWN ::HAT_RIGHT_DOWN
                         *
                         *   Note that zero means the POV is centered.
                         */
    padding1: u8;
    padding2: u8;
}

/**
 *  \brief Joystick button event structure (event.jbutton.*)
 */
Joy_Button_Event :: struct #ordered
{
    event_type: u32;        /**< ::JOY_BUTTON_DOWN or ::JOY_BUTTON_UP */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    button: u8;       /**< The joystick button index */
    state: u8;        /**< ::PRESSED or ::RELEASED */
    padding1: u8;
    padding2: u8;
}

/**
 *  \brief Joystick device event structure (event.jdevice.*)
 */
Joy_Device_Event :: struct #ordered
{
    event_type: u32;        /**< ::JOY_DEVICE_ADDED or ::JOY_DEVICE_REMOVED */
    timestamp: u32;
    which: i32;       /**< The joystick device index for the ADDED event, instance id for the REMOVED event */
}


/**
 *  \brief Game controller axis motion event structure (event.caxis.*)
 */
Controller_Axis_Event :: struct #ordered
{
    event_type: u32;        /**< ::CONTROLLER_AXIS_MOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    axis: u8;         /**< The controller axis (GameControllerAxis) */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    value: i16;       /**< The axis value (range: -32768 to 32767) */
    padding4: u16;
}


/**
 *  \brief Game controller button event structure (event.cbutton.*)
 */
Controller_Button_Event :: struct #ordered
{
    event_type: u32;        /**< ::CONTROLLER_BUTTON_DOWN or ::CONTROLLER_BUTTON_UP */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    button: u8;       /**< The controller button (GameControllerButton) */
    state: u8;        /**< ::PRESSED or ::RELEASED */
    padding1: u8;
    padding2: u8;
}


/**
 *  \brief Controller device event structure (event.cdevice.*)
 */
Controller_Device_Event :: struct #ordered
{
    event_type: u32;        /**< ::CONTROLLER_DEVICE_ADDED, ::CONTROLLER_DEVICE_REMOVED, or ::CONTROLLER_DEVICE_REMAPPED */
    timestamp: u32;
    which: i32;       /**< The joystick device index for the ADDED event, instance id for the REMOVED or REMAPPED event */
}

/**
 *  \brief Audio device event structure (event.adevice.*)
 */
Audio_Device_Event :: struct #ordered
{
    event_type: u32;        /**< ::AUDIO_DEVICE_ADDED, or ::AUDIO_DEVICE_REMOVED */
    timestamp: u32;
    which: u32;       /**< The audio device index for the ADDED event (valid until next GetNumAudioDevices() call), AudioDeviceID for the REMOVED event */
    iscapture: u8;    /**< zero if an output device, non-zero if a capture device. */
    padding1: u8;
    padding2: u8;
    padding3: u8;
}


/**
 *  \brief Touch finger event structure (event.tfinger.*)
 */
Touch_Finger_Event :: struct #ordered
{
    event_type: u32;        /**< ::FINGER_MOTION or ::FINGER_DOWN or ::FINGER_UP */
    timestamp: u32;
    touchId: i64; /**< The touch device id */
    fingerId: i64;
    x: f32;            /**< Normalized in the range 0...1 */
    y: f32;            /**< Normalized in the range 0...1 */
    dx: f32;           /**< Normalized in the range -1...1 */
    dy: f32;           /**< Normalized in the range -1...1 */
    pressure: f32;     /**< Normalized in the range 0...1 */
}


/**
 *  \brief Multiple Finger Gesture Event (event.mgesture.*)
 */
Multi_Gesture_Event :: struct #ordered
{
    event_type: u32;        /**< ::MULTIGESTURE */
    timestamp: u32;
    touchId: i64; /**< The touch device id */
    dTheta: f32;
    dDist: f32;
    x: f32;
    y: f32;
    numFingers: u16;
    padding: u16;
}


/**
 * \brief Dollar Gesture Event (event.dgesture.*)
 */
Dollar_Gesture_Event :: struct #ordered
{
    event_type: u32;        /**< ::DOLLAR_GESTURE or ::DOLLAR_RECORD */
    timestamp: u32;
    touchId: i64; /**< The touch device id */
    gestureId: i64;
    numFingers: u32;
    error: f32;
    x: f32;            /**< Normalized center of gesture */
    y: f32;            /**< Normalized center of gesture */
}


/**
 *  \brief An event used to request a file open by the system (event.drop.*)
 *         This event is enabled by default, you can disable it with EventState().
 *  \note If this event is enabled, you must free the filename in the event.
 */
Drop_Event :: struct #ordered
{
    event_type: u32;        /**< ::DROP_BEGIN or ::DROP_FILE or ::DROP_TEXT or ::DROP_COMPLETE */
    timestamp: u32;
    file: ^u8;         /**< The file name, which should be freed with free(), is NULL on begin/complete */
    windowID: u32;    /**< The window that was dropped on, if any */
}


/**
 *  \brief The "quit requested" event
 */
Quit_Event :: struct #ordered
{
    event_type: u32;        /**< ::QUIT */
    timestamp: u32;
}

/**
 *  \brief OS Specific event
 */
Os_Event :: struct #ordered
{
    event_type: u32;        /**< ::QUIT */
    timestamp: u32;
}

/**
 *  \brief A user-defined event type (event.user.*)
 */
User_Event :: struct #ordered
{
    event_type: u32;        /**< ::USER_EVENT through ::LAST_EVENT-1 */
    timestamp: u32;
    windowID: u32;    /**< The associated window if any */
    code: i32;        /**< User defined event code */
    data1: ^rawptr;        /**< User defined data pointer */
    data2: ^rawptr;        /**< User defined data pointer */
}

/**
 *  \brief A video driver dependent system event (event.syswm.*)
 *         This event is disabled by default, you can enable it with EventState()
 *
 *  \note If you want to use this event, you should include syswm.h.
 */
Sys_Wm_Event :: struct #ordered
{
    event_type: u32;        /**< ::SYS_Wm_EVENT */
    timestamp: u32;
    msg: ^Sys_Wm_Msg;  /**< driver dependent data, defined in syswm.h */
}