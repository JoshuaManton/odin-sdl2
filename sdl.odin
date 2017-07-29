import (
	. "strings.odin";
)

foreign_system_library (
	lib "SDL2.lib";
)

foreign lib {
	// This one is missing from my source of SDL2 ???
	// dynapi_entry 								:: proc() ->																																										#link_name "SDL_DYNAPI_entry" ---;

	// The source for this one says you should never call it directly, but rather use the macros provided. Need to port those over still
	//report_assertion 								:: proc() ->																																										#link_name "SDL_ReportAssertion" ---;

	add_event_watch 								:: proc(filter: EventFilter, userdata: rawptr)																																		#link_name "SDL_AddEventWatch" ---;
	add_hint_callback_c  							:: proc(name: ^u8, callback: HintCallback, userdata: rawptr)  																														#link_name "SDL_AddHintCallback" ---;
	add_timer 										:: proc(interval: u32, callback: TimerCallback, param: rawptr) -> TimerId																											#link_name "SDL_AddTimer" ---;
	alloc_format 									:: proc(pixel_format: u32) -> ^PixelFormat																																			#link_name "SDL_AllocFormat" ---;
	alloc_palette 									:: proc(ncolors: i32) -> ^Palette																																					#link_name "SDL_AllocPalette" ---;
	alloc_rw 										:: proc() -> ^RwOps 																																								#link_name "SDL_AllocRW" ---;
	atomic_add 										:: proc(a: ^Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicAdd" ---;
	atomic_cas 										:: proc(a: ^Atomic, oldval: i32, newval: i32) -> Bool																																#link_name "SDL_AtomicCAS" ---;
	atomic_cas_ptr 									:: proc(a: ^rawptr, oldval: rawptr, newval: rawptr) -> Bool																															#link_name "SDL_AtomicCASPtr" ---;
	atomic_get 										:: proc(a: ^Atomic) -> i32																																							#link_name "SDL_AtomicGet" ---;
	atomic_get_ptr 									:: proc(a: ^rawptr) -> rawptr																																						#link_name "SDL_AtomicGetPtr" ---;
	atomic_lock 									:: proc(lock: ^SpinLock)																																							#link_name "SDL_AtomicLock" ---;
	atomic_set 										:: proc(a: ^Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicSet" ---;
	atomic_set_ptr 									:: proc(a: ^rawptr, v: rawptr) -> rawptr																																			#link_name "SDL_AtomicSetPtr" ---;
	atomic_try_lock 								:: proc(lock: ^SpinLock) -> Bool																																					#link_name "SDL_AtomicTryLock" ---;
	atomic_unlock 									:: proc(lock: ^SpinLock)																																							#link_name "SDL_AtomicUnlock" ---;
	audio_init_c 									:: proc(driver_name: ^u8) -> i32																																					#link_name "SDL_AudioInit" ---;
	audio_quit 										:: proc()																																											#link_name "SDL_AudioQuit" ---;
	build_audio_cvt 								:: proc(cvt: ^AudioCvt, src_format: AudioFormat, src_channels: u8, src_rate: i32, dst_format: AudioFormat, dst_channels: u8, dst_rate: i32) -> i32									#link_name "SDL_BuildAudioCVT" ---;
	calculate_gamma_ramp 							:: proc(gamma: f32, ramp: ^u16)																																						#link_name "SDL_CalculateGammaRamp" ---;
	capture_mouse 									:: proc(enabled: Bool) -> i32																																						#link_name "SDL_CaptureMouse" ---;
	clear_error 									:: proc()																																											#link_name "SDL_ClearError" ---;
	clear_hints 									:: proc()																																											#link_name "SDL_ClearHints" ---;
	clear_queued_audio 								:: proc(dev: AudioDevice)																																							#link_name "SDL_ClearQueuedAudio" ---;
	close_audio 									:: proc()																																											#link_name "SDL_CloseAudio" ---;
	close_audio_device 								:: proc(dev: AudioDevice)																																							#link_name "SDL_CloseAudioDevice" ---;
	cond_broadcast 									:: proc(cond: ^Cond) -> i32																																							#link_name "SDL_CondBroadcast" ---;
	cond_signal 									:: proc(cond: ^Cond) -> i32																																							#link_name "SDL_CondSignal" ---;
	cond_wait 										:: proc(cond: ^Cond, mutex: ^Mutex) -> i32																																			#link_name "SDL_CondWait" ---;
	cond_wait_timeout 								:: proc(cond: ^Cond, mutex: ^Mutex, ms: u32) -> i32																																	#link_name "SDL_CondWaitTimeout" ---;
	convert_audio 									:: proc(cvt: ^AudioCvt) -> i32																																						#link_name "SDL_ConvertAudio" ---;
	convert_pixels 									:: proc(width: i32, height: i32, src_format: u32, src: rawptr, src_pitch: i32, dst_format: u32, dst: rawptr, dst_pitch: i32) -> i32													#link_name "SDL_ConvertPixels" ---;
	convert_surface 								:: proc(src: ^Surface, fmt: ^PixelFormat, flags: u32) -> ^Surface																													#link_name "SDL_ConvertSurface" ---;
	convert_surface_format 							:: proc(src: ^Surface, pixel_format: u32, flags: u32) -> ^Surface																													#link_name "SDL_ConvertSurfaceFormat" ---;
	create_color_cursor 							:: proc(surface: ^Surface, hot_x, hot_y: i32) -> ^Cursor																															#link_name "SDL_CreateColorCursor" ---;
	create_cond 									:: proc() -> ^Cond																																									#link_name "SDL_CreateCond" ---;
	create_cursor_c 								:: proc(data: ^u8, mask: ^u8, w, h: i32, hot_x, hot_y: i32) -> ^Cursor																												#link_name "SDL_CreateCursor" ---;
	create_mutex 									:: proc() -> ^Mutex																																									#link_name "SDL_CreateMutex" ---;
	create_rgb_surface 								:: proc(flags: u32, width, height, depth: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^Surface																							#link_name "SDL_CreateRGBSurface" ---;
	create_rgb_surface_from 						:: proc(pixels: rawptr, width, height, depth, pitch: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^Surface																				#link_name "SDL_CreateRGBSurfaceFrom" ---;
	create_rgb_surface_with_format 					:: proc(flags: u32, width, height, depth: i32, format: u32) -> ^Surface																												#link_name "SDL_CreateRGBSurfaceWithFormat" ---;
	create_rgb_surface_with_format_from 			:: proc(pixels: rawptr, width, height, depth, pitch: i32, format: u32) -> ^Surface																									#link_name "SDL_CreateRGBSurfaceWithFormatFrom" ---;
	create_renderer 								:: proc(window: ^Window, index: i32, flags: u32) -> ^Renderer																														#link_name "SDL_CreateRenderer" ---;
	create_semaphore 								:: proc(initial_value: u32) -> ^Sem																																					#link_name "SDL_CreateSemaphore" ---;
	create_shaped_window_c 							:: proc(title: ^u8, x, y, w, h: u32, flags: u32) -> ^Window																															#link_name "SDL_CreateShapedWindow" ---;
	create_software_renderer 						:: proc(surface: ^Surface) -> ^Renderer																																				#link_name "SDL_CreateSoftwareRenderer" ---;
	create_system_cursor 							:: proc(id: SystemCursor) -> ^Cursor																																				#link_name "SDL_CreateSystemCursor" ---;
	create_texture 									:: proc(renderer: ^Renderer, format: u32, access: i32, w, h: i32) -> ^Texture																										#link_name "SDL_CreateTexture" ---;
	create_texture_from_surface 					:: proc(renderer: ^Renderer, surface: ^Surface) -> ^Texture																															#link_name "SDL_CreateTextureFromSurface" ---;
	create_thread_c 								:: proc(fn: ThreadFunction, name: ^u8, data: rawptr) -> ^Thread 																													#link_name "SDL_CreateThread" ---;
	create_window_c 								:: proc(title: ^u8, x, y, w, h: i32, flags: u32) -> ^Window																															#link_name "SDL_CreateWindow" ---;
	create_window_and_renderer 						:: proc(width, height: i32, window_flags: u32, window: ^^Window, renderer: ^^Renderer) -> i32																						#link_name "SDL_CreateWindowAndRenderer" ---;
	create_window_from 								:: proc(data: rawptr) -> ^Window																																					#link_name "SDL_CreateWindowFrom" ---;
	dxgi_get_output_info 							:: proc(display_index: i32, adapter_index: ^i32, output_index: ^i32) -> Bool																										#link_name "SDL_DXGIGetOutputInfo" ---;
	del_event_watch 								:: proc(filter: EventFilter, userdata: rawptr)																																		#link_name "SDL_DelEventWatch" ---;
	del_hint_callback_c 							:: proc(name: ^u8, callback: HintCallback, userdata: rawptr)																														#link_name "SDL_DelHintCallback" ---;
	delay 											:: proc(ms: u32)																																									#link_name "SDL_Delay" ---;
	dequeue_audio 									:: proc(dev: AudioDeviceId, data: rawptr, len: u32) -> u32																															#link_name "SDL_DequeueAudio" ---;
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
	error 											:: proc(code: ErrorCode) -> i32																																						#link_name "SDL_Error" ---;
	event_state 									:: proc(event_type: u32, state: i32) -> u8																																			#link_name "SDL_EventState" ---;
	fill_rect 										:: proc(dst: ^Surface, rect: ^Rect, color: u32) -> i32																																#link_name "SDL_FillRect" ---;
	fill_rects 										:: proc(dst: ^Surface, rect: ^Rect, count: i32, color: u32) -> i32																													#link_name "SDL_FillRects" ---;
	filter_events 									:: proc(filter: EventFilter, userdata: rawptr)																																		#link_name "SDL_FilterEvents" ---;
	flush_event 									:: proc(event_type: u32)																																							#link_name "SDL_FlushEvent" ---;
	flush_events 									:: proc(min_type: u32, max_type: u32)																																				#link_name "SDL_FlushEvents" ---;
	free_cursor 									:: proc(cursor: ^Cursor)																																							#link_name "SDL_FreeCursor" ---;
	free_format 									:: proc(format: ^PixelFormat)																																						#link_name "SDL_FreeFormat" ---;
	free_palette 									:: proc(palette: ^Palette)																																							#link_name "SDL_FreePalette" ---;
	free_rw 										:: proc(area: ^RwOps)																																								#link_name "SDL_FreeRW" ---;
	free_surface 									:: proc(surface: ^Surface)																																							#link_name "SDL_FreeSurface" ---;
	free_wav 										:: proc(audio_buf: ^u8)																																								#link_name "SDL_FreeWAV" ---;
	gl_bind_texture 								:: proc(texture: ^Texture, texw, texh: ^f32) -> i32																																	#link_name "SDL_GL_BindTexture" ---;
	gl_create_context 								:: proc(window: ^Window) -> GLContext																																				#link_name "SDL_GL_CreateContext" ---;
	gl_delete_context 								:: proc(gl_context: GLContext)																																						#link_name "SDL_GL_DeleteContext" ---;
	gl_extension_supported_c 						:: proc(extension: ^u8) -> Bool																																						#link_name "SDL_GL_ExtensionSupported" ---;
	gl_get_attribute 								:: proc(attr: GLAttr, value: ^i32) -> i32																																			#link_name "SDL_GL_GetAttribute" ---;
	gl_get_current_context 							:: proc() -> GLContext																																								#link_name "SDL_GL_GetCurrentContext" ---;
	gl_get_current_window 							:: proc() -> ^Window																																								#link_name "SDL_GL_GetCurrentWindow" ---;
	gl_get_drawable_size 							:: proc(window: ^Window, w, h: ^i32)																																				#link_name "SDL_GL_GetDrawableSize" ---;
	gl_get_proc_address_c 							:: proc(name: ^u8) -> rawptr																																						#link_name "SDL_GL_GetProcAddress" ---;
	gl_get_swap_interval 							:: proc() -> i32																																									#link_name "SDL_GL_GetSwapInterval" ---;
	gl_load_library_c 								:: proc(path: ^u8) -> i32																																							#link_name "SDL_GL_LoadLibrary" ---;
	gl_make_current 								:: proc(window: ^Window, gl_context: GLContext) -> i32																																#link_name "SDL_GL_MakeCurrent" ---;
	gl_reset_attributes 							:: proc()																																											#link_name "SDL_GL_ResetAttributes" ---;
	gl_set_attribute 								:: proc(attr: GLAttr, value: i32) -> i32																																			#link_name "SDL_GL_SetAttribute" ---;
	gl_set_swap_interval 							:: proc(interval: i32) -> i32																																						#link_name "SDL_GL_SetSwapInterval" ---;
	gl_swap_window 									:: proc(window: ^Window)																																							#link_name "SDL_GL_SwapWindow" ---;
	gl_unbind_texture 								:: proc(texture: ^Texture) -> i32																																					#link_name "SDL_GL_UnbindTexture" ---;
	gl_unload_library 								:: proc()																																											#link_name "SDL_GL_UnloadLibrary" ---;
	game_controller_add_mapping_c 					:: proc(mapping_string: ^u8) -> i32																																					#link_name "SDL_GameControllerAddMapping" ---;
	game_controller_add_mappings_from_rw 			:: proc(area: ^RwOps, freerw: i32) -> i32																																			#link_name "SDL_GameControllerAddMappingsFromRW" ---;
	game_controller_close 							:: proc(game_controller: ^GameController)																																			#link_name "SDL_GameControllerClose" ---;
	game_controller_event_state 					:: proc(state: i32) -> i32																																							#link_name "SDL_GameControllerEventState" ---;
	game_controller_from_instance_id 				:: proc(joy_id: JoystickId) ->	^GameController																																		#link_name "SDL_GameControllerFromInstanceID" ---;
	game_controller_get_attached 					:: proc(game_controller: ^GameController) -> Bool																																	#link_name "SDL_GameControllerGetAttached" ---;
	game_controller_get_axis 						:: proc(game_controller: ^GameController, axis: GameControllerAxis) -> i16																											#link_name "SDL_GameControllerGetAxis" ---;
	game_controller_get_axis_from_string_c 			:: proc(pch_string: ^u8) -> ^u8																																						#link_name "SDL_GameControllerGetAxisFromString" ---;
	game_controller_get_bind_for_axis 				:: proc(game_controller: ^GameController, axis: GameControllerAxis) -> GameControllerButtonBind																						#link_name "SDL_GameControllerGetBindForAxis" ---;
	game_controller_get_bind_for_button 			:: proc(game_controller: ^GameController, button: GameControllerButton) -> GameControllerButtonBind																					#link_name "SDL_GameControllerGetBindForButton" ---;
	game_controller_get_button 						:: proc(game_controller: ^GameController, button: GameControllerButton) -> u8																										#link_name "SDL_GameControllerGetButton" ---;
	game_controller_get_button_from_string_c 		:: proc(pch_string: ^u8) -> GameControllerButton																																	#link_name "SDL_GameControllerGetButtonFromString" ---;
	game_controller_get_joystick 					:: proc(game_controller: ^GameController) -> ^Joystick																																#link_name "SDL_GameControllerGetJoystick" ---;
	game_controller_get_string_for_axis_c 			:: proc(axis: GameControllerAxis) -> ^u8																																			#link_name "SDL_GameControllerGetStringForAxis" ---;
	game_controller_get_string_for_button_c 		:: proc(button: GameControllerButton) -> ^u8																																		#link_name "SDL_GameControllerGetStringForButton" ---;
	game_controller_mapping_c 						:: proc(game_controller: ^GameController) -> ^u8																																	#link_name "SDL_GameControllerMapping" ---;
	game_controller_mapping_for_guid_c 				:: proc(guid: JoystickGuid) -> ^u8																																					#link_name "SDL_GameControllerMappingForGUID" ---;
	game_controller_name_c 							:: proc(game_controller: ^GameController) -> ^u8																																	#link_name "SDL_GameControllerName" ---;
	game_controller_name_for_index_c 				:: proc(joystick_index: i32) -> ^u8																																					#link_name "SDL_GameControllerNameForIndex" ---;
	game_controller_open 							:: proc(joystick_index: i32) -> ^GameController																																		#link_name "SDL_GameControllerOpen" ---;
	game_controller_update 							:: proc()																																											#link_name "SDL_GameControllerUpdate" ---;
	get_assertion_handler 							:: proc(userdata: ^rawptr) -> AssertionHandler																																		#link_name "SDL_GetAssertionHandler" ---;
	get_assertion_report 							:: proc() -> ^AssertData																																							#link_name "SDL_GetAssertionReport" ---;
	get_audio_device_name_c 						:: proc(index: i32, iscapture: i32) -> ^u8																																			#link_name "SDL_GetAudioDeviceName" ---;
	get_audio_device_status 						:: proc(dev: AudioDeviceId) -> AudioStatus																																			#link_name "SDL_GetAudioDeviceStatus" ---;
	get_audio_driver_c 								:: proc(index: i32) -> ^u8																																							#link_name "SDL_GetAudioDriver" ---;
	get_audio_status 								:: proc() -> AudioStatus																																							#link_name "SDL_GetAudioStatus" ---;
	get_base_path_c 								:: proc() -> ^u8																																									#link_name "SDL_GetBasePath" ---;
	get_cpu_cache_line_size 						:: proc() -> i32																																									#link_name "SDL_GetCPUCacheLineSize" ---;
	get_cpu_count 									:: proc() -> i32																																									#link_name "SDL_GetCPUCount" ---;
	get_clip_rect 									:: proc(surface: ^Surface, rect: ^Rect)																																				#link_name "SDL_GetClipRect" ---;
	get_clipboard_text_c 							:: proc() -> ^u8																																									#link_name "SDL_GetClipboardText" ---;
	get_closest_display_mode 						:: proc(display_index: i32, mode: ^DisplayMode, closest: ^DisplayMode) -> ^DisplayMode																								#link_name "SDL_GetClosestDisplayMode" ---;
	get_color_key 									:: proc(surface: ^Surface, key: ^u32) -> i32																																		#link_name "SDL_GetColorKey" ---;
	get_current_audio_driver_c 						:: proc() -> ^u8																																									#link_name "SDL_GetCurrentAudioDriver" ---;
	get_current_display_mode 						:: proc(display_index: i32, mode: ^DisplayMode) -> i32																																#link_name "SDL_GetCurrentDisplayMode" ---;
	get_current_video_driver_c 						:: proc() -> ^u8																																									#link_name "SDL_GetCurrentVideoDriver" ---;
	get_cursor 										:: proc() -> ^Cursor																																								#link_name "SDL_GetCursor" ---;
	get_default_assertion_handler 					:: proc() -> AssertionHandler																																						#link_name "SDL_GetDefaultAssertionHandler" ---;
	get_default_cursor 								:: proc() -> ^Cursor																																								#link_name "SDL_GetDefaultCursor" ---;
	get_desktop_display_mode 						:: proc(display_index: i32, mode: ^DisplayMode) -> i32																																#link_name "SDL_GetDesktopDisplayMode" ---;
	get_display_bounds 								:: proc(display_index: i32, rect: ^Rect) -> i32																																		#link_name "SDL_GetDisplayBounds" ---;
	get_display_dpi 								:: proc(display_index: i32, ddpi, hdpi, vdpi: ^f32) -> i32																															#link_name "SDL_GetDisplayDPI" ---;
	get_display_mode 								:: proc(display_index: i32, mode_index: i32, mode: ^DisplayMode) -> i32																												#link_name "SDL_GetDisplayMode" ---;
	get_display_name_c 								:: proc(display_index: i32) -> ^u8																																					#link_name "SDL_GetDisplayName" ---;
	get_display_usable_bounds 						:: proc(display_index: i32, rect: ^Rect) -> i32																																		#link_name "SDL_GetDisplayUsableBounds" ---;
	get_error_c 									:: proc() -> ^u8																																									#link_name "SDL_GetError" ---;
	get_event_filter 								:: proc(filter: ^EventFilter, userdata: ^rawptr) -> Bool																															#link_name "SDL_GetEventFilter" ---;
	get_global_mouse_state 							:: proc(x, y: ^i32) -> u32																																							#link_name "SDL_GetGlobalMouseState" ---;
	get_grabbed_window 								:: proc() -> ^Window																																								#link_name "SDL_GetGrabbedWindow" ---;
	get_hint_c 										:: proc(name: ^u8) -> ^u8																																							#link_name "SDL_GetHint" ---;
	get_hint_boolean 								:: proc(name: ^u8, default_value: Bool) -> Bool																																		#link_name "SDL_GetHintBoolean" ---;
	get_key_from_name_c 							:: proc(name: ^u8) -> Keycode																																						#link_name "SDL_GetKeyFromName" ---;
	get_key_from_scancode 							:: proc(scancode: Scancode) -> Keycode																																				#link_name "SDL_GetKeyFromScancode" ---;
	get_key_name_c 									:: proc(key: Keycode) -> ^u8																																						#link_name "SDL_GetKeyName" ---;
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
	get_num_touch_fingers 							:: proc(touch_id: TouchId) -> i32																																					#link_name "SDL_GetNumTouchFingers" ---;
	get_num_video_displays 							:: proc() -> i32																																									#link_name "SDL_GetNumVideoDisplays" ---;
	get_num_video_drivers 							:: proc() -> i32																																									#link_name "SDL_GetNumVideoDrivers" ---;
	get_performance_counter 						:: proc() -> u64																																									#link_name "SDL_GetPerformanceCounter" ---;
	get_performance_frequency 						:: proc() -> u64																																									#link_name "SDL_GetPerformanceFrequency" ---;
	get_pixel_format_name_c 						:: proc(format: u32) -> ^u8																																							#link_name "SDL_GetPixelFormatName" ---;
	get_platform_c 									:: proc() -> ^u8																																									#link_name "SDL_GetPlatform" ---;
	get_power_info 									:: proc(secs, pct: ^i32) -> PowerState																																				#link_name "SDL_GetPowerInfo" ---;
	get_pref_path_c 								:: proc(org, app: ^u8) -> ^u8																																						#link_name "SDL_GetPrefPath" ---;
	get_queued_audio_size 							:: proc(dev: AudioDeviceId) -> u32																																					#link_name "SDL_GetQueuedAudioSize" ---;
	get_rgb 										:: proc(pixel: u32, format: ^PixelFormat, r, g, b: ^u8)																																#link_name "SDL_GetRGB" ---;
	get_rgba 										:: proc(pixel: u32, format: ^PixelFormat, r, g, b, a: ^u8)																															#link_name "SDL_GetRGBA" ---;
	get_relative_mouse_mode 						:: proc() -> Bool																																									#link_name "SDL_GetRelativeMouseMode" ---;
	get_relative_mouse_state 						:: proc(x, y: ^i32) -> u32																																							#link_name "SDL_GetRelativeMouseState" ---;
	get_render_draw_blend_mode 						:: proc(renderer: ^Renderer, blend_mode: ^BlendMode) -> i32																															#link_name "SDL_GetRenderDrawBlendMode" ---;
	get_render_draw_color 							:: proc(renderer: ^Renderer, r, g, b, a: ^u8) -> i32																																#link_name "SDL_GetRenderDrawColor" ---;
	get_render_driver_info 							:: proc(index: i32, info: ^RendererInfo) -> i32																																		#link_name "SDL_GetRenderDriverInfo" ---;
	get_render_target 								:: proc(renderer: ^Renderer) -> ^Texture																																			#link_name "SDL_GetRenderTarget" ---;
	get_renderer 									:: proc(window: ^Window) -> ^Renderer																																				#link_name "SDL_GetRenderer" ---;
	get_renderer_info 								:: proc(renderer: ^Renderer, info: ^RendererInfo) -> i32																															#link_name "SDL_GetRendererInfo" ---;
	get_renderer_output_size 						:: proc(renderer: ^Renderer, w, h: ^i32) -> i32																																		#link_name "SDL_GetRendererOutputSize" ---;
	get_revision_c 									:: proc() -> ^u8																																									#link_name "SDL_GetRevision" ---;
	get_revision_number 							:: proc() -> i32																																									#link_name "SDL_GetRevisionNumber" ---;
	get_scancode_from_key 							:: proc(key: Keycode) -> Scancode																																					#link_name "SDL_GetScancodeFromKey" ---;
	get_scancode_from_name_c 						:: proc(name: ^u8) -> Scancode																																						#link_name "SDL_GetScancodeFromName" ---;
	get_scancode_name_c 							:: proc(scancode: Scancode) -> ^u8																																					#link_name "SDL_GetScancodeName" ---;
	get_shaped_window_mode 							:: proc(window: ^Window, shape_mode: ^WindowShapeMode) -> i32																														#link_name "SDL_GetShapedWindowMode" ---;
	get_surface_alpha_mod 							:: proc(surface: ^Surface, alpha: ^u8) -> i32																																		#link_name "SDL_GetSurfaceAlphaMod" ---;
	get_surface_blend_mode 							:: proc(surface: ^Surface, blend_mode: ^BlendMode) -> i32																															#link_name "SDL_GetSurfaceBlendMode" ---;
	get_surface_color_mod 							:: proc(surface: ^Surface, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetSurfaceColorMod" ---;
	get_system_ram 									:: proc() -> i32																																									#link_name "SDL_GetSystemRAM" ---;
	get_texture_alpha_mod 							:: proc(texture: ^Texture, alpha: ^u8) -> i32																																		#link_name "SDL_GetTextureAlphaMod" ---;
	get_texture_blend_mode 							:: proc(texture: ^Texture, blend_mode: ^BlendMode) -> i32																															#link_name "SDL_GetTextureBlendMode" ---;
	get_texture_color_mod 							:: proc(texture: ^Texture, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetTextureColorMod" ---;
	get_thread_id 									:: proc(thread: ^Thread) -> ThreadId																																				#link_name "SDL_GetThreadID" ---;
	get_thread_name_c 								:: proc(thread: ^Thread) -> ^u8																																						#link_name "SDL_GetThreadName" ---;
	get_ticks 										:: proc() -> u32																																									#link_name "SDL_GetTicks" ---;
	get_touch_device 								:: proc(index: i32) -> TouchId																																						#link_name "SDL_GetTouchDevice" ---;
	get_touch_finger 								:: proc(touch_id: TouchId, index: i32) -> ^Finger																																	#link_name "SDL_GetTouchFinger" ---;
	get_version 									:: proc(ver: ^Version)																																								#link_name "SDL_GetVersion" ---;
	get_video_driver_c 								:: proc(index: i32) -> ^u8																																							#link_name "SDL_GetVideoDriver" ---;
	get_window_borders_size 						:: proc(window: ^Window, top, left, bottom, right: ^i32) -> i32																														#link_name "SDL_GetWindowBordersSize" ---;
	get_window_brightness 							:: proc(window: ^Window) -> f32																																						#link_name "SDL_GetWindowBrightness" ---;
	get_window_data_c 								:: proc(window: ^Window, name: ^u8) -> rawptr																																		#link_name "SDL_GetWindowData" ---;
	get_window_display_index 						:: proc(window: ^Window) -> i32																																						#link_name "SDL_GetWindowDisplayIndex" ---;
	get_window_display_mode 						:: proc(window: ^Window, mode: ^DisplayMode) -> i32																																	#link_name "SDL_GetWindowDisplayMode" ---;
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
	get_window_title_c 								:: proc(window: ^Window) -> ^u8																																						#link_name "SDL_GetWindowTitle" ---;
	get_window_wm_info 								:: proc(window: ^Window, info: ^SysWmInfo) -> Bool																																	#link_name "SDL_GetWindowWMInfo" ---;
	haptic_close 									:: proc(haptic: ^Haptic)																																							#link_name "SDL_HapticClose" ---;
	haptic_destroy_effect 							:: proc(haptic: ^Haptic, effect: i32)																																				#link_name "SDL_HapticDestroyEffect" ---;
	haptic_effect_supported 						:: proc(haptic: ^Haptic, effect: ^HapticEffect) -> i32																																#link_name "SDL_HapticEffectSupported" ---;
	haptic_get_effect_status 						:: proc(haptic: ^Haptic, effect: i32) -> i32																																		#link_name "SDL_HapticGetEffectStatus" ---;
	haptic_index 									:: proc(haptic: ^Haptic) -> i32																																						#link_name "SDL_HapticIndex" ---;
	haptic_name_c 									:: proc(device_index: i32) -> ^u8																																					#link_name "SDL_HapticName" ---;
	haptic_new_effect 								:: proc(haptic: ^Haptic, effect: ^HapticEffect) -> i32																																#link_name "SDL_HapticNewEffect" ---;
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
	haptic_update_effect 							:: proc(haptic: ^Haptic, effect: i32, data: ^HapticEffect) -> i32																													#link_name "SDL_HapticUpdateEffect" ---;
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
	joystick_current_power_level 					:: proc(joystick: ^Joystick) -> JoystickPowerLevel																																	#link_name "SDL_JoystickCurrentPowerLevel" ---;
	joystick_event_state 							:: proc(state: i32) -> i32																																							#link_name "SDL_JoystickEventState" ---;
	joystick_from_instance_id 						:: proc(joystick_id: ^JoystickId) -> ^Joystick																																		#link_name "SDL_JoystickFromInstanceID" ---;
	joystick_get_attached 							:: proc(joystick: ^Joystick) -> Bool																																				#link_name "SDL_JoystickGetAttached" ---;
	joystick_get_axis 								:: proc(joystick: ^Joystick, axis: i32) -> i16																																		#link_name "SDL_JoystickGetAxis" ---;
	joystick_get_ball 								:: proc(joystick: ^Joystick, ball: i32, dx, dy: ^i32) -> i32																														#link_name "SDL_JoystickGetBall" ---;
	joystick_get_button 							:: proc(joystick: ^Joystick, button: i32) -> u8																																		#link_name "SDL_JoystickGetButton" ---;
	joystick_get_device_guid 						:: proc(device_index: i32) -> JoystickGuid																																			#link_name "SDL_JoystickGetDeviceGUID" ---;
	joystick_get_guid 								:: proc(joystick: ^Joystick) -> JoystickGuid																																		#link_name "SDL_JoystickGetGUID" ---;
	joystick_get_guid_from_string_c 				:: proc(pch_guid: ^u8) -> JoystickGuid																																				#link_name "SDL_JoystickGetGUIDFromString" ---;
	joystick_get_guid_string 						:: proc(guid: JoystickGuid, psz_guid: ^u8, cb_guid: i32)																															#link_name "SDL_JoystickGetGUIDString" ---;
	joystick_get_hat 								:: proc(joystick: ^Joystick, hat: i32) -> u8																																		#link_name "SDL_JoystickGetHat" ---;
	joystick_instance_id 							:: proc(joystick: ^Joystick) -> JoystickId																																			#link_name "SDL_JoystickInstanceID" ---;
	joystick_is_haptic 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickIsHaptic" ---;
	joystick_name_c 								:: proc(joystick: ^Joystick) -> ^u8																																					#link_name "SDL_JoystickName" ---;
	joystick_name_for_index_c 						:: proc(device_index: i32) -> ^u8																																					#link_name "SDL_JoystickNameForIndex" ---;
	joystick_num_axes 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickNumAxes" ---;
	joystick_num_balls 								:: proc(joystick: ^Joystick) -> i32																																					#link_name "SDL_JoystickNumBalls" ---;
	joystick_num_buttons 							:: proc(joystick: ^Joystick) ->	i32																																					#link_name "SDL_JoystickNumButtons" ---;
	joystick_num_hats 								:: proc(joystick: ^Joystick) -> i32 																																				#link_name "SDL_JoystickNumHats" ---;
	joystick_open 									:: proc(device_index: i32) -> ^Joystick																																				#link_name "SDL_JoystickOpen" ---;
	joystick_update 								:: proc()																																											#link_name "SDL_JoystickUpdate" ---;
	load_bmp_rw 									:: proc(src: ^RwOps, freerw: i32) -> ^Surface																																		#link_name "SDL_LoadBMP_RW" ---;
	load_dollar_templates 							:: proc(touch_id: TouchId, src: ^RwOps) -> i32																																		#link_name "SDL_LoadDollarTemplates" ---;
	load_function_c 								:: proc(handle: rawptr, name: ^u8) -> rawptr																																		#link_name "SDL_LoadFunction" ---;
	load_object_c 									:: proc(sofile: ^u8) -> ^u8																																							#link_name "SDL_LoadObject" ---;
	load_wav_rw 									:: proc(src: ^RwOps, freesrc: i32, spec: ^AudioSpec, audio_buf: ^^u8, audio_len: ^u32) -> ^AudioSpec																				#link_name "SDL_LoadWAV_RW" ---;
	lock_audio 										:: proc()																																											#link_name "SDL_LockAudio" ---;
	lock_audio_device 								:: proc(dev: AudioDeviceId)																																							#link_name "SDL_LockAudioDevice" ---;
	lock_mutex 										:: proc(mutex: ^Mutex) -> i32																																						#link_name "SDL_LockMutex" ---;
	lock_surface 									:: proc(surface: ^Surface) -> i32																																					#link_name "SDL_LockSurface" ---;
	lock_texture 									:: proc(texture: ^Texture, rect: ^Rect, pixels: ^rawptr, pitch: ^i32) -> i32																										#link_name "SDL_LockTexture" ---;
	log 											:: proc(fmt: ...^u8)																																								#link_name "SDL_Log" ---;
	log_critical 									:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogCritical" ---;
	log_debug 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogDebug" ---;
	log_error 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogError" ---;
	log_get_output_function 						:: proc(callback: ^LogOutputFunction, userdata: ^rawptr)																															#link_name "SDL_LogGetOutputFunction" ---;
	log_get_priority 								:: proc(category: i32) -> LogPriority																																				#link_name "SDL_LogGetPriority" ---;
	log_info 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogInfo" ---;
	log_message 									:: proc(category: i32, priority: LogPriority, fmt: ...^u8)																															#link_name "SDL_LogMessage" ---;
	log_message_v 									:: proc(category: i32, priority: LogPriority, fmt: ^u8, va_list: ^u8)																												#link_name "SDL_LogMessageV" ---;
	log_reset_priorities 							:: proc()																																											#link_name "SDL_LogResetPriorities" ---;
	log_set_all_priority 							:: proc(priority: LogPriority)																																						#link_name "SDL_LogSetAllPriority" ---;
	log_set_output_function 						:: proc(callback: LogOutputFunction, userdata: rawptr)																																#link_name "SDL_LogSetOutputFunction" ---;
	log_set_priority 								:: proc(category: i32, priority: LogPriority)																																		#link_name "SDL_LogSetPriority" ---;
	log_verbose 									:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogVerbose" ---;
	log_warn 										:: proc(category: i32, fmt: ...^u8)																																					#link_name "SDL_LogWarn" ---;
	lower_blit 										:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_LowerBlit" ---;
	lower_blit_scaled 								:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_LowerBlitScaled" ---;
	map_rgb 										:: proc(format: PixelFormat, r, g, b: u8) -> u32																																	#link_name "SDL_MapRGB" ---;
	map_rgba 										:: proc(format: PixelFormat, r, g, b, a: u8) -> u32																																	#link_name "SDL_MapRGBA" ---;
	masks_to_pixel_format_enum 						:: proc(bpp: i32, r_mask, g_mask, b_mask, a_mask: u32) -> u32																														#link_name "SDL_MasksToPixelFormatEnum" ---;
	maximize_window 								:: proc(window: ^Window)																																							#link_name "SDL_MaximizeWindow" ---;
	minimize_window 								:: proc(window: ^Window)																																							#link_name "SDL_MinimizeWindow" ---;
	mix_audio 										:: proc(dst, src: ^u8, len: u32, volume: i32)																																		#link_name "SDL_MixAudio" ---;
	mix_audio_format 								:: proc(dst, src: ^u8, format: AudioFormat, len: u32, volume: i32)																													#link_name "SDL_MixAudioFormat" ---;
	mouse_is_haptic 								:: proc() -> i32																																									#link_name "SDL_MouseIsHaptic" ---;
	num_haptics 									:: proc() -> i32																																									#link_name "SDL_NumHaptics" ---;
	num_joysticks 									:: proc() -> i32																																									#link_name "SDL_NumJoysticks" ---;
	open_audio 										:: proc(desired, obtained: ^AudioSpec) -> i32																																		#link_name "SDL_OpenAudio" ---;
	open_audio_device_c 							:: proc(device: ^u8, iscapture: i32, desired, obtained: ^AudioSpec, allowed_changed: i32) -> AudioDeviceId																			#link_name "SDL_OpenAudioDevice" ---;
	pause_audio 									:: proc(pause_on: i32)																																								#link_name "SDL_PauseAudio" ---;
	pause_audio_device 								:: proc(dev: AudioDeviceId, pause_on: i32)																																			#link_name "SDL_PauseAudioDevice" ---;
	peep_events 									:: proc(events: ^Event, num_events: i32, action: EventAction, min_type, max_type: u32) -> i32																						#link_name "SDL_PeepEvents" ---;
	pixel_format_enum_to_masks 						:: proc(format: u32, bpp: ^i32, r_mask, g_mask, b_mask, a_mask: ^u32) -> Bool																										#link_name "SDL_PixelFormatEnumToMasks" ---;
	poll_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_PollEvent" ---;
	pump_events 									:: proc()																																											#link_name "SDL_PumpEvents" ---;
	push_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_PushEvent" ---;
	query_texture 									:: proc(texture: ^Texture, format: ^u32, access, w, h: ^i32) -> i32																													#link_name "SDL_QueryTexture" ---;
	queue_audio 									:: proc(dev: AudioDeviceId, data: rawptr, len: u32) -> i32																															#link_name "SDL_QueueAudio" ---;
	quit 											:: proc()																																											#link_name "SDL_Quit" ---;
	quit_sub_system 								:: proc(flags: u32)																																									#link_name "SDL_QuitSubSystem" ---;
	raise_window 									:: proc(window: ^Window)																																							#link_name "SDL_RaiseWindow" ---;
	read_be16 										:: proc(src: ^RwOps) -> u16																																							#link_name "SDL_ReadBE16" ---;
	read_be32 										:: proc(src: ^RwOps) -> u32																																							#link_name "SDL_ReadBE32" ---;
	read_be64 										:: proc(src: ^RwOps) -> u64																																							#link_name "SDL_ReadBE64" ---;
	read_le16 										:: proc(src: ^RwOps) -> u16																																							#link_name "SDL_ReadLE16" ---;
	read_le32 										:: proc(src: ^RwOps) -> u32																																							#link_name "SDL_ReadLE32" ---;
	read_le64 										:: proc(src: ^RwOps) -> u64																																							#link_name "SDL_ReadLE64" ---;
	read_u8 										:: proc(src: ^RwOps) -> u8																																							#link_name "SDL_ReadU8" ---;
	record_gesture 									:: proc(touch_id: TouchId) -> i32																																					#link_name "SDL_RecordGesture" ---;
	register_app_c 									:: proc(name: ^u8, style: u32, h_inst: rawptr) -> i32																																#link_name "SDL_RegisterApp" ---;
	register_events 								:: proc(num_events: i32) -> u32																																						#link_name "SDL_RegisterEvents" ---;
	remove_timer 									:: proc(id: TimerId) -> Bool																																						#link_name "SDL_RemoveTimer" ---;
	render_clear 									:: proc(renderer: ^Renderer) -> i32																																					#link_name "SDL_RenderClear" ---;
	render_copy 									:: proc(renderer: ^Renderer, texture: ^Texture, srcrect, dstrect: ^Rect) -> i32																										#link_name "SDL_RenderCopy" ---;
	render_copy_ex 									:: proc(renderer: ^Renderer, texture: ^Texture, srcrect, dstrect: ^Rect, angle: f64, center: ^Point, flip: RendererFlip) -> i32														#link_name "SDL_RenderCopyEx" ---;
	render_draw_line 								:: proc(renderer: ^Renderer, x1, y1, x2, y2: i32) -> i32																															#link_name "SDL_RenderDrawLine" ---;
	render_draw_lines 								:: proc(renderer: ^Renderer, points: ^Point, count: i32) -> i32																														#link_name "SDL_RenderDrawLines" ---;
	render_draw_point 								:: proc(renderer: ^Renderer, x, y: i32) -> i32																																		#link_name "SDL_RenderDrawPoint" ---;
	render_draw_points 								:: proc(renderer: ^Renderer, points: ^Point, count: i32) -> i32																														#link_name "SDL_RenderDrawPoints" ---;
	render_draw_rect 								:: proc(renderer: ^Renderer, rect: ^Rect) -> i32																																	#link_name "SDL_RenderDrawRect" ---;
	render_draw_rects 								:: proc(renderer: ^Renderer, rects: ^Rect, count: i32) -> i32																														#link_name "SDL_RenderDrawRects" ---;
	render_fill_rect 								:: proc(dst: ^Surface, rect: ^Rect, color: u32) -> i32																																#link_name "SDL_RenderFillRect" ---;
	render_fill_rects 								:: proc(dst: ^Surface, rect: ^Rect, count: i32, color: u32) -> i32																													#link_name "SDL_RenderFillRects" ---;
	render_get_clip_rect 							:: proc(surface: ^Surface, rect: ^Rect)																																				#link_name "SDL_RenderGetClipRect" ---;
	render_get_d3d9_device 							:: proc(renderer: ^Renderer) ->	^IDirect3DDevice9																																	#link_name "SDL_RenderGetD3D9Device" ---;
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
	rw_from_const_mem 								:: proc(mem: rawptr, size: i32) -> ^RwOps																																			#link_name "SDL_RWFromConstMem" ---;
	rw_from_fp 										:: proc(fp: rawptr, auto_close: Bool) -> ^RwOps																																		#link_name "SDL_RWFromFP" ---;
	rw_from_file_c 									:: proc(file: ^u8, mode: ^u8) -> ^RwOps																																				#link_name "SDL_RWFromFile" ---;
	rw_from_mem 									:: proc(mem: rawptr, size:i32) -> ^RwOps																																			#link_name "SDL_RWFromMem" ---;
	save_all_dollar_templates 						:: proc(dst: ^RwOps) -> i32																																							#link_name "SDL_SaveAllDollarTemplates" ---;
	save_bmp_rw 									:: proc(surface: ^Surface, dst: ^RwOps, free_dst: i32) -> i32																														#link_name "SDL_SaveBMP_RW" ---;
	save_dollar_template 							:: proc(gesture_id: GestureId, dst: ^RwOps) -> i32																																	#link_name "SDL_SaveDollarTemplate" ---;
	sem_post 										:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemPost" ---;
	sem_try_wait 									:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemTryWait" ---;
	sem_value 										:: proc(sem: Sem) -> u32																																							#link_name "SDL_SemValue" ---;
	sem_wait 										:: proc(sem: Sem) -> i32																																							#link_name "SDL_SemWait" ---;
	sem_wait_timeout 								:: proc(sem: Sem, ms: u32) -> i32																																					#link_name "SDL_SemWaitTimeout" ---;
	set_assertion_handler 							:: proc(handler: AssertionHandler, userdata: rawptr)																																#link_name "SDL_SetAssertionHandler" ---;
	set_clip_rect 									:: proc(surface: ^Surface, rect: ^Rect) -> Bool																																		#link_name "SDL_SetClipRect" ---;
	set_clipboard_text_c 							:: proc(text: ^u8) -> i32																																							#link_name "SDL_SetClipboardText" ---;
	set_color_key 									:: proc(surface: ^Surface, flag: i32, key: u32) -> i32																																#link_name "SDL_SetColorKey" ---;
	set_cursor 										:: proc(cursor: ^Cursor)																																							#link_name "SDL_SetCursor" ---;
	set_error 										:: proc(fmt: ...^u8) -> i32																																							#link_name "SDL_SetError" ---;
	set_event_filter 								:: proc(filter: EventFilter, userdata: rawptr)																																		#link_name "SDL_SetEventFilter" ---;
	set_hint_c 										:: proc(name, value: ^u8) -> Bool																																					#link_name "SDL_SetHint" ---;
	set_hint_with_priority_c 						:: proc(name, value: ^u8, priority: HintPriority) -> Bool																															#link_name "SDL_SetHintWithPriority" ---;
	set_main_ready 									:: proc()																																											#link_name "SDL_SetMainReady" ---;
	set_mod_state 									:: proc(modstate: Keymod)																																							#link_name "SDL_SetModState" ---;
	set_palette_colors 								:: proc(palette: ^Palette, colors: ^Color, firstcolor, ncolors: i32) -> i32																											#link_name "SDL_SetPaletteColors" ---;
	set_pixel_format_palette 						:: proc(format: ^PixelFormat, palette: ^Palette) -> i32																																#link_name "SDL_SetPixelFormatPalette" ---;
	set_relative_mouse_mode 						:: proc(enabled: Bool) -> i32																																						#link_name "SDL_SetRelativeMouseMode" ---;
	set_render_draw_blend_mode 						:: proc(renderer: ^Renderer, blend_mode: BlendMode) -> i32																															#link_name "SDL_SetRenderDrawBlendMode" ---;
	set_render_draw_color 							:: proc(renderer: ^Renderer, r, g, b, a: u8) -> i32																																	#link_name "SDL_SetRenderDrawColor" ---;
	set_render_target 								:: proc(renderer: ^Renderer, texture: ^Texture) -> i32																																#link_name "SDL_SetRenderTarget" ---;
	set_surface_alpha_mod 							:: proc(surface: ^Surface, alpha: u8) -> i32																																		#link_name "SDL_SetSurfaceAlphaMod" ---;
	set_surface_blend_mode 							:: proc(surface: ^Surface, blend_mode: BlendMode) -> i32																															#link_name "SDL_SetSurfaceBlendMode" ---;
	set_surface_color_mod 							:: proc(surface: ^Surface, r, g, b: u8) -> i32																																		#link_name "SDL_SetSurfaceColorMod" ---;
	set_surface_palette 							:: proc(surface: ^Surface, palette: ^Palette) -> i32																																#link_name "SDL_SetSurfacePalette" ---;
	set_surface_rle 								:: proc(surface: ^Surface, flag: i32) -> i32																																		#link_name "SDL_SetSurfaceRLE" ---;
	set_text_input_rect 							:: proc(rect: ^Rect)																																								#link_name "SDL_SetTextInputRect" ---;
	set_texture_alpha_mod 							:: proc(texture: ^Texture, alpha: u8) -> i32																																		#link_name "SDL_SetTextureAlphaMod" ---;
	set_texture_blend_mode 							:: proc(texture: ^Texture, blend_mode: BlendMode) -> i32																															#link_name "SDL_SetTextureBlendMode" ---;
	set_texture_color_mod 							:: proc(texture: ^Texture, r, g, b: u8) -> i32																																		#link_name "SDL_SetTextureColorMod" ---;
	set_thread_priority 							:: proc(priority: ThreadPriority) -> i32																																			#link_name "SDL_SetThreadPriority" ---;
	set_window_bordered 							:: proc(window: ^Window, bordered: Bool)																																			#link_name "SDL_SetWindowBordered" ---;
	set_window_brightness 							:: proc(window: ^Window, brightness: f32) -> i32																																	#link_name "SDL_SetWindowBrightness" ---;
	set_window_data_c 								:: proc(window: ^Window, name: ^u8, userdata: rawptr) -> rawptr																														#link_name "SDL_SetWindowData" ---;
	set_window_display_mode 						:: proc(window: ^Window, mode: ^DisplayMode) -> i32																																	#link_name "SDL_SetWindowDisplayMode" ---;
	set_window_fullscreen 							:: proc(window: ^Window, flags: u32) -> i32																																			#link_name "SDL_SetWindowFullscreen" ---;
	set_window_gamma_ramp 							:: proc(window: ^Window, r, g, b: ^u16) -> i32																																		#link_name "SDL_SetWindowGammaRamp" ---;
	set_window_grab 								:: proc(window: ^Window, grabbed: Bool)																																				#link_name "SDL_SetWindowGrab" ---;
	set_window_hit_test 							:: proc(window: ^Window, callback: HitTest, callback_data: rawptr) -> i32																											#link_name "SDL_SetWindowHitTest" ---;
	set_window_icon 								:: proc(window: ^Window, icon: ^Surface)																																			#link_name "SDL_SetWindowIcon" ---;
	set_window_input_focus 							:: proc(window: ^Window) -> i32																																						#link_name "SDL_SetWindowInputFocus" ---;
	set_window_maximum_size 						:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowMaximumSize" ---;
	set_window_minimum_size 						:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowMinimumSize" ---;
	set_window_modal_for 							:: proc(window: ^Window, parent_window: ^Window) -> i32																																#link_name "SDL_SetWindowModalFor" ---;
	set_window_opacity 								:: proc(window: ^Window, opacity: f32) -> i32																																		#link_name "SDL_SetWindowOpacity" ---;
	set_window_position 							:: proc(window: ^Window, x, y: i32)																																					#link_name "SDL_SetWindowPosition" ---;
	set_window_resizable 							:: proc(window: ^Window, resizable: Bool)																																			#link_name "SDL_SetWindowResizable" ---;
	set_window_shape 								:: proc(window: ^Window, shape: ^Surface, shape_mode: WindowShapeMode) -> i32																										#link_name "SDL_SetWindowShape" ---;
	set_window_size 								:: proc(window: ^Window, w, h: i32)																																					#link_name "SDL_SetWindowSize" ---;
	set_window_title_c 								:: proc(window: ^Window, title: ^u8)																																				#link_name "SDL_SetWindowTitle" ---;
	set_windows_message_hook 						:: proc(callback: WindowsMessageHook, userdata: rawptr)																																#link_name "SDL_SetWindowsMessageHook" ---;
	show_cursor 									:: proc(toggle: i32) -> i32																																							#link_name "SDL_ShowCursor" ---;
	show_message_box 								:: proc(message_box_data: ^MessageBoxData, button_id: ^i32) -> i32																													#link_name "SDL_ShowMessageBox" ---;
	show_simple_message_box_c 						:: proc(flags: u32, title, message: ^u8, window: ^Window) -> i32																													#link_name "SDL_ShowSimpleMessageBox" ---;
	show_window 									:: proc(window: ^Window)																																							#link_name "SDL_ShowWindow" ---;
	soft_stretch 									:: proc(src: ^Surface, srcrect: ^Rect, dst: ^Surface, dstrect: ^Rect) -> i32																										#link_name "SDL_SoftStretch" ---;
	start_text_input 								:: proc()																																											#link_name "SDL_StartTextInput" ---;
	stop_text_input 								:: proc()																																											#link_name "SDL_StopTextInput" ---;
	tls_create 										:: proc() -> TlsId																																									#link_name "SDL_TLSCreate" ---;
	tls_get 										:: proc(id: TlsId) -> rawptr																																						#link_name "SDL_TLSGet" ---;
	tls_set 										:: proc(id: TlsId, value: rawptr, destructor: proc(data: rawptr)) -> i32																											#link_name "SDL_TLSSet" ---;
	thread_id 										:: proc() -> ThreadId																																								#link_name "SDL_ThreadID" ---;
	try_lock_mutex 									:: proc(mutex: ^Mutex) -> i32																																						#link_name "SDL_TryLockMutex" ---;
	union_rect 										:: proc(a, b, result: ^Rect)																																						#link_name "SDL_UnionRect" ---;
	unload_object 									:: proc(handle: rawptr)																																								#link_name "SDL_UnloadObject" ---;
	unlock_audio 									:: proc()																																											#link_name "SDL_UnlockAudio" ---;
	unlock_audio_device 							:: proc(dev: AudioDeviceId)																																							#link_name "SDL_UnlockAudioDevice" ---;
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
	video_init_c 									:: proc(driver_name: ^u8) -> i32																																					#link_name "SDL_VideoInit" ---;
	video_quit 										:: proc()																																											#link_name "SDL_VideoQuit" ---;
	wait_event 										:: proc(event: ^Event) -> i32																																						#link_name "SDL_WaitEvent" ---;
	wait_event_timeout 								:: proc(event: ^Event, timeout: i32) -> i32																																			#link_name "SDL_WaitEventTimeout" ---;
	wait_thread 									:: proc(thread: ^Thread, status: ^i32)																																				#link_name "SDL_WaitThread" ---;
	warp_mouse_global 								:: proc(x, y: i32) -> i32																																							#link_name "SDL_WarpMouseGlobal" ---;
	warp_mouse_in_window 							:: proc(window: ^Window, x, y: i32)																																					#link_name "SDL_WarpMouseInWindow" ---;
	was_init 										:: proc(flags: u32) -> u32																																							#link_name "SDL_WasInit" ---;
	write_be16 										:: proc(dst: ^RwOps, value: u16) -> u64																																				#link_name "SDL_WriteBE16" ---;
	write_be32 										:: proc(dst: ^RwOps, value: u32) -> u64																																				#link_name "SDL_WriteBE32" ---;
	write_be64 										:: proc(dst: ^RwOps, value: u64) -> u64																																				#link_name "SDL_WriteBE64" ---;
	write_le16 										:: proc(dst: ^RwOps, value: u16) -> u64																																				#link_name "SDL_WriteLE16" ---;
	write_le32 										:: proc(dst: ^RwOps, value: u32) -> u64																																				#link_name "SDL_WriteLE32" ---;
	write_le64 										:: proc(dst: ^RwOps, value: u64) -> u64																																				#link_name "SDL_WriteLE64" ---;
	write_u8 										:: proc(dst: ^RwOps, value: u8) -> u64																																				#link_name "SDL_WriteU8" ---;
}

// Wrappers
add_hint_callback  								:: proc(name: string, callback: HintCallback, userdata: rawptr) {
	name_c := new_c_string(name);
	defer free(name_c);
	add_hint_callback_c(name_c, callback, userdata);
}

audio_init 										:: proc(driver_name: string) -> i32 {
	driver_name_c := new_c_string(driver_name);
	defer free(driver_name_c);
	return audio_init_c(driver_name_c);
}

create_cursor 									:: proc(data: string, mask: string, w, h: i32, hot_x, hot_y: i32) -> ^Cursor {
	data_c := new_c_string(data);
	defer free(data_c);

	mask_c := new_c_string(mask);
	defer free(mask_c);
	return create_cursor_c(data_c, mask_c, w, h, hot_x, hot_y);
}

create_shaped_window 							:: proc(title: string, x, y, w, h: u32, flags: u32) -> ^Window {
	title_c := new_c_string(title);
	defer free(title_c);
	return create_shaped_window_c(title_c, x, y, w, h, flags);
}

create_thread 									:: proc(fn: ThreadFunction, name: string, data: rawptr) -> ^Thread {
	name_c := new_c_string(name);
	defer free(name_c);
	return create_thread_c(fn, name_c, data);
}

create_window 									:: proc(title: string, x, y, w, h: i32, flags: u32) -> ^Window {
	title_c := new_c_string(title);
	defer free(title_c);
	return create_window_c(title_c, x, y, w, h, flags);
}

del_hint_callback 								:: proc(name: string, callback: HintCallback, userdata: rawptr) {
	name_c := new_c_string(name);
	defer free(name_c);
	del_hint_callback_c(name_c, callback, userdata);
}

gl_extension_supported 							:: proc(extension: string) -> Bool {
	extension_c := new_c_string(extension);
	defer free(extension_c);
	return gl_extension_supported_c(extension_c);
}

gl_get_proc_address 							:: proc(name: string) -> rawptr {
	name_c := new_c_string(name);
	defer free(name_c);
	return gl_get_proc_address_c(name_c);
}

gl_load_library 								:: proc(path: string) -> i32 {
	path_c := new_c_string(path);
	defer free(path_c);
	return gl_load_library_c(path_c);
}

game_controller_add_mapping 					:: proc(mapping_string: string) -> i32 {
	mapping_string_c := new_c_string(mapping_string);
	defer free(mapping_string_c);
	return game_controller_add_mapping_c(mapping_string_c);
}

game_controller_get_axis_from_string 			:: proc(pch_string: string) -> string {
	pch_string_c := new_c_string(pch_string);
	defer free(pch_string_c);
	return to_odin_string(game_controller_get_axis_from_string_c(pch_string_c));
}

game_controller_get_button_from_string 			:: proc(pch_string: string) -> GameControllerButton {
	pch_string_c := new_c_string(pch_string);
	defer free(pch_string_c);
	return game_controller_get_button_from_string_c(pch_string_c);
}

game_controller_get_string_for_axis 			:: proc(axis: GameControllerAxis) -> string {
	odin_str := to_odin_string(game_controller_get_string_for_axis_c(axis));
	return odin_str;
}

game_controller_get_string_for_button 			:: proc(button: GameControllerButton) -> string {
	odin_str := to_odin_string(game_controller_get_string_for_button_c(button));
	return odin_str;
}

game_controller_mapping 						:: proc(game_controller: ^GameController) -> string {
	odin_str := to_odin_string(game_controller_mapping_c(game_controller));
	return odin_str;
}

game_controller_mapping_for_guid 				:: proc(guid: JoystickGuid) -> string {
	odin_str := to_odin_string(game_controller_mapping_for_guid_c(guid));
	return odin_str;
}

game_controller_name 							:: proc(game_controller: ^GameController) -> string {
	odin_str := to_odin_string(game_controller_name_c(game_controller));
	return odin_str;
}

game_controller_name_for_index 					:: proc(joystick_index: i32) -> string {
	odin_str := to_odin_string(game_controller_name_for_index_c(joystick_index));
	return odin_str;
}

get_audio_device_name 							:: proc(index: i32, iscapture: i32) -> string {
	odin_str := to_odin_string(get_audio_device_name_c(index, iscapture));
	return odin_str;
}

get_audio_driver 								:: proc(index: i32) -> string {
	odin_str := to_odin_string(get_audio_driver_c(index));
	return odin_str;
}

get_base_path 									:: proc() -> string {
	odin_str := to_odin_string(get_base_path_c());
	return odin_str;
}

get_clipboard_text 								:: proc() -> string {
	odin_str := to_odin_string(get_clipboard_text_c());
	return odin_str;
}

get_current_audio_driver 						:: proc() -> string {
	odin_str := to_odin_string(get_current_audio_driver_c());
	return odin_str;
}

get_current_video_driver 						:: proc() -> string {
	odin_str := to_odin_string(get_current_video_driver_c());
	return odin_str;
}

get_display_name 								:: proc(display_index: i32) -> string {
	odin_str := to_odin_string(get_display_name_c(display_index));
	return odin_str;
}

get_error 										:: proc() -> string {
	odin_str := to_odin_string(get_error_c());
	return odin_str;
}

get_hint 										:: proc(name: string) -> string {
	name_c := new_c_string(name);
	defer free(name_c);
	return to_odin_string(get_hint_c(name_c));
}

get_key_from_name 								:: proc(name: string) -> Keycode {
	name_c := new_c_string(name);
	defer free(name_c);
	return get_key_from_name_c(name_c);
}

get_key_name 									:: proc(key: Keycode) -> string {
	odin_str := to_odin_string(get_key_name_c(key));
	return odin_str;
}

get_pixel_format_name 							:: proc(format: u32) -> string {
	odin_str := to_odin_string(get_pixel_format_name_c(format));
	return odin_str;
}

get_platform 									:: proc() -> string {
	odin_str := to_odin_string(get_platform_c());
	return odin_str;
}

get_pref_path 									:: proc(org, app: string) -> string {
	org_c := new_c_string(org);
	defer free(org_c);

	app_c := new_c_string(app);
	defer free(app_c);
	return to_odin_string(get_pref_path_c(org_c, app_c));
}

get_revision 									:: proc() -> string {
	odin_str := to_odin_string(get_revision_c());
	return odin_str;
}

get_scancode_from_name 							:: proc(name: string) -> Scancode {
	name_c := new_c_string(name);
	defer free(name_c);
	return get_scancode_from_name_c(name_c);
}

get_scancode_name 								:: proc(scancode: Scancode) -> string {
	odin_str := to_odin_string(get_scancode_name_c(scancode));
	return odin_str;
}

get_thread_name 								:: proc(thread: ^Thread) -> string {
	odin_str := to_odin_string(get_thread_name_c(thread));
	return odin_str;
}

get_video_driver 								:: proc(index: i32) -> string {
	odin_str := to_odin_string(get_video_driver_c(index));
	return odin_str;
}

get_window_data 								:: proc(window: ^Window, name: string) -> rawptr {
	name_c := new_c_string(name);
	defer free(name_c);
	return get_window_data_c(window, name_c);
}

get_window_title 								:: proc(window: ^Window) -> string {
	odin_str := to_odin_string(get_window_title_c(window));
	return odin_str;
}

haptic_name 									:: proc(device_index: i32) -> string {
	odin_str := to_odin_string(haptic_name_c(device_index));
	return odin_str;
}

joystick_get_guid_from_string 					:: proc(pch_guid: string) -> JoystickGuid {
	pch_guid_c := new_c_string(pch_guid);
	defer free(pch_guid_c);
	return joystick_get_guid_from_string_c(pch_guid_c);
}

joystick_name 									:: proc(joystick: ^Joystick) -> string {
	odin_str := to_odin_string(joystick_name_c(joystick));
	return odin_str;
}

joystick_name_for_index 						:: proc(device_index: i32) -> string {
	odin_str := to_odin_string(joystick_name_for_index_c(device_index));
	return odin_str;
}

load_function 									:: proc(handle: rawptr, name: string) -> rawptr {
	name_c := new_c_string(name);
	defer free(name_c);
	return load_function_c(handle, name_c);
}

load_object 									:: proc(sofile: string) -> string {
	sofile_c := new_c_string(sofile);
	defer free(sofile_c);
	return to_odin_string(load_object_c(sofile_c));
}

open_audio_device 								:: proc(device: string, iscapture: i32, desired, obtained: ^AudioSpec, allowed_changed: i32) -> AudioDeviceId {
	device_c := new_c_string(device);
	defer free(device_c);
	return open_audio_device_c(device_c, iscapture, desired, obtained, allowed_changed);
}

register_app 									:: proc(name: string, style: u32, h_inst: rawptr) -> i32 {
	name_c := new_c_string(name);
	defer free(name_c);
	return register_app_c(name_c, style, h_inst);
}

rw_from_file 									:: proc(file: string, mode: string) -> ^RwOps {
	file_c := new_c_string(file);
	defer free(file_c);

	mode_c := new_c_string(mode);
	defer free(mode_c);
	return rw_from_file_c(file_c, mode_c);
}

set_clipboard_text 								:: proc(text: string) -> i32 {
	text_c := new_c_string(text);
	defer free(text_c);
	return set_clipboard_text_c(text_c);
}

set_hint 										:: proc(name, value: string) -> Bool {
	name_c := new_c_string(name);
	defer free(name_c);

	value_c := new_c_string(value);
	defer free(value_c);
	return set_hint_c(name_c, value_c);
}

set_hint_with_priority 							:: proc(name, value: string, priority: HintPriority) -> Bool {
	name_c := new_c_string(name);
	defer free(name_c);

	value_c := new_c_string(value);
	defer free(value_c);
	return set_hint_with_priority_c(name_c, value_c, priority);
}

set_window_data 								:: proc(window: ^Window, name: string, userdata: rawptr) -> rawptr {
	name_c := new_c_string(name);
	defer free(name_c);
	return set_window_data_c(window, name_c, userdata);
}

set_window_title 								:: proc(window: ^Window, title: string) {
	title_c := new_c_string(title);
	defer free(title_c);
	set_window_title_c(window, title_c);
}

show_simple_message_box 						:: proc(flags: u32, title, message: string, window: ^Window) -> i32 {
	title_c := new_c_string(title);
	defer free(title_c);

	message_c := new_c_string(message);
	defer free(message_c);
	return show_simple_message_box_c(flags, title_c, message_c, window);
}

video_init 										:: proc(driver_name: string) -> i32 {
	driver_name_c := new_c_string(driver_name);
	defer free(driver_name_c);
	return video_init_c(driver_name_c);
}

InitFlags :: enum i32 {
	Timer = 0x00000001,
	Audio = 0x00000010,
	Video = 0x00000020,
	Joystick = 0x00000200,
	Haptic = 0x00001000,
	GameController = 0x00002000,
	Events = 0x00004000,
	NoParachute = 0x00100000,
	Everything = Timer | Audio | Video | Events | Joystick | Haptic | GameController
}

WindowFlags :: enum i32 {
	Fullscreen = 0x00000001,
	OpenGL = 0x00000002,
	Shown = 0x00000004,
	Hidden = 0x00000008,
	Borderless = 0x00000010,
	Resizable = 0x00000020,
	Minimized = 0x00000040,
	Maximized = 0x00000080,
	InputGrabbed = 0x00000100,
	InputFocus = 0x00000200,
	MouseFocus = 0x00000400,
	FullscreenDesktop = Fullscreen | 0x00001000,
	Foreign = 0x00000800,
	AllowHighDPI = 0x00002000,
	MouseCapture = 0x00004000,
	AlwaysOnTop = 0x00008000,
	SkipTaskbar = 0x00010000,
	Utility = 0x00020000,
	Tooltip = 0x00040000,
	PopupMenu = 0x00080000,
	Vulkan = 0x00100000
}

WindowPos :: enum i32 {
	Undefined = 0x1FFF0000,
	Centered = 0x2FFF0000
}

RendererFlags :: enum i32 {
	Software = 0x00000001,
	Accelerated = 0x00000002,
	PresentVSync = 0x00000004,
	TargetTexture = 0x00000008
}


BlendMode :: enum i32 {
	None = 0x00000000,
	Blend = 0x00000001,
	Add = 0x00000002,
	Mod = 0x00000004
}

ErrorCode :: enum i32 {
	NoMem,
	FRead,
	FWrite,
	FSeek,
	Unsupported,
	LastError
}

JoystickPowerLevel :: enum i32 {
	Unknown = -1,
	Empty,
	Low,
	Medium,
	Full,
	Wired,
	Max
}

HintPriority :: enum i32 {
	Default,
	Normal,
	Override
}

ThreadPriority :: enum i32 {
	Low,
	Normal,
	High
}

AssertState :: enum i32 {
	Retry,
	Break,
	Abort,
	Ignore,
	AlwaysIgnore
}

EventAction :: enum i32 {
	AddEvent,
	PeekEvent,
	GetEvent
}

HitTestResult :: enum i32 {
	Normal,
	Draggable,
	ResizeTopLeft,
	ResizeTop,
	ResizeTopRight,
	ResizeRight,
	ResizeBottomRight,
	ResizeBottom,
	ResizeBottomLeft,
	ResizeLeft
}

Bool :: enum i32 {
	False,
	True
}

WindowShapeModes :: enum i32 {
	Default,
	BinarizeAlpha,
	ReverseBinarizeAlpha,
	ColorKey
}

Keymod :: enum i32 {
	None = 0x0000,
	LShift = 0x0001,
	RShift = 0x0002,
	LCtrl = 0x0040,
	RCtrl = 0x0080,
	LAlt = 0x0100,
	RAlt = 0x0200,
	LGui = 0x0400,
	RGui = 0x0800,
	Num = 0x1000,
	Caps = 0x2000,
	Mode = 0x4000,
	Reserved = 0x8000
}

RendererFlip :: enum i32 {
	None = 0x00000000,
	Horizontal = 0x00000001,
	Vertical = 0x00000002
}

GLAttr :: enum i32 {
	RedSize,
	GreenSize,
	BlueSize,
	AlphaSize,
	BufferSize,
	Doublebuffer,
	DepthSize,
	StencilSize,
	AccumRedSize,
	AccumGreenSize,
	AccumBlueSize,
	AccumAlphaSize,
	Stereo,
	Multisamplebuffers,
	MultisampleSamples,
	AcceleratedVisual,
	RetainedBacking,
	ContextMajorVersion,
	ContextMinorVersion,
	ContextEGL,
	ContextFlags,
	ContextProfileMask,
	ShareWithCurrentContext,
	FramebufferSRGBCapable,
	ContextReleaseBehavior
}

GLContextFlag :: enum i32
{
	Debug              = 0x0001,
	ForwardCompatible = 0x0002,
	RobustAccess      = 0x0004,
	ResetIsolation    = 0x0008
}

GLContextProfile :: enum i32
{
	Core           = 0x0001,
	Compatibility  = 0x0002,
	ES             = 0x0004
}

MessageBoxColorType :: enum i32 {
	Background,
	Text,
	ButtonBorder,
	ButtonBackground,
	ButtonSelected,
	Max
}

AudioStatus :: enum i32 {
	Stopped = 0,
	Playing,
	Paused
}

PowerState :: enum i32 {
	Unknown,
	OnBattery,
	NoBattery,
	Charging,
	Charged
}

LogPriority :: enum i32 {
	Verbose = 1,
	Debug,
	Info,
	Warn,
	Error,
	Critical,
	NumLogPriorities
}


// Input stuff


GameControllerButton :: enum i32 {
	Invalid = -1,
	A,
	B,
	X,
	Y,
	Back,
	Guide,
	Start,
	LeftStick,
	RightStick,
	LeftShoulder,
	RightShoulder,
	DPadUp,
	DPadDown,
	DPadLeft,
	DPadRight,
	Max
}

GameControllerAxis :: enum i32 {
	Invalid = -1,
	LeftX,
	LeftY,
	RightX,
	RightY,
	TriggerLeft,
	TriggerRight,
	Max
}

GameControllerBindType :: enum i32 {
	None = 0,
	Button,
	Axis,
	Hat
}

SystemCursor :: enum i32 {
	Arrow,
	IBeam,
	Wait,
	Crosshair,
	WaitArrow,
	SizeNWSE,
	SizeNESW,
	SizeWE,
	SizeNS,
	SizeAll,
	No,
	Hand,
	NumSystemCursors
}


Scancode :: enum i32 {
	Unknown = 0,

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

	// Number row
	Nr1 = 30,
	Nr2 = 31,
	Nr3 = 32,
	Nr4 = 33,
	Nr5 = 34,
	Nr6 = 35,
	Nr7 = 36,
	Nr8 = 37,
	Nr9 = 38,
	Nr0 = 39,

	Return = 40,
	Escape = 41,
	Backspace = 42,
	Tab = 43,
	Space = 44,

	Minus = 45,
	Equals = 46,
	Leftbracket = 47,
	Rightbracket = 48,
	Backslash = 49,
	Nonushash = 50, // ???
	Semicolon = 51,
	Apostrophe = 52,
	Grave = 53,
	Comma = 54,
	Period = 55,
	Slash = 56,

	CapsLock = 57,

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

	PrintScreen = 70,
	ScrollLock = 71,
	Pause = 72,
	Insert = 73,
	Home = 74,
	PageUp = 75,
	Delete = 76,
	End = 77,
	PageDown = 78,
	Right = 79,
	Left = 80,
	Down = 81,
	Up = 82,

	NumLockClear = 83,
	KpDivide = 84,
	KpMultiply = 85,
	KpMinus = 86,
	KpPlus = 87,
	KpEnter = 88,
	Kp1 = 89,
	Kp2 = 90,
	Kp3 = 91,
	Kp4 = 92,
	Kp5 = 93,
	Kp6 = 94,
	Kp7 = 95,
	Kp8 = 96,
	Kp9 = 97,
	Kp0 = 98,
	KpPeriod = 99,

	NonUSBackslash = 100,
	Application = 101,
	Power = 102,
	KpEquals = 103,
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
	Execute = 116,
	Help = 117,
	Menu = 118,
	Select = 119,
	Stop = 120,
	Again = 121,
	Undo = 122,
	Cut = 123,
	Copy = 124,
	Paste = 125,
	Find = 126,
	Mute = 127,
	VolumeUp = 128,
	VolumeDown = 129,
	KpComma = 133,
	KpEqualsAS400 = 134,

	International1 = 135,
	International2 = 136,
	International3 = 137,
	International4 = 138,
	International5 = 139,
	International6 = 140,
	International7 = 141,
	International8 = 142,
	International9 = 143,
	Lang1 = 144,
	Lang2 = 145,
	Lang3 = 146,
	Lang4 = 147,
	Lang5 = 148,
	Lang6 = 149,
	Lang7 = 150,
	Lang8 = 151,
	Lang9 = 152,

	AltErase = 153,
	SysReq = 154,
	Cancel = 155,
	Clear = 156,
	Prior = 157,
	Return2 = 158,
	Separator = 159,
	Out = 160,
	Oper = 161,
	ClearAgain = 162,
	CrSel = 163,
	ExSel = 164,

	Kp00 = 176,
	Kp000 = 177,
	ThousandsSeparator = 178,
	DecimalSeparator = 179,
	CurrencyUnit = 180,
	CurrencySubUnit = 181,
	KpLeftParen = 182,
	KpRightParen = 183,
	KpLeftBrace = 184,
	KpRightBrace = 185,
	KpTab = 186,
	KpBackspace = 187,
	KpA = 188,
	KpB = 189,
	KpC = 190,
	KpD = 191,
	KpE = 192,
	KpF = 193,
	KpXor = 194,
	KpPower = 195,
	KpPercent = 196,
	KpLess = 197,
	KpGreater = 198,
	KpAmpersand = 199,
	KpDblAmpersand = 200,
	KpVerticalBar = 201,
	KpDblVerticalBar = 202,
	KpColon = 203,
	KpHash = 204,
	KpSpace = 205,
	KpAt = 206,
	KpExclam = 207,
	KpMemStore = 208,
	KpMemRecall = 209,
	KpMemClear = 210,
	KpMemAdd = 211,
	KpMemSubtract = 212,
	KpMemMultiply = 213,
	KpMemDivide = 214,
	KpPlusMinus = 215,
	KpClear = 216,
	KpClearEntry = 217,
	KpBinary = 218,
	KpOctal = 219,
	KpDecimal = 220,
	KpHexadecimal = 221,

	LCtrl = 224,
	LShift = 225,
	LAlt = 226,
	LGui = 227,
	RCtrl = 228,
	RShift = 229,
	RAlt = 230,
	RGui = 231,

	Mode = 257,

	AudioNext = 258,
	AudioPrev = 259,
	AudioStop = 260,
	AudioPlay = 261,
	AudioMute = 262,
	MediaSelect = 263,
	WWW = 264,
	Mail = 265,
	Calculator = 266,
	Computer = 267,
	AcSearch = 268,
	AcHome = 269,
	AcBack = 270,
	AcForward = 271,
	AcStop = 272,
	AcRefresh = 273,
	AcBookmarks = 274,

	BrightnessDown = 275,
	BrightnessUp = 276,
	DisplaySwitch = 277,
	KbDillumToggle = 278,
	KbDillumDown = 279,
	KbDillumUp = 280,
	Eject = 281,
	Sleep = 282,

	App1 = 283,
	App2 = 284,

	NumScancodes = 512
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

SDLK_CAPSLOCK :: Scancode.CapsLock | SDLK_SCANCODE_MASK;

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

SDLK_PRINTSCREEN :: Scancode.PrintScreen | SDLK_SCANCODE_MASK;
SDLK_SCROLLLOCK :: Scancode.ScrollLock | SDLK_SCANCODE_MASK;
SDLK_PAUSE :: Scancode.Pause | SDLK_SCANCODE_MASK;
SDLK_INSERT :: Scancode.Insert | SDLK_SCANCODE_MASK;
SDLK_HOME :: Scancode.Home | SDLK_SCANCODE_MASK;
SDLK_PAGEUP :: Scancode.PageUp | SDLK_SCANCODE_MASK;
SDLK_DELETE :: '\177';
SDLK_END :: Scancode.End | SDLK_SCANCODE_MASK;
SDLK_PAGEDOWN :: Scancode.PageDown | SDLK_SCANCODE_MASK;
SDLK_RIGHT :: Scancode.Right | SDLK_SCANCODE_MASK;
SDLK_LEFT :: Scancode.Left | SDLK_SCANCODE_MASK;
SDLK_DOWN :: Scancode.Down | SDLK_SCANCODE_MASK;
SDLK_UP :: Scancode.Up | SDLK_SCANCODE_MASK;

SDLK_NUMLOCKCLEAR :: Scancode.NumLockClear | SDLK_SCANCODE_MASK;
SDLK_KP_DIVIDE :: Scancode.KpDivide | SDLK_SCANCODE_MASK;
SDLK_KP_MULTIPLY :: Scancode.KpMultiply | SDLK_SCANCODE_MASK;
SDLK_KP_MINUS :: Scancode.KpMinus | SDLK_SCANCODE_MASK;
SDLK_KP_PLUS :: Scancode.KpPlus | SDLK_SCANCODE_MASK;
SDLK_KP_ENTER :: Scancode.KpEnter | SDLK_SCANCODE_MASK;
SDLK_KP_1 :: Scancode.Kp1 | SDLK_SCANCODE_MASK;
SDLK_KP_2 :: Scancode.Kp2 | SDLK_SCANCODE_MASK;
SDLK_KP_3 :: Scancode.Kp3 | SDLK_SCANCODE_MASK;
SDLK_KP_4 :: Scancode.Kp4 | SDLK_SCANCODE_MASK;
SDLK_KP_5 :: Scancode.Kp5 | SDLK_SCANCODE_MASK;
SDLK_KP_6 :: Scancode.Kp6 | SDLK_SCANCODE_MASK;
SDLK_KP_7 :: Scancode.Kp7 | SDLK_SCANCODE_MASK;
SDLK_KP_8 :: Scancode.Kp8 | SDLK_SCANCODE_MASK;
SDLK_KP_9 :: Scancode.Kp9 | SDLK_SCANCODE_MASK;
SDLK_KP_0 :: Scancode.Kp0 | SDLK_SCANCODE_MASK;
SDLK_KP_PERIOD :: Scancode.KpPeriod | SDLK_SCANCODE_MASK;

SDLK_APPLICATION :: Scancode.Application | SDLK_SCANCODE_MASK;
SDLK_POWER :: Scancode.Power | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALS :: Scancode.KpEquals | SDLK_SCANCODE_MASK;
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
SDLK_EXECUTE :: Scancode.Execute | SDLK_SCANCODE_MASK;
SDLK_HELP :: Scancode.Help | SDLK_SCANCODE_MASK;
SDLK_MENU :: Scancode.Menu | SDLK_SCANCODE_MASK;
SDLK_SELECT :: Scancode.Select | SDLK_SCANCODE_MASK;
SDLK_STOP :: Scancode.Stop | SDLK_SCANCODE_MASK;
SDLK_AGAIN :: Scancode.Again | SDLK_SCANCODE_MASK;
SDLK_UNDO :: Scancode.Undo | SDLK_SCANCODE_MASK;
SDLK_CUT :: Scancode.Cut | SDLK_SCANCODE_MASK;
SDLK_COPY :: Scancode.Copy | SDLK_SCANCODE_MASK;
SDLK_PASTE :: Scancode.Paste | SDLK_SCANCODE_MASK;
SDLK_FIND :: Scancode.Find | SDLK_SCANCODE_MASK;
SDLK_MUTE :: Scancode.Mute | SDLK_SCANCODE_MASK;
SDLK_VOLUMEUP :: Scancode.VolumeUp | SDLK_SCANCODE_MASK;
SDLK_VOLUMEDOWN :: Scancode.VolumeDown | SDLK_SCANCODE_MASK;
SDLK_KP_COMMA :: Scancode.KpComma | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALSAS400 :: Scancode.KpEqualsAS400 | SDLK_SCANCODE_MASK;

SDLK_ALTERASE :: Scancode.AltErase | SDLK_SCANCODE_MASK;
SDLK_SYSREQ :: Scancode.SysReq | SDLK_SCANCODE_MASK;
SDLK_CANCEL :: Scancode.Cancel | SDLK_SCANCODE_MASK;
SDLK_CLEAR :: Scancode.Clear | SDLK_SCANCODE_MASK;
SDLK_PRIOR :: Scancode.Prior | SDLK_SCANCODE_MASK;
SDLK_RETURN2 :: Scancode.Return2 | SDLK_SCANCODE_MASK;
SDLK_SEPARATOR :: Scancode.Separator | SDLK_SCANCODE_MASK;
SDLK_OUT :: Scancode.Out | SDLK_SCANCODE_MASK;
SDLK_OPER :: Scancode.Oper | SDLK_SCANCODE_MASK;
SDLK_CLEARAGAIN :: Scancode.ClearAgain | SDLK_SCANCODE_MASK;
SDLK_CRSEL :: Scancode.CrSel | SDLK_SCANCODE_MASK;
SDLK_EXSEL :: Scancode.ExSel | SDLK_SCANCODE_MASK;

SDLK_KP_00 :: Scancode.Kp00 | SDLK_SCANCODE_MASK;
SDLK_KP_000 :: Scancode.Kp000 | SDLK_SCANCODE_MASK;
SDLK_THOUSANDSSEPARATOR :: Scancode.ThousandsSeparator | SDLK_SCANCODE_MASK;
SDLK_DECIMALSEPARATOR :: Scancode.DecimalSeparator | SDLK_SCANCODE_MASK;
SDLK_CURRENCYUNIT :: Scancode.CurrencyUnit | SDLK_SCANCODE_MASK;
SDLK_CURRENCYSUBUNIT :: Scancode.CurrencySubUnit | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTPAREN :: Scancode.KpLeftParen | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTPAREN :: Scancode.KpRightParen | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTBRACE :: Scancode.KpLeftBrace | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTBRACE :: Scancode.KpRightBrace | SDLK_SCANCODE_MASK;
SDLK_KP_TAB :: Scancode.KpTab | SDLK_SCANCODE_MASK;
SDLK_KP_BACKSPACE :: Scancode.KpBackspace | SDLK_SCANCODE_MASK;
SDLK_KP_A :: Scancode.KpA | SDLK_SCANCODE_MASK;
SDLK_KP_B :: Scancode.KpB | SDLK_SCANCODE_MASK;
SDLK_KP_C :: Scancode.KpC | SDLK_SCANCODE_MASK;
SDLK_KP_D :: Scancode.KpD | SDLK_SCANCODE_MASK;
SDLK_KP_E :: Scancode.KpE | SDLK_SCANCODE_MASK;
SDLK_KP_F :: Scancode.KpF | SDLK_SCANCODE_MASK;
SDLK_KP_XOR :: Scancode.KpXor | SDLK_SCANCODE_MASK;
SDLK_KP_POWER :: Scancode.KpPower | SDLK_SCANCODE_MASK;
SDLK_KP_PERCENT :: Scancode.KpPercent | SDLK_SCANCODE_MASK;
SDLK_KP_LESS :: Scancode.KpLess | SDLK_SCANCODE_MASK;
SDLK_KP_GREATER :: Scancode.KpGreater | SDLK_SCANCODE_MASK;
SDLK_KP_AMPERSAND :: Scancode.KpAmpersand | SDLK_SCANCODE_MASK;
SDLK_KP_DBLAMPERSAND :: Scancode.KpDblAmpersand | SDLK_SCANCODE_MASK;
SDLK_KP_VERTICALBAR :: Scancode.KpVerticalBar | SDLK_SCANCODE_MASK;
SDLK_KP_DBLVERTICALBAR :: Scancode.KpDblVerticalBar | SDLK_SCANCODE_MASK;
SDLK_KP_COLON :: Scancode.KpColon | SDLK_SCANCODE_MASK;
SDLK_KP_HASH :: Scancode.KpHash | SDLK_SCANCODE_MASK;
SDLK_KP_SPACE :: Scancode.KpSpace | SDLK_SCANCODE_MASK;
SDLK_KP_AT :: Scancode.KpAt | SDLK_SCANCODE_MASK;
SDLK_KP_EXCLAM :: Scancode.KpExclam | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSTORE :: Scancode.KpMemStore | SDLK_SCANCODE_MASK;
SDLK_KP_MEMRECALL :: Scancode.KpMemRecall | SDLK_SCANCODE_MASK;
SDLK_KP_MEMCLEAR :: Scancode.KpMemClear | SDLK_SCANCODE_MASK;
SDLK_KP_MEMADD :: Scancode.KpMemAdd | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSUBTRACT :: Scancode.KpMemSubtract | SDLK_SCANCODE_MASK;
SDLK_KP_MEMMULTIPLY :: Scancode.KpMemMultiply | SDLK_SCANCODE_MASK;
SDLK_KP_MEMDIVIDE :: Scancode.KpMemDivide | SDLK_SCANCODE_MASK;
SDLK_KP_PLUSMINUS :: Scancode.KpPlusMinus | SDLK_SCANCODE_MASK;
SDLK_KP_CLEAR :: Scancode.KpClear | SDLK_SCANCODE_MASK;
SDLK_KP_CLEARENTRY :: Scancode.KpClearEntry | SDLK_SCANCODE_MASK;
SDLK_KP_BINARY :: Scancode.KpBinary | SDLK_SCANCODE_MASK;
SDLK_KP_OCTAL :: Scancode.KpOctal | SDLK_SCANCODE_MASK;
SDLK_KP_DECIMAL :: Scancode.KpDecimal | SDLK_SCANCODE_MASK;
SDLK_KP_HEXADECIMAL :: Scancode.KpHexadecimal | SDLK_SCANCODE_MASK;

SDLK_LCTRL :: Scancode.LCtrl | SDLK_SCANCODE_MASK;
SDLK_LSHIFT :: Scancode.LShift | SDLK_SCANCODE_MASK;
SDLK_LALT :: Scancode.LAlt | SDLK_SCANCODE_MASK;
SDLK_LGUI :: Scancode.LGui | SDLK_SCANCODE_MASK;
SDLK_RCTRL :: Scancode.RCtrl | SDLK_SCANCODE_MASK;
SDLK_RSHIFT :: Scancode.RShift | SDLK_SCANCODE_MASK;
SDLK_RALT :: Scancode.RAlt | SDLK_SCANCODE_MASK;
SDLK_RGUI :: Scancode.RGui | SDLK_SCANCODE_MASK;

SDLK_MODE :: Scancode.Mode | SDLK_SCANCODE_MASK;

SDLK_AUDIONEXT :: Scancode.AudioNext | SDLK_SCANCODE_MASK;
SDLK_AUDIOPREV :: Scancode.AudioPrev | SDLK_SCANCODE_MASK;
SDLK_AUDIOSTOP :: Scancode.AudioStop | SDLK_SCANCODE_MASK;
SDLK_AUDIOPLAY :: Scancode.AudioPlay | SDLK_SCANCODE_MASK;
SDLK_AUDIOMUTE :: Scancode.AudioMute | SDLK_SCANCODE_MASK;
SDLK_MEDIASELECT :: Scancode.MediaSelect | SDLK_SCANCODE_MASK;
SDLK_WWW :: Scancode.WWW | SDLK_SCANCODE_MASK;
SDLK_MAIL :: Scancode.Mail | SDLK_SCANCODE_MASK;
SDLK_CALCULATOR :: Scancode.Calculator | SDLK_SCANCODE_MASK;
SDLK_COMPUTER :: Scancode.Computer | SDLK_SCANCODE_MASK;
SDLK_AC_SEARCH :: Scancode.AcSearch | SDLK_SCANCODE_MASK;
SDLK_AC_HOME :: Scancode.AcHome | SDLK_SCANCODE_MASK;
SDLK_AC_BACK :: Scancode.AcBack | SDLK_SCANCODE_MASK;
SDLK_AC_FORWARD :: Scancode.AcForward | SDLK_SCANCODE_MASK;
SDLK_AC_STOP :: Scancode.AcStop | SDLK_SCANCODE_MASK;
SDLK_AC_REFRESH :: Scancode.AcRefresh | SDLK_SCANCODE_MASK;
SDLK_AC_BOOKMARKS :: Scancode.AcBookmarks | SDLK_SCANCODE_MASK;

SDLK_BRIGHTNESSDOWN :: Scancode.BrightnessDown | SDLK_SCANCODE_MASK;
SDLK_BRIGHTNESSUP :: Scancode.BrightnessUp | SDLK_SCANCODE_MASK;
SDLK_DISPLAYSWITCH :: Scancode.DisplaySwitch | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMTOGGLE :: Scancode.KbDillumToggle | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMDOWN :: Scancode.KbDillumDown | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMUP :: Scancode.KbDillumUp | SDLK_SCANCODE_MASK;
SDLK_EJECT :: Scancode.Eject | SDLK_SCANCODE_MASK;
SDLK_SLEEP :: Scancode.Sleep | SDLK_SCANCODE_MASK;

SDLK_SCANCODE_MASK :: 1<<30;

Hat :: enum i32 {
	Centered = 0x00,
	Up = 0x01,
	Right = 0x02,
	Down = 0x04,
	Left = 0x08,
	RightUp = Right | Up,
	RightDown = Right | Down,
	LeftUp = Left | Up,
	LeftDown = Left | Down
}

EventType :: enum i32  {
	FirstEvent = 0,

	Quit = 0x100,

	AppTerminating = 257,
	AppLowMemory = 258,
	AppWillEnterBackground = 259,
	AppDidEnterBackground = 260,
	AppWillEnterForeground = 261,
	AppDidEnterForeground = 262,

	WindowEvent = 0x200,
	SysWmEvent = 513,

	KeyDown = 0x300,
	KeyUp = 769,
	TextEditing = 770,
	TextInput = 771,
	KeyMapChanged = 772,

	MouseMotion = 0x400,
	MouseButtonDown = 1025,
	MouseButtonUp = 1026,
	MouseWheel = 1027,

	JoyAxisMotion = 0x600,
	JoyBallMotion = 1537,
	JoyHatMotion = 1538,
	JoyButtonDown = 1539,
	JoyButtonUp = 1540,
	JoyDeviceAdded = 1541,
	JoyDeviceRemoved = 1542,

	ControllerAxisMotion = 0x650,
	ControllerButtonDown = 1617,
	ControllerButtonUp = 1618,
	ControllerDeviceAdded = 1619,
	ControllerDeviceRemoved = 1620,
	ControllerDeviceRemapped = 1621,

	FingerDown = 0x700,
	FingerUp = 1793,
	FingerMotion = 1794,

	DollarGesture = 0x800,
	DollarRecord = 2049,
	Multigesture = 2050,

	ClipboardUpdate = 0x900,

	DropFile = 0x1000,
	DropText = 4097,
	DropBegin = 4098,
	DropComplete = 4099,

	AudioDeviceAdded = 0x1100,
	AudioDeviceRemoved = 4353,

	RenderTargetsReset = 0x2000,
	RenderDeviceReset = 8193,

	UserEvent = 0x8000,

	LastEvent = 0xFFFF
}

GLContext :: rawptr;

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
GameController :: struct #ordered {};
Cursor :: struct #ordered {};
IDirect3DDevice9 :: struct #ordered {};
RwOps :: struct #ordered {};

// Unsure of these
SysWmInfo :: struct #ordered {};
SysWmMsg :: struct #ordered {};

JoystickId :: i32;
TimerId :: i32;
SpinLock :: i32;
TlsId :: u32;
AudioDeviceId :: u32;
AudioDevice :: u32;
AudioFormat :: u16;
Keycode :: i32;
ThreadId :: u64;
TouchId :: i64;
GestureId :: i64;
FingerId :: i64;

HintCallback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
EventFilter :: proc(userdata: rawptr, param: ^Event) -> i32 #cc_c;
TimerCallback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
AudioCallback :: proc(userdata: rawptr, stream: ^u8, len: i32) #cc_c;
AssertionHandler :: proc(data: ^AssertData, userdata: rawptr) -> AssertState #cc_c;
AudioFilter :: proc(cvt: ^AudioCvt, format: AudioFormat) #cc_c;
ThreadFunction :: proc(data: rawptr) -> i32 #cc_c;
HitTest :: proc(window: ^Window, area: ^Point, data: rawptr) -> HitTestResult #cc_c;
WindowsMessageHook :: proc(userdata: rawptr, hwnd: rawptr, message: u32, wparam: u64, lparam: i64) #cc_c;
LogOutputFunction :: proc(userdata: rawptr, category: i32, priority: LogPriority, message: ^u8) #cc_c;

// Thanks gingerBill for this one!
GameControllerButtonBind :: struct #ordered {
	bind_type: GameControllerBindType;
	value: struct #raw_union {
		button: i32;
		axis:   i32;
		using hat_mask: struct #ordered {
			hat, mask: i32;
		};
	};
};

MessageBoxData :: struct #ordered {
	flags: u32;
	window: ^Window;
	title: ^u8;
	message: ^u8;

	num_buttons: i32;
	buttons: ^MessageBoxButtonData;

	color_scheme: ^MessageBoxColorScheme;
}

MessageBoxButtonData :: struct #ordered {
	flags: u32;
	button_id: i32;
	text: ^u8;
}

MessageBoxColorScheme :: struct #ordered {
	colors: [MessageBoxColorType.Max]MessageBoxColor;
}

MessageBoxColor :: struct #ordered {
	r, g, b: u8;
}

AssertData :: struct #ordered {
	always_ignore: i32;
	trigger_count: u32;
	condition: ^u8;
	filename: ^u8;
	linenum: i32;
	function: ^u8;
	next: ^AssertData;
}

WindowShapeParams :: struct #raw_union {
	binarizationCutoff: u8;
	colorKey: Color;
}

WindowShapeMode :: struct #ordered {
	mode: WindowShapeModes;
	parameters: WindowShapeParams;
}

Point :: struct #ordered {
	x: i32;
	y: i32;
}

RendererInfo :: struct #ordered {
	name: ^u8;
	flags: u32;
	num_texture_formats: u32;
	texture_formats: [16]u32;
	max_texture_width: i32;
	max_texture_height: i32;
}

Version :: struct #ordered {
	major: u8;
	minor: u8;
	patch: u8;
}

DisplayMode :: struct #ordered {
	format: u32;
	w: i32;
	h: i32;
	refresh_rate: i32;
	driverdata: rawptr;
}

Finger :: struct #ordered {
	id: FingerId;
	x: f32;
	y: f32;
	pressure: f32;
}

AudioSpec :: struct #ordered {
	freq: i32;
	format: AudioFormat;
	channels: u8;
	silence: u8;
	samples: u16;
	padding: u16;
	size: u32;
	callback: AudioCallback;
	userdata: rawptr;
}

JoystickGuid :: struct #ordered {
	data: [16]u8;
}

AudioCvt :: struct #ordered {
	needed: i32;
	src_format: AudioFormat;
	dst_format: AudioFormat;
	rate_incr: i64;
	buf: ^u8;
	len: i32;
	len_cvt: i32;
	len_mult: i32;
	len_ratio: i64;
	filters: [10]AudioFilter;
	filter_index: i32;
}

Surface :: struct #ordered {
	flags: u32;
	format: ^PixelFormat;
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

Color :: struct #ordered {
	r: u8;
	g: u8;
	b: u8;
	a: u8;
}

Palette :: struct #ordered {
	ncolors: i32;
	colors: ^Color;
	version: u32;
	refcount: i32;
}

PixelFormat :: struct #ordered {
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
	next: ^PixelFormat;
}

Rect :: struct #ordered {
	x, y: u32;
	w, h: u32;
}

Atomic :: struct #ordered {
	value: i32;
}

Keysym :: struct #ordered {
	scancode: u32;
	sym: i32;
	mod: u16;
	unused: u32;
}

HapticEffect :: struct #raw_union {
	haptic_type: u16;
	constant: HapticConstant;
	periodic: HapticPeriodic;
	condition: HapticCondition;
	ramp: HapticRamp;
	leftright: HapticLeftRight;
	custom: HapticCustom;
}

HapticConstant :: struct {
	haptic_type: u16;
	direction: HapticDirection;

	length: u32;
	delay: u16;

	button: u16;
	interval: u16;

	level: i16;

	attack_length: u16;
	attack_level: u16;
	fade_length: u16;
	fade_level: u16;
}

HapticPeriodic :: struct {
	haptic_type: u16;
	direction: HapticDirection;

	length: u32;
	delay: u16;

	button: u16;
	interval: u16;

	period: u16;
	magnitude: i16;
	offset: i16;
	phase: u16;

	attack_length: u16;
	attack_level: u16;
	fade_length: u16;
	fade_level: u16;
}

HapticDirection :: struct {
	haptic_type: u8;
	dir: [3]i32;
}

HapticCondition :: struct {
	haptic_type: u16;
	direction: HapticDirection;

	length: u32;
	delay: u16;

	button: u16;
	interval: u16;

	right_sat: [3]u16;
	left_sat: [3]u16;
	right_coeff: [3]i16;
	left_coeff: [3]i16;
	deadband: [3]u16;
	center: [3]i16;
}

HapticRamp :: struct {
	haptic_type: u16;
	direction: HapticDirection;

	length: u32;
	delay: u16;

	button: u16;
	interval: u16;

	start: i16;
	end: i16;

	attack_length: u16;
	attack_level: u16;
	fade_length: u16;
	fade_level: u16;
}

HapticLeftRight :: struct {
	haptic_type: u16;

	length: u32;

	large_magnitude: u16;
	small_magnitude: u16;
}

HapticCustom :: struct {
	haptic_type: u16;
	direction: HapticDirection;

	length: u32;
	delay: u16;

	button: u16;
	interval: u16;

	channels: u8;
	period: u16;
	samples: u16;
	data: ^u16;

	attack_length: u16;
	attack_level: u16;
	fade_length: u16;
	fade_level: u16;
}

Event :: struct #raw_union {
	event_type: u32;
	common: CommonEvent;
	window: WindowEvent;
	key: KeyboardEvent;
	edit: TextEditingEvent;
	text: TextInputEvent;
	motion: MouseMotionEvent;
	button: MouseButtonEvent;
	wheel: MouseWheelEvent;
	jaxis: JoyAxisEvent;
	jball: JoyBallEvent;
	jhat: JoyHatEvent;
	jbutton: JoyButtonEvent;
	jdevice: JoyDeviceEvent;
	caxis: ControllerAxisEvent;
	cbutton: ControllerButtonEvent;
	cdevice: ControllerDeviceEvent;
	adevice: AudioDeviceEvent;
	quit: QuitEvent;
	user: UserEvent;
	syswm: SysWmEvent;
	tfinger: TouchFingerEvent;
	mgesture: MultiGestureEvent;
	dgesture: DollarGestureEvent;
	drop: DropEvent;

	padding: [56]u8;
}

CommonEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
}

WindowEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	event: u8;
	padding1: u8;
	padding2: u8;
	padding3: u8;
	data1: i32;
	data2: i32;
}

KeyboardEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	state: u8;
	repeat: u8;
	padding2: u8;
	padding3: u8;
	keysym: Keysym;
}

TEXT_EDITING_EVENT_TEXT_SIZE :: 32;
TextEditingEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	text: [TEXT_EDITING_EVENT_TEXT_SIZE]u8;
	start: i32;
	length: i32;
}


TEXT_INPUT_EVENT_TEXT_SIZE :: 32;
TextInputEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	text: [TEXT_INPUT_EVENT_TEXT_SIZE]u8;
}

MouseMotionEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	which: u32;
	state: u32;
	x: i32;
	y: i32;
	xrel: i32;
	yrel: i32;
}

MouseButtonEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	which: u32;
	button: u8;
	state: u8;
	clicks: u8;
	padding1: u8;
	x: i32;
	y: i32;
}

MouseWheelEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	which: u32;
	x: i32;
	y: i32;
	direction: u32;
}

JoyAxisEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	axis: u8;
	padding1: u8;
	padding2: u8;
	padding3: u8;
	value: i16;
	padding4: u16;
}

JoyBallEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	ball: u8;
	padding1: u8;
	padding2: u8;
	padding3: u8;
	xrel: i16;
	yrel: i16;
}

JoyHatEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	hat: u8;
	value: u8;
	padding1: u8;
	padding2: u8;
}

JoyButtonEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	button: u8;
	state: u8;
	padding1: u8;
	padding2: u8;
}

JoyDeviceEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
}

ControllerAxisEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	axis: u8;
	padding1: u8;
	padding2: u8;
	padding3: u8;
	value: i16;
	padding4: u16;
}

ControllerButtonEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
	button: u8;
	state: u8;
	padding1: u8;
	padding2: u8;
}

ControllerDeviceEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: i32;
}

AudioDeviceEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	which: u32;
	iscapture: u8;
	padding1: u8;
	padding2: u8;
	padding3: u8;
}

TouchFingerEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	touchId: i64;
	fingerId: i64;
	x: f32;
	y: f32;
	dx: f32;
	dy: f32;
	pressure: f32;
}

MultiGestureEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	touchId: i64;
	dTheta: f32;
	dDist: f32;
	x: f32;
	y: f32;
	numFingers: u16;
	padding: u16;
}

DollarGestureEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	touchId: i64;
	gestureId: i64;
	numFingers: u32;
	error: f32;
	x: f32;
	y: f32;
}

DropEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	file: ^u8;
	window_id: u32;
}

QuitEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
}

OSEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
}

UserEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	window_id: u32;
	code: i32;
	data1: ^rawptr;
	data2: ^rawptr;
}

SysWmEvent :: struct #ordered {
	event_type: u32;
	timestamp: u32;
	msg: ^SysWmMsg;
}