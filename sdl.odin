foreign_system_library (
	lib "SDL2.lib";
)

foreign lib {
	// This one is missing from my source of SDL2
	// sdl_dynapi_entry 								:: proc() ->																																											#link_name "SDL_DYNAPI_entry" ---;

	// @SDL_Rw_Ops
	// sdl_write_be16 									:: proc() ->																																											#link_name "SDL_WriteBE16" ---;
	// sdl_write_be32 									:: proc() ->																																											#link_name "SDL_WriteBE32" ---;
	// sdl_write_be64 									:: proc() ->																																											#link_name "SDL_WriteBE64" ---;
	// sdl_write_le16 									:: proc() ->																																											#link_name "SDL_WriteLE16" ---;
	// sdl_write_le32 									:: proc() ->																																											#link_name "SDL_WriteLE32" ---;
	// sdl_write_le64 									:: proc() ->																																											#link_name "SDL_WriteLE64" ---;
	// sdl_write_u8 									:: proc() ->																																											#link_name "SDL_WriteU8" ---;
	// sdl_free_rw 										:: proc() ->																																											#link_name "SDL_FreeRW" ---;
	// sdl_game_controller_add_mappings_from_rw 		:: proc() ->																																											#link_name "SDL_GameControllerAddMappingsFromRW" ---;
	// sdl_load_bmp_rw 									:: proc() ->																																											#link_name "SDL_LoadBMP_RW" ---;
	// sdl_load_dollar_templates 						:: proc() ->																																											#link_name "SDL_LoadDollarTemplates" ---;
	// sdl_load_wav_rw 									:: proc() ->																																											#link_name "SDL_LoadWAV_RW" ---;
	// sdl_rw_from_const_mem 							:: proc() ->																																											#link_name "SDL_RWFromConstMem" ---;
	// sdl_rw_from_fp 									:: proc() ->																																											#link_name "SDL_RWFromFP" ---;
	// sdl_rw_from_file 								:: proc() ->																																											#link_name "SDL_RWFromFile" ---;
	// sdl_rw_from_mem 									:: proc() ->																																											#link_name "SDL_RWFromMem" ---;
	// sdl_read_be16 									:: proc() ->																																											#link_name "SDL_ReadBE16" ---;
	// sdl_read_be32 									:: proc() ->																																											#link_name "SDL_ReadBE32" ---;
	// sdl_read_be64 									:: proc() ->																																											#link_name "SDL_ReadBE64" ---;
	// sdl_read_le16 									:: proc() ->																																											#link_name "SDL_ReadLE16" ---;
	// sdl_read_le32 									:: proc() ->																																											#link_name "SDL_ReadLE32" ---;
	// sdl_read_le64 									:: proc() ->																																											#link_name "SDL_ReadLE64" ---;
	// sdl_read_u8 										:: proc() ->																																											#link_name "SDL_ReadU8" ---;
	// sdl_save_all_dollar_templates 					:: proc() ->																																											#link_name "SDL_SaveAllDollarTemplates" ---;
	// sdl_save_bmp_rw 									:: proc() ->																																											#link_name "SDL_SaveBMP_RW" ---;
	// sdl_save_dollar_template 						:: proc() ->																																											#link_name "SDL_SaveDollarTemplate" ---;
	// sdl_alloc_rw 									:: proc() -> 																																											#link_name "SDL_AllocRW" ---;

	// @SDL_Game_Controller_Button_Bind
	// sdl_game_controller_get_bind_for_axis 			:: proc(game_controller: ^SDL_Game_Controller, axis: SDL_Game_Controller_Axis) -> SDL_Game_Controller_Button_Bind																		#link_name "SDL_GameControllerGetBindForAxis" ---;
	// sdl_game_controller_get_bind_for_button 			:: proc(game_controller: ^SDL_Game_Controller, button: SDL_Game_Controller_Button) -> SDL_Game_Controller_Button_Bind																	#link_name "SDL_GameControllerGetBindForButton" ---;

	// @SDL_Sys_Wm_Info
	// sdl_get_window_wm_info 							:: proc(window: ^SDL_Window, info: ^SDL_Sys_Wm_Info) -> SDL_Bool																														#link_name "SDL_GetWindowWMInfo" ---;

	// The source for this one says you should never call it directly, but rather use the macros provided. Need to port those over still
	//sdl_report_assertion 								:: proc() ->																																											#link_name "SDL_ReportAssertion" ---;

	sdl_add_event_watch 								:: proc(filter: SDL_Event_Filter, userdata: rawptr)																																		#link_name "SDL_AddEventWatch" ---;
	sdl_add_hint_callback  								:: proc(name: ^u8, callback: SDL_Hint_Callback, userdata: rawptr)  																														#link_name "SDL_AddHintCallback" ---;
	sdl_add_timer 										:: proc(interval: u32, callback: SDL_Timer_Callback, param: rawptr) -> SDL_Timer_Id																										#link_name "SDL_AddTimer" ---;
	sdl_alloc_format 									:: proc(pixel_format: u32) -> SDL_Pixel_Format																																			#link_name "SDL_AllocFormat" ---;
	sdl_alloc_palette 									:: proc(ncolors: i32) -> ^SDL_Palette																																					#link_name "SDL_AllocPalette" ---;
	sdl_atomic_add 										:: proc(a: ^SDL_Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicAdd" ---;
	sdl_atomic_cas 										:: proc(a: ^SDL_Atomic, oldval: i32, newval: i32) -> SDL_Bool																															#link_name "SDL_AtomicCAS" ---;
	sdl_atomic_cas_ptr 									:: proc(a: ^rawptr, oldval: rawptr, newval: rawptr) -> SDL_Bool																															#link_name "SDL_AtomicCASPtr" ---;
	sdl_atomic_get 										:: proc(a: ^SDL_Atomic) -> i32																																							#link_name "SDL_AtomicGet" ---;
	sdl_atomic_get_ptr 									:: proc(a: ^rawptr) -> rawptr																																							#link_name "SDL_AtomicGetPtr" ---;
	sdl_atomic_lock 									:: proc(lock: ^SDL_Spin_Lock)																																							#link_name "SDL_AtomicLock" ---;
	sdl_atomic_set 										:: proc(a: ^SDL_Atomic, v: i32) -> i32																																					#link_name "SDL_AtomicSet" ---;
	sdl_atomic_set_ptr 									:: proc(a: ^rawptr, v: rawptr) -> rawptr																																				#link_name "SDL_AtomicSetPtr" ---;
	sdl_atomic_try_lock 								:: proc(lock: ^SDL_Spin_Lock) -> SDL_Bool																																				#link_name "SDL_AtomicTryLock" ---;
	sdl_atomic_unlock 									:: proc(lock: ^SDL_Spin_Lock)																																							#link_name "SDL_AtomicUnlock" ---;
	sdl_audio_init 										:: proc(driver_name: ^u8) -> i32																																						#link_name "SDL_AudioInit" ---;
	sdl_audio_quit 										:: proc()																																												#link_name "SDL_AudioQuit" ---;
	sdl_build_audio_cvt 								:: proc(cvt: ^SDL_Audio_Cvt, src_format: SDL_Audio_Format, src_channels: u8, src_rate: i32, dst_format: SDL_Audio_Format, dst_channels: u8, dst_rate: i32) -> i32						#link_name "SDL_BuildAudioCVT" ---;
	sdl_calculate_gamma_ramp 							:: proc(gamma: f32, ramp: ^u16)																																							#link_name "SDL_CalculateGammaRamp" ---;
	sdl_capture_mouse 									:: proc(enabled: SDL_Bool) -> i32																																						#link_name "SDL_CaptureMouse" ---;
	sdl_clear_error 									:: proc()																																												#link_name "SDL_ClearError" ---;
	sdl_clear_hints 									:: proc()																																												#link_name "SDL_ClearHints" ---;
	sdl_clear_queued_audio 								:: proc(dev: SDL_Audio_Device)																																							#link_name "SDL_ClearQueuedAudio" ---;
	sdl_close_audio 									:: proc()																																												#link_name "SDL_CloseAudio" ---;
	sdl_close_audio_device 								:: proc(dev: SDL_Audio_Device)																																							#link_name "SDL_CloseAudioDevice" ---;
	sdl_cond_broadcast 									:: proc(cond: ^SDL_Cond) -> i32																																							#link_name "SDL_CondBroadcast" ---;
	sdl_cond_signal 									:: proc(cond: ^SDL_Cond) -> i32																																							#link_name "SDL_CondSignal" ---;
	sdl_cond_wait 										:: proc(cond: ^SDL_Cond, mutex: ^SDL_Mutex) -> i32																																		#link_name "SDL_CondWait" ---;
	sdl_cond_wait_timeout 								:: proc(cond: ^SDL_Cond, mutex: ^SDL_Mutex, ms: u32) -> i32																																#link_name "SDL_CondWaitTimeout" ---;
	sdl_convert_audio 									:: proc(cvt: ^SDL_Audio_Cvt) -> i32																																						#link_name "SDL_ConvertAudio" ---;
	sdl_convert_pixels 									:: proc(width: i32, height: i32, src_format: u32, src: rawptr, src_pitch: i32, dst_format: u32, dst: rawptr, dst_pitch: i32) -> i32														#link_name "SDL_ConvertPixels" ---;
	sdl_convert_surface 								:: proc(src: ^SDL_Surface, fmt: ^SDL_Pixel_Format, flags: u32) -> ^SDL_Surface																											#link_name "SDL_ConvertSurface" ---;
	sdl_convert_surface_format 							:: proc(src: ^SDL_Surface, pixel_format: u32, flags: u32) -> ^SDL_Surface																												#link_name "SDL_ConvertSurfaceFormat" ---;
	sdl_create_color_cursor 							:: proc(surface: ^SDL_Surface, hot_x, hot_y: i32) -> ^SDL_Cursor																														#link_name "SDL_CreateColorCursor" ---;
	sdl_create_cond 									:: proc() -> ^SDL_Cond																																									#link_name "SDL_CreateCond" ---;
	sdl_create_cursor 									:: proc(data: ^u8, mask: ^u8, w, h: i32, hot_x, hot_y: i32) -> ^SDL_Cursor																												#link_name "SDL_CreateCursor" ---;
	sdl_create_mutex 									:: proc() -> ^SDL_Mutex																																									#link_name "SDL_CreateMutex" ---;
	sdl_create_rgb_surface 								:: proc(flags: u32, width, height, depth: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^SDL_Surface																							#link_name "SDL_CreateRGBSurface" ---;
	sdl_create_rgb_surface_from 						:: proc(pixels: rawptr, width, height, depth, pitch: i32, Rmask, Gmask, Bmask, Amask: u32) -> ^SDL_Surface																				#link_name "SDL_CreateRGBSurfaceFrom" ---;
	sdl_create_rgb_surface_with_format 					:: proc(flags: u32, width, height, depth: i32, format: u32) -> ^SDL_Surface																												#link_name "SDL_CreateRGBSurfaceWithFormat" ---;
	sdl_create_rgb_surface_with_format_from 			:: proc(pixels: rawptr, width, height, depth, pitch: i32, format: u32) -> ^SDL_Surface																									#link_name "SDL_CreateRGBSurfaceWithFormatFrom" ---;
	sdl_create_renderer 								:: proc(window: ^SDL_Window, index: i32, flags: u32) -> ^SDL_Renderer																													#link_name "SDL_CreateRenderer" ---;
	sdl_create_semaphore 								:: proc(initial_value: u32) -> ^SDL_Sem																																					#link_name "SDL_CreateSemaphore" ---;
	sdl_create_shaped_window 							:: proc(title: ^u8, x, y, w, h: u32, flags: u32) -> ^SDL_Window																															#link_name "SDL_CreateShapedWindow" ---;
	sdl_create_software_renderer 						:: proc(surface: ^SDL_Surface) -> ^SDL_Renderer																																			#link_name "SDL_CreateSoftwareRenderer" ---;
	sdl_create_system_cursor 							:: proc(id: SDL_System_Cursor) -> ^SDL_Cursor																																			#link_name "SDL_CreateSystemCursor" ---;
	sdl_create_texture 									:: proc(renderer: ^SDL_Renderer, format: u32, access: i32, w, h: i32) -> ^SDL_Texture																									#link_name "SDL_CreateTexture" ---;
	sdl_create_texture_from_surface 					:: proc(renderer: ^SDL_Renderer, surface: ^SDL_Surface) -> ^SDL_Texture																													#link_name "SDL_CreateTextureFromSurface" ---;
	sdl_create_thread 									:: proc(fn: SDL_Thread_Function, name: ^u8, data: rawptr) -> ^SDL_Thread 																												#link_name "SDL_CreateThread" ---;
	sdl_create_window 									:: proc(title: ^u8, x, y, w, h: i32, flags: u32) -> ^SDL_Window																															#link_name "SDL_CreateWindow" ---;
	sdl_create_window_and_renderer 						:: proc(width, height: i32, window_flags: u32, window: ^^SDL_Window, renderer: ^^SDL_Renderer) -> i32																					#link_name "SDL_CreateWindowAndRenderer" ---;
	sdl_create_window_from 								:: proc(data: rawptr) -> ^SDL_Window																																					#link_name "SDL_CreateWindowFrom" ---;
	sdl_dxgi_get_output_info 							:: proc(display_index: i32, adapter_index: ^i32, output_index: ^i32) -> SDL_Bool																										#link_name "SDL_DXGIGetOutputInfo" ---;
	sdl_del_event_watch 								:: proc(filter: SDL_Event_Filter, userdata: rawptr)																																		#link_name "SDL_DelEventWatch" ---;
	sdl_del_hint_callback 								:: proc(name: ^u8, callback: SDL_Hint_Callback, userdata: rawptr)																														#link_name "SDL_DelHintCallback" ---;
	sdl_delay 											:: proc(ms: u32)																																										#link_name "SDL_Delay" ---;
	sdl_dequeue_audio 									:: proc(dev: SDL_Audio_Device_Id, data: rawptr, len: u32) -> u32																														#link_name "SDL_DequeueAudio" ---;
	sdl_destroy_cond 									:: proc(cond: ^SDL_Cond)																																								#link_name "SDL_DestroyCond" ---;
	sdl_destroy_mutex 									:: proc(mutex: ^SDL_Mutex)																																								#link_name "SDL_DestroyMutex" ---;
	sdl_destroy_renderer 								:: proc(renderer: ^SDL_Renderer)																																						#link_name "SDL_DestroyRenderer" ---;
	sdl_destroy_semaphore 								:: proc(sem: ^SDL_Sem)																																									#link_name "SDL_DestroySemaphore" ---;
	sdl_destroy_texture 								:: proc(texture: ^SDL_Texture)																																							#link_name "SDL_DestroyTexture" ---;
	sdl_destroy_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_DestroyWindow" ---;
	sdl_detach_thread 									:: proc(thread: ^SDL_Thread)																																							#link_name "SDL_DetachThread" ---;
	sdl_direct_3d9_get_adapter_index 					:: proc(display_index: i32) -> i32																																						#link_name "SDL_Direct3D9GetAdapterIndex" ---;
	sdl_disable_screen_saver 							:: proc()																																												#link_name "SDL_DisableScreenSaver" ---;
	sdl_enable_screen_saver 							:: proc()																																												#link_name "SDL_EnableScreenSaver" ---;
	sdl_enclose_points 									:: proc(points: ^SDL_Point, count: i32, clip: ^SDL_Rect, result: ^SDL_Rect) -> SDL_Bool																									#link_name "SDL_EnclosePoints" ---;
	sdl_error 											:: proc(code: SDL_Error_Code) -> i32																																					#link_name "SDL_Error" ---;
	sdl_event_state 									:: proc(event_type: u32, state: i32) -> u8																																				#link_name "SDL_EventState" ---;
	sdl_fill_rect 										:: proc(dst: ^SDL_Surface, rect: ^SDL_Rect, color: u32) -> i32																															#link_name "SDL_FillRect" ---;
	sdl_fill_rects 										:: proc(dst: ^SDL_Surface, rect: ^SDL_Rect, count: i32, color: u32) -> i32																												#link_name "SDL_FillRects" ---;
	sdl_filter_events 									:: proc(filter: SDL_Event_Filter, userdata: rawptr)																																		#link_name "SDL_FilterEvents" ---;
	sdl_flush_event 									:: proc(event_type: u32)																																								#link_name "SDL_FlushEvent" ---;
	sdl_flush_events 									:: proc(min_type: u32, max_type: u32)																																					#link_name "SDL_FlushEvents" ---;
	sdl_free_cursor 									:: proc(cursor: ^SDL_Cursor)																																							#link_name "SDL_FreeCursor" ---;
	sdl_free_format 									:: proc(format: ^SDL_Pixel_Format)																																						#link_name "SDL_FreeFormat" ---;
	sdl_free_palette 									:: proc(palette: ^SDL_Palette)																																							#link_name "SDL_FreePalette" ---;
	sdl_free_surface 									:: proc(surface: ^SDL_Surface)																																							#link_name "SDL_FreeSurface" ---;
	sdl_free_wav 										:: proc(audio_buf: ^u8)																																									#link_name "SDL_FreeWAV" ---;
	sdl_gl_bind_texture 								:: proc(texture: ^SDL_Texture, texw, texh: ^f32) -> i32																																	#link_name "SDL_GL_BindTexture" ---;
	sdl_gl_create_context 								:: proc(window: ^SDL_Window) -> SDL_GL_Context																																			#link_name "SDL_GL_CreateContext" ---;
	sdl_gl_delete_context 								:: proc(gl_context: SDL_GL_Context)																																						#link_name "SDL_GL_DeleteContext" ---;
	sdl_gl_extension_supported 							:: proc(extension: ^u8) -> SDL_Bool																																						#link_name "SDL_GL_ExtensionSupported" ---;
	sdl_gl_get_attribute 								:: proc(attr: SDL_GL_Attr, value: ^i32) -> i32																																			#link_name "SDL_GL_GetAttribute" ---;
	sdl_gl_get_current_context 							:: proc() -> SDL_GL_Context																																								#link_name "SDL_GL_GetCurrentContext" ---;
	sdl_gl_get_current_window 							:: proc() -> ^SDL_Window																																								#link_name "SDL_GL_GetCurrentWindow" ---;
	sdl_gl_get_drawable_size 							:: proc(window: ^SDL_Window, w, h: ^i32)																																				#link_name "SDL_GL_GetDrawableSize" ---;
	sdl_gl_get_proc_address 							:: proc(name: ^u8) -> rawptr																																							#link_name "SDL_GL_GetProcAddress" ---;
	sdl_gl_get_swap_interval 							:: proc() -> i32																																										#link_name "SDL_GL_GetSwapInterval" ---;
	sdl_gl_load_library 								:: proc(path: ^u8) -> i32																																								#link_name "SDL_GL_LoadLibrary" ---;
	sdl_gl_make_current 								:: proc(window: ^SDL_Window, gl_context: SDL_GL_Context) -> i32																															#link_name "SDL_GL_MakeCurrent" ---;
	sdl_gl_reset_attributes 							:: proc()																																												#link_name "SDL_GL_ResetAttributes" ---;
	sdl_gl_set_attribute 								:: proc(attr: SDL_GL_Attr, value: i32) -> i32																																			#link_name "SDL_GL_SetAttribute" ---;
	sdl_gl_set_swap_interval 							:: proc(interval: i32) -> i32																																							#link_name "SDL_GL_SetSwapInterval" ---;
	sdl_gl_swap_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_GL_SwapWindow" ---;
	sdl_gl_unbind_texture 								:: proc(texture: ^SDL_Texture) -> i32																																					#link_name "SDL_GL_UnbindTexture" ---;
	sdl_gl_unload_library 								:: proc()																																												#link_name "SDL_GL_UnloadLibrary" ---;
	sdl_game_controller_add_mapping 					:: proc(mapping_string: ^u8) -> i32																																						#link_name "SDL_GameControllerAddMapping" ---;
	sdl_game_controller_close 							:: proc(game_controller: ^SDL_Game_Controller)																																			#link_name "SDL_GameControllerClose" ---;
	sdl_game_controller_event_state 					:: proc(state: i32) -> i32																																								#link_name "SDL_GameControllerEventState" ---;
	sdl_game_controller_from_instance_id 				:: proc(joy_id: SDL_Joystick_Id) ->	^SDL_Game_Controller																																#link_name "SDL_GameControllerFromInstanceID" ---;
	sdl_game_controller_get_attached 					:: proc(game_controller: ^SDL_Game_Controller) -> SDL_Bool																																#link_name "SDL_GameControllerGetAttached" ---;
	sdl_game_controller_get_axis 						:: proc(game_controller: ^SDL_Game_Controller, axis: SDL_Game_Controller_Axis) -> i16																									#link_name "SDL_GameControllerGetAxis" ---;
	sdl_game_controller_get_axis_from_string 			:: proc(pch_string: ^u8) -> ^u8																																							#link_name "SDL_GameControllerGetAxisFromString" ---;
	sdl_game_controller_get_button 						:: proc(game_controller: ^SDL_Game_Controller, button: SDL_Game_Controller_Button) -> u8																								#link_name "SDL_GameControllerGetButton" ---;
	sdl_game_controller_get_button_from_string 			:: proc(pch_string: ^u8) -> SDL_Game_Controller_Button																																	#link_name "SDL_GameControllerGetButtonFromString" ---;
	sdl_game_controller_get_joystick 					:: proc(game_controller: ^SDL_Game_Controller) -> ^SDL_Joystick																															#link_name "SDL_GameControllerGetJoystick" ---;
	sdl_game_controller_get_string_for_axis 			:: proc(axis: SDL_Game_Controller_Axis) -> ^u8																																			#link_name "SDL_GameControllerGetStringForAxis" ---;
	sdl_game_controller_get_string_for_button 			:: proc(button: SDL_Game_Controller_Button) -> ^u8																																		#link_name "SDL_GameControllerGetStringForButton" ---;
	sdl_game_controller_mapping 						:: proc(game_controller: ^SDL_Game_Controller) -> ^u8																																	#link_name "SDL_GameControllerMapping" ---;
	sdl_game_controller_mapping_for_guid 				:: proc(guid: SDL_Joystick_Guid) -> ^u8																																					#link_name "SDL_GameControllerMappingForGUID" ---;
	sdl_game_controller_name 							:: proc(game_controller: ^SDL_Game_Controller) -> ^u8																																	#link_name "SDL_GameControllerName" ---;
	sdl_game_controller_name_for_index 					:: proc(joystick_index: i32) -> ^u8																																						#link_name "SDL_GameControllerNameForIndex" ---;
	sdl_game_controller_open 							:: proc(joystick_index: i32) -> ^SDL_Game_Controller																																	#link_name "SDL_GameControllerOpen" ---;
	sdl_game_controller_update 							:: proc()																																												#link_name "SDL_GameControllerUpdate" ---;
	sdl_get_assertion_handler 							:: proc(userdata: ^rawptr) -> SDL_Assertion_Handler																																		#link_name "SDL_GetAssertionHandler" ---;
	sdl_get_assertion_report 							:: proc() -> ^SDL_Assert_Data																																							#link_name "SDL_GetAssertionReport" ---;
	sdl_get_audio_device_name 							:: proc(index: i32, iscapture: i32) -> ^u8																																				#link_name "SDL_GetAudioDeviceName" ---;
	sdl_get_audio_device_status 						:: proc(dev: SDL_Audio_Device_Id) -> SDL_Audio_Status																																	#link_name "SDL_GetAudioDeviceStatus" ---;
	sdl_get_audio_driver 								:: proc(index: i32) -> ^u8																																								#link_name "SDL_GetAudioDriver" ---;
	sdl_get_audio_status 								:: proc() -> SDL_Audio_Status																																							#link_name "SDL_GetAudioStatus" ---;
	sdl_get_base_path 									:: proc() -> ^u8																																										#link_name "SDL_GetBasePath" ---;
	sdl_get_cpu_cache_line_size 						:: proc() -> i32																																										#link_name "SDL_GetCPUCacheLineSize" ---;
	sdl_get_cpu_count 									:: proc() -> i32																																										#link_name "SDL_GetCPUCount" ---;
	sdl_get_clip_rect 									:: proc(surface: ^SDL_Surface, rect: ^SDL_Rect)																																			#link_name "SDL_GetClipRect" ---;
	sdl_get_clipboard_text 								:: proc() -> ^u8																																										#link_name "SDL_GetClipboardText" ---;
	sdl_get_closest_display_mode 						:: proc(display_index: i32, mode: ^SDL_Display_Mode, closest: ^SDL_Display_Mode) -> ^SDL_Display_Mode																					#link_name "SDL_GetClosestDisplayMode" ---;
	sdl_get_color_key 									:: proc(surface: ^SDL_Surface, key: ^u32) -> i32																																		#link_name "SDL_GetColorKey" ---;
	sdl_get_current_audio_driver 						:: proc() -> ^u8																																										#link_name "SDL_GetCurrentAudioDriver" ---;
	sdl_get_current_display_mode 						:: proc(display_index: i32, mode: ^SDL_Display_Mode) -> i32																																#link_name "SDL_GetCurrentDisplayMode" ---;
	sdl_get_current_video_driver 						:: proc() -> ^u8																																										#link_name "SDL_GetCurrentVideoDriver" ---;
	sdl_get_cursor 										:: proc() -> ^SDL_Cursor																																								#link_name "SDL_GetCursor" ---;
	sdl_get_default_assertion_handler 					:: proc() -> SDL_Assertion_Handler																																						#link_name "SDL_GetDefaultAssertionHandler" ---;
	sdl_get_default_cursor 								:: proc() -> ^SDL_Cursor																																								#link_name "SDL_GetDefaultCursor" ---;
	sdl_get_desktop_display_mode 						:: proc(display_index: i32, mode: ^SDL_Display_Mode) -> i32																																#link_name "SDL_GetDesktopDisplayMode" ---;
	sdl_get_display_bounds 								:: proc(display_index: i32, rect: ^SDL_Rect) -> i32																																		#link_name "SDL_GetDisplayBounds" ---;
	sdl_get_display_dpi 								:: proc(display_index: i32, ddpi, hdpi, vdpi: ^f32) -> i32																																#link_name "SDL_GetDisplayDPI" ---;
	sdl_get_display_mode 								:: proc(display_index: i32, mode_index: i32, mode: ^SDL_Display_Mode) -> i32																											#link_name "SDL_GetDisplayMode" ---;
	sdl_get_display_name 								:: proc(display_index: i32) -> ^u8																																						#link_name "SDL_GetDisplayName" ---;
	sdl_get_display_usable_bounds 						:: proc(display_index: i32, rect: ^SDL_Rect) -> i32																																		#link_name "SDL_GetDisplayUsableBounds" ---;
	sdl_get_error 										:: proc() -> ^u8																																										#link_name "SDL_GetError" ---;
	sdl_get_event_filter 								:: proc(filter: ^SDL_Event_Filter, userdata: ^rawptr) -> SDL_Bool																														#link_name "SDL_GetEventFilter" ---;
	sdl_get_global_mouse_state 							:: proc(x, y: ^i32) -> u32																																								#link_name "SDL_GetGlobalMouseState" ---;
	sdl_get_grabbed_window 								:: proc() -> ^SDL_Window																																								#link_name "SDL_GetGrabbedWindow" ---;
	sdl_get_hint 										:: proc(name: ^u8) -> ^u8																																								#link_name "SDL_GetHint" ---;
	sdl_get_hint_boolean 								:: proc(name: ^u8, default_value: SDL_Bool) -> SDL_Bool																																	#link_name "SDL_GetHintBoolean" ---;
	sdl_get_key_from_name 								:: proc(name: ^u8) -> SDL_Keycode																																						#link_name "SDL_GetKeyFromName" ---;
	sdl_get_key_from_scancode 							:: proc(scancode: SDL_Scancode) -> SDL_Keycode																																			#link_name "SDL_GetKeyFromScancode" ---;
	sdl_get_key_name 									:: proc(key: SDL_Keycode) -> ^u8																																						#link_name "SDL_GetKeyName" ---;
	sdl_get_keyboard_focus 								:: proc() -> ^SDL_Window																																								#link_name "SDL_GetKeyboardFocus" ---;
	sdl_get_keyboard_state 								:: proc(numkeys: ^i32) -> ^u8																																							#link_name "SDL_GetKeyboardState" ---;
	sdl_get_mod_state 									:: proc() -> SDL_Keymod																																									#link_name "SDL_GetModState" ---;
	sdl_get_mouse_focus 								:: proc() -> ^SDL_Window																																								#link_name "SDL_GetMouseFocus" ---;
	sdl_get_mouse_state 								:: proc(x, y: ^i32) -> u32																																								#link_name "SDL_GetMouseState" ---;
	sdl_get_num_audio_devices 							:: proc(iscapture: i32) -> i32																																							#link_name "SDL_GetNumAudioDevices" ---;
	sdl_get_num_audio_drivers 							:: proc() -> i32																																										#link_name "SDL_GetNumAudioDrivers" ---;
	sdl_get_num_display_modes 							:: proc(display_index: i32) -> i32																																						#link_name "SDL_GetNumDisplayModes" ---;
	sdl_get_num_render_drivers 							:: proc() -> i32																																										#link_name "SDL_GetNumRenderDrivers" ---;
	sdl_get_num_touch_devices 							:: proc() -> i32																																										#link_name "SDL_GetNumTouchDevices" ---;
	sdl_get_num_touch_fingers 							:: proc(touch_id: SDL_Touch_Id) -> i32																																					#link_name "SDL_GetNumTouchFingers" ---;
	sdl_get_num_video_displays 							:: proc() -> i32																																										#link_name "SDL_GetNumVideoDisplays" ---;
	sdl_get_num_video_drivers 							:: proc() -> i32																																										#link_name "SDL_GetNumVideoDrivers" ---;
	sdl_get_performance_counter 						:: proc() -> u64																																										#link_name "SDL_GetPerformanceCounter" ---;
	sdl_get_performance_frequency 						:: proc() -> u64																																										#link_name "SDL_GetPerformanceFrequency" ---;
	sdl_get_pixel_format_name 							:: proc(format: u32) -> ^u8																																								#link_name "SDL_GetPixelFormatName" ---;
	sdl_get_platform 									:: proc() -> ^u8																																										#link_name "SDL_GetPlatform" ---;
	sdl_get_power_info 									:: proc(secs, pct: ^i32) -> SDL_Power_State																																				#link_name "SDL_GetPowerInfo" ---;
	sdl_get_pref_path 									:: proc(org, app: ^u8) -> ^u8																																							#link_name "SDL_GetPrefPath" ---;
	sdl_get_queued_audio_size 							:: proc(dev: SDL_Audio_Device_Id) -> u32																																				#link_name "SDL_GetQueuedAudioSize" ---;
	sdl_get_rgb 										:: proc(pixel: u32, format: ^SDL_Pixel_Format, r, g, b: ^u8)																															#link_name "SDL_GetRGB" ---;
	sdl_get_rgba 										:: proc(pixel: u32, format: ^SDL_Pixel_Format, r, g, b, a: ^u8)																															#link_name "SDL_GetRGBA" ---;
	sdl_get_relative_mouse_mode 						:: proc() -> SDL_Bool																																									#link_name "SDL_GetRelativeMouseMode" ---;
	sdl_get_relative_mouse_state 						:: proc(x, y: ^i32) -> u32																																								#link_name "SDL_GetRelativeMouseState" ---;
	sdl_get_render_draw_blend_mode 						:: proc(renderer: ^SDL_Renderer, blend_mode: ^SDL_Blend_Mode) -> i32																													#link_name "SDL_GetRenderDrawBlendMode" ---;
	sdl_get_render_draw_color 							:: proc(renderer: ^SDL_Renderer, r, g, b, a: ^u8) -> i32																																#link_name "SDL_GetRenderDrawColor" ---;
	sdl_get_render_driver_info 							:: proc(index: i32, info: ^SDL_Renderer_Info) -> i32																																	#link_name "SDL_GetRenderDriverInfo" ---;
	sdl_get_render_target 								:: proc(renderer: ^SDL_Renderer) -> ^SDL_Texture																																		#link_name "SDL_GetRenderTarget" ---;
	sdl_get_renderer 									:: proc(window: ^SDL_Window) -> ^SDL_Renderer																																			#link_name "SDL_GetRenderer" ---;
	sdl_get_renderer_info 								:: proc(renderer: ^SDL_Renderer, info: ^SDL_Renderer_Info) -> i32																														#link_name "SDL_GetRendererInfo" ---;
	sdl_get_renderer_output_size 						:: proc(renderer: ^SDL_Renderer, w, h: ^i32) -> i32																																		#link_name "SDL_GetRendererOutputSize" ---;
	sdl_get_revision 									:: proc() -> ^u8																																										#link_name "SDL_GetRevision" ---;
	sdl_get_revision_number 							:: proc() -> i32																																										#link_name "SDL_GetRevisionNumber" ---;
	sdl_get_scancode_from_key 							:: proc(key: SDL_Keycode) -> SDL_Scancode																																				#link_name "SDL_GetScancodeFromKey" ---;
	sdl_get_scancode_from_name 							:: proc(name: ^u8) -> SDL_Scancode																																						#link_name "SDL_GetScancodeFromName" ---;
	sdl_get_scancode_name 								:: proc(scancode: SDL_Scancode) -> ^u8																																					#link_name "SDL_GetScancodeName" ---;
	sdl_get_shaped_window_mode 							:: proc(window: ^SDL_Window, shape_mode: ^SDL_Window_Shape_Mode) -> i32																													#link_name "SDL_GetShapedWindowMode" ---;
	sdl_get_surface_alpha_mod 							:: proc(surface: ^SDL_Surface, alpha: ^u8) -> i32																																		#link_name "SDL_GetSurfaceAlphaMod" ---;
	sdl_get_surface_blend_mode 							:: proc(surface: ^SDL_Surface, blend_mode: ^SDL_Blend_Mode) -> i32																														#link_name "SDL_GetSurfaceBlendMode" ---;
	sdl_get_surface_color_mod 							:: proc(surface: ^SDL_Surface, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetSurfaceColorMod" ---;
	sdl_get_system_ram 									:: proc() -> i32																																										#link_name "SDL_GetSystemRAM" ---;
	sdl_get_texture_alpha_mod 							:: proc(texture: ^SDL_Texture, alpha: ^u8) -> i32																																		#link_name "SDL_GetTextureAlphaMod" ---;
	sdl_get_texture_blend_mode 							:: proc(texture: ^SDL_Texture, blend_mode: ^SDL_Blend_Mode) -> i32																														#link_name "SDL_GetTextureBlendMode" ---;
	sdl_get_texture_color_mod 							:: proc(texture: ^SDL_Texture, r, g, b: ^u8) -> i32																																		#link_name "SDL_GetTextureColorMod" ---;
	sdl_get_thread_id 									:: proc(thread: ^SDL_Thread) -> SDL_Thread_Id																																			#link_name "SDL_GetThreadID" ---;
	sdl_get_thread_name 								:: proc(thread: ^SDL_Thread) -> ^u8																																						#link_name "SDL_GetThreadName" ---;
	sdl_get_ticks 										:: proc() -> u32																																										#link_name "SDL_GetTicks" ---;
	sdl_get_touch_device 								:: proc(index: i32) -> SDL_Touch_Id																																						#link_name "SDL_GetTouchDevice" ---;
	sdl_get_touch_finger 								:: proc(touch_id: SDL_Touch_Id, index: i32) -> ^SDL_Finger																																#link_name "SDL_GetTouchFinger" ---;
	sdl_get_version 									:: proc(ver: ^SDL_Version)																																								#link_name "SDL_GetVersion" ---;
	sdl_get_video_driver 								:: proc(index: i32) -> ^u8																																								#link_name "SDL_GetVideoDriver" ---;
	sdl_get_window_borders_size 						:: proc(window: ^SDL_Window, top, left, bottom, right: ^i32) -> i32																														#link_name "SDL_GetWindowBordersSize" ---;
	sdl_get_window_brightness 							:: proc(window: ^SDL_Window) -> f32																																						#link_name "SDL_GetWindowBrightness" ---;
	sdl_get_window_data 								:: proc(window: ^SDL_Window, name: ^u8) -> rawptr																																		#link_name "SDL_GetWindowData" ---;
	sdl_get_window_display_index 						:: proc(window: ^SDL_Window) -> i32																																						#link_name "SDL_GetWindowDisplayIndex" ---;
	sdl_get_window_display_mode 						:: proc(window: ^SDL_Window, mode: ^SDL_Display_Mode) -> i32																															#link_name "SDL_GetWindowDisplayMode" ---;
	sdl_get_window_flags 								:: proc(window: ^SDL_Window) -> u32																																						#link_name "SDL_GetWindowFlags" ---;
	sdl_get_window_fromid 								:: proc(id: u32) -> ^SDL_Window																																							#link_name "SDL_GetWindowFromID" ---;
	sdl_get_window_gammaramp 							:: proc(window: ^SDL_Window, r, g, b: u16) -> i32																																		#link_name "SDL_GetWindowGammaRamp" ---;
	sdl_get_window_grab 								:: proc(window: ^SDL_Window) -> SDL_Bool																																				#link_name "SDL_GetWindowGrab" ---;
	sdl_get_window_id 									:: proc(window: ^SDL_Window) -> u32																																						#link_name "SDL_GetWindowID" ---;
	sdl_get_window_maximum_size 						:: proc(window: ^SDL_Window, w, h: ^i32)																																				#link_name "SDL_GetWindowMaximumSize" ---;
	sdl_get_window_minimum_size 						:: proc(window: ^SDL_Window, w, h: ^i32)																																				#link_name "SDL_GetWindowMinimumSize" ---;
	sdl_get_window_opacity 								:: proc(window: ^SDL_Window, opacity: ^f32) -> i32																																		#link_name "SDL_GetWindowOpacity" ---;
	sdl_get_window_pixel_format 						:: proc(window: ^SDL_Window) -> u32																																						#link_name "SDL_GetWindowPixelFormat" ---;
	sdl_get_window_position 							:: proc(window: ^SDL_Window, x, y: ^i32)																																				#link_name "SDL_GetWindowPosition" ---;
	sdl_get_window_size 								:: proc(window: ^SDL_Window, w, h: ^i32)																																				#link_name "SDL_GetWindowSize" ---;
	sdl_get_window_surface 								:: proc(window: ^SDL_Window) -> ^SDL_Surface																																			#link_name "SDL_GetWindowSurface" ---;
	sdl_get_window_title 								:: proc(window: ^SDL_Window) -> ^u8																																						#link_name "SDL_GetWindowTitle" ---;
	sdl_haptic_close 									:: proc(haptic: ^SDL_Haptic)																																							#link_name "SDL_HapticClose" ---;
	sdl_haptic_destroy_effect 							:: proc(haptic: ^SDL_Haptic, effect: i32)																																				#link_name "SDL_HapticDestroyEffect" ---;
	sdl_haptic_effect_supported 						:: proc(haptic: ^SDL_Haptic, effect: ^SDL_Haptic_Effect) -> i32																															#link_name "SDL_HapticEffectSupported" ---;
	sdl_haptic_get_effect_status 						:: proc(haptic: ^SDL_Haptic, effect: i32) -> i32																																		#link_name "SDL_HapticGetEffectStatus" ---;
	sdl_haptic_index 									:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticIndex" ---;
	sdl_haptic_name 									:: proc(device_index: i32) -> ^u8																																						#link_name "SDL_HapticName" ---;
	sdl_haptic_new_effect 								:: proc(haptic: ^SDL_Haptic, effect: ^SDL_Haptic_Effect) -> i32																															#link_name "SDL_HapticNewEffect" ---;
	sdl_haptic_num_axes 								:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticNumAxes" ---;
	sdl_haptic_num_effects 								:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticNumEffects" ---;
	sdl_haptic_num_effects_playing 						:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticNumEffectsPlaying" ---;
	sdl_haptic_open 									:: proc(device_index: i32) -> ^SDL_Haptic																																				#link_name "SDL_HapticOpen" ---;
	sdl_haptic_open_from_joystick 						:: proc(joystick: ^SDL_Joystick) -> ^SDL_Haptic																																			#link_name "SDL_HapticOpenFromJoystick" ---;
	sdl_haptic_open_from_mouse 							:: proc() -> ^SDL_Haptic																																								#link_name "SDL_HapticOpenFromMouse" ---;
	sdl_haptic_opened 									:: proc(device_index: i32) -> i32																																						#link_name "SDL_HapticOpened" ---;
	sdl_haptic_pause 									:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticPause" ---;
	sdl_haptic_query 									:: proc(haptic: ^SDL_Haptic) ->	u32																																						#link_name "SDL_HapticQuery" ---;
	sdl_haptic_rumble_init 								:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticRumbleInit" ---;
	sdl_haptic_rumble_play 								:: proc(haptic: ^SDL_Haptic, strength: f32, length: u32) -> i32																															#link_name "SDL_HapticRumblePlay" ---;
	sdl_haptic_rumble_stop 								:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticRumbleStop" ---;
	sdl_haptic_rumble_supported 						:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticRumbleSupported" ---;
	sdl_haptic_run_effect 								:: proc(haptic: ^SDL_Haptic, effect: i32, iterations: u32) -> i32																														#link_name "SDL_HapticRunEffect" ---;
	sdl_haptic_set_autocenter 							:: proc(haptic: ^SDL_Haptic, autocenter: i32) -> i32																																	#link_name "SDL_HapticSetAutocenter" ---;
	sdl_haptic_set_gain 								:: proc(haptic: ^SDL_Haptic, gain: i32) -> i32																																			#link_name "SDL_HapticSetGain" ---;
	sdl_haptic_stop_all 								:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticStopAll" ---;
	sdl_haptic_stop_effect 								:: proc(haptic: ^SDL_Haptic, effect: i32) -> i32																																		#link_name "SDL_HapticStopEffect" ---;
	sdl_haptic_unpause 									:: proc(haptic: ^SDL_Haptic) -> i32																																						#link_name "SDL_HapticUnpause" ---;
	sdl_haptic_update_effect 							:: proc(haptic: ^SDL_Haptic, effect: i32, data: ^SDL_Haptic_Effect) -> i32																												#link_name "SDL_HapticUpdateEffect" ---;
	sdl_has_3d_now 										:: proc() -> SDL_Bool																																									#link_name "SDL_Has3DNow" ---;
	sdl_has_avx 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasAVX" ---;
	sdl_has_avx2 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasAVX2" ---;
	sdl_has_alti_vec 									:: proc() -> SDL_Bool																																									#link_name "SDL_HasAltiVec" ---;
	sdl_has_clipboard_text 								:: proc() -> SDL_Bool																																									#link_name "SDL_HasClipboardText" ---;
	sdl_has_event 										:: proc(event_type: u32) -> SDL_Bool																																					#link_name "SDL_HasEvent" ---;
	sdl_has_events 										:: proc(min_type: u32, max_type: u32) -> SDL_Bool																																		#link_name "SDL_HasEvents" ---;
	sdl_has_intersection 								:: proc(a, b: ^SDL_Rect) -> SDL_Bool																																					#link_name "SDL_HasIntersection" ---;
	sdl_has_mmx 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasMMX" ---;
	sdl_has_rdtsc 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasRDTSC" ---;
	sdl_has_sse 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasSSE" ---;
	sdl_has_sse2 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasSSE2" ---;
	sdl_has_sse3 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasSSE3" ---;
	sdl_has_sse41 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasSSE41" ---;
	sdl_has_sse42 										:: proc() -> SDL_Bool																																									#link_name "SDL_HasSSE42" ---;
	sdl_has_screen_keyboard_support 					:: proc() -> SDL_Bool																																									#link_name "SDL_HasScreenKeyboardSupport" ---;
	sdl_hide_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_HideWindow" ---;
	sdl_init 											:: proc(flags: u32) -> i32																																								#link_name "SDL_Init" ---;
	sdl_init_sub_system 								:: proc(flags: u32) -> i32																																								#link_name "SDL_InitSubSystem" ---;
	sdl_intersect_rect 									:: proc(a, b, result: ^SDL_Rect) -> SDL_Bool																																			#link_name "SDL_IntersectRect" ---;
	sdl_intersect_rect_and_line 						:: proc(rect: ^SDL_Rect, x1, y1, x2, y2: ^i32) -> SDL_Bool																																#link_name "SDL_IntersectRectAndLine" ---;
	sdl_is_game_controller 								:: proc(joystick_index: i32) -> SDL_Bool																																				#link_name "SDL_IsGameController" ---;
	sdl_is_screen_keyboard_shown 						:: proc(window: ^SDL_Window) -> SDL_Bool																																				#link_name "SDL_IsScreenKeyboardShown" ---;
	sdl_is_screen_saver_enabled 						:: proc() -> SDL_Bool																																									#link_name "SDL_IsScreenSaverEnabled" ---;
	sdl_is_shaped_window 								:: proc(window: SDL_Window) -> SDL_Bool																																					#link_name "SDL_IsShapedWindow" ---;
	sdl_is_text_input_active 							:: proc() -> SDL_Bool																																									#link_name "SDL_IsTextInputActive" ---;
	sdl_joystick_close 									:: proc(joystick: ^SDL_Joystick)																																						#link_name "SDL_JoystickClose" ---;
	sdl_joystick_current_power_level 					:: proc(joystick: ^SDL_Joystick) -> SDL_Joystick_Power_Level																															#link_name "SDL_JoystickCurrentPowerLevel" ---;
	sdl_joystick_event_state 							:: proc(state: i32) -> i32																																								#link_name "SDL_JoystickEventState" ---;
	sdl_joystick_from_instance_id 						:: proc(joystick_id: ^SDL_Joystick_Id) -> ^SDL_Joystick																																	#link_name "SDL_JoystickFromInstanceID" ---;
	sdl_joystick_get_attached 							:: proc(joystick: ^SDL_Joystick) -> SDL_Bool																																			#link_name "SDL_JoystickGetAttached" ---;
	sdl_joystick_get_axis 								:: proc(joystick: ^SDL_Joystick, axis: i32) -> i16																																		#link_name "SDL_JoystickGetAxis" ---;
	sdl_joystick_get_ball 								:: proc(joystick: ^SDL_Joystick, ball: i32, dx, dy: ^i32) -> i32																														#link_name "SDL_JoystickGetBall" ---;
	sdl_joystick_get_button 							:: proc(joystick: ^SDL_Joystick, button: i32) -> u8																																		#link_name "SDL_JoystickGetButton" ---;
	sdl_joystick_get_device_guid 						:: proc(device_index: i32) -> SDL_Joystick_Guid																																			#link_name "SDL_JoystickGetDeviceGUID" ---;
	sdl_joystick_get_guid 								:: proc(joystick: ^SDL_Joystick) -> SDL_Joystick_Guid																																	#link_name "SDL_JoystickGetGUID" ---;
	sdl_joystick_get_guid_from_string 					:: proc(pch_guid: ^u8) -> SDL_Joystick_Guid																																				#link_name "SDL_JoystickGetGUIDFromString" ---;
	sdl_joystick_get_guid_string 						:: proc(guid: SDL_Joystick_Guid, psz_guid: ^u8, cb_guid: i32)																															#link_name "SDL_JoystickGetGUIDString" ---;
	sdl_joystick_get_hat 								:: proc(joystick: ^SDL_Joystick, hat: i32) -> u8																																		#link_name "SDL_JoystickGetHat" ---;
	sdl_joystick_instance_id 							:: proc(joystick: ^SDL_Joystick) -> SDL_Joystick_Id																																		#link_name "SDL_JoystickInstanceID" ---;
	sdl_joystick_is_haptic 								:: proc(joystick: ^SDL_Joystick) -> i32																																					#link_name "SDL_JoystickIsHaptic" ---;
	sdl_joystick_name 									:: proc(joystick: ^SDL_Joystick) -> ^u8																																					#link_name "SDL_JoystickName" ---;
	sdl_joystick_name_for_index 						:: proc(device_index: i32) -> ^u8																																						#link_name "SDL_JoystickNameForIndex" ---;
	sdl_joystick_num_axes 								:: proc(joystick: ^SDL_Joystick) -> i32																																					#link_name "SDL_JoystickNumAxes" ---;
	sdl_joystick_num_balls 								:: proc(joystick: ^SDL_Joystick) -> i32																																					#link_name "SDL_JoystickNumBalls" ---;
	sdl_joystick_num_buttons 							:: proc(joystick: ^SDL_Joystick) ->	i32																																					#link_name "SDL_JoystickNumButtons" ---;
	sdl_joystick_num_hats 								:: proc(joystick: ^SDL_Joystick) -> i32 																																				#link_name "SDL_JoystickNumHats" ---;
	sdl_joystick_open 									:: proc(device_index: i32) -> ^SDL_Joystick																																				#link_name "SDL_JoystickOpen" ---;
	sdl_joystick_update 								:: proc()																																												#link_name "SDL_JoystickUpdate" ---;
	sdl_load_function 									:: proc(handle: rawptr, name: ^u8) -> rawptr																																			#link_name "SDL_LoadFunction" ---;
	sdl_load_object 									:: proc(sofile: ^u8) -> ^u8																																								#link_name "SDL_LoadObject" ---;
	sdl_lock_audio 										:: proc()																																												#link_name "SDL_LockAudio" ---;
	sdl_lock_audio_device 								:: proc(dev: SDL_Audio_Device_Id)																																						#link_name "SDL_LockAudioDevice" ---;
	sdl_lock_mutex 										:: proc(mutex: ^SDL_Mutex) -> i32																																						#link_name "SDL_LockMutex" ---;
	sdl_lock_surface 									:: proc(surface: ^SDL_Surface) -> i32																																					#link_name "SDL_LockSurface" ---;
	sdl_lock_texture 									:: proc(texture: ^SDL_Texture, rect: ^SDL_Rect, pixels: ^rawptr, pitch: ^i32) -> i32																									#link_name "SDL_LockTexture" ---;

	// These might be wrong?
	sdl_log 											:: proc(fmt: ...^u8)																																									#link_name "SDL_Log" ---;
	sdl_log_critical 									:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogCritical" ---;
	sdl_log_debug 										:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogDebug" ---;
	sdl_log_error 										:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogError" ---;
	sdl_log_get_output_function 						:: proc(callback: ^SDL_Log_Output_Function, userdata: ^rawptr)																															#link_name "SDL_LogGetOutputFunction" ---;
	sdl_log_get_priority 								:: proc(category: i32) -> SDL_Log_Priority																																				#link_name "SDL_LogGetPriority" ---;
	sdl_log_info 										:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogInfo" ---;
	sdl_log_message 									:: proc(category: i32, priority: SDL_Log_Priority, fmt: ...^u8)																															#link_name "SDL_LogMessage" ---;
	sdl_log_message_v 									:: proc(category: i32, priority: SDL_Log_Priority, fmt: ^u8, va_list: ^u8)																												#link_name "SDL_LogMessageV" ---;
	sdl_log_reset_priorities 							:: proc()																																												#link_name "SDL_LogResetPriorities" ---;
	sdl_log_set_all_priority 							:: proc(priority: SDL_Log_Priority)																																						#link_name "SDL_LogSetAllPriority" ---;
	sdl_log_set_output_function 						:: proc(callback: SDL_Log_Output_Function, userdata: rawptr)																															#link_name "SDL_LogSetOutputFunction" ---;
	sdl_log_set_priority 								:: proc(category: i32, priority: SDL_Log_Priority)																																		#link_name "SDL_LogSetPriority" ---;
	sdl_log_verbose 									:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogVerbose" ---;
	sdl_log_warn 										:: proc(category: i32, fmt: ...^u8)																																						#link_name "SDL_LogWarn" ---;

	sdl_lower_blit 										:: proc(src: ^SDL_Surface, srcrect: ^SDL_Rect, dst: ^SDL_Surface, dstrect: ^SDL_Rect) -> i32																							#link_name "SDL_LowerBlit" ---;
	sdl_lower_blit_scaled 								:: proc(src: ^SDL_Surface, srcrect: ^SDL_Rect, dst: ^SDL_Surface, dstrect: ^SDL_Rect) -> i32																							#link_name "SDL_LowerBlitScaled" ---;
	sdl_map_rgb 										:: proc(format: SDL_Pixel_Format, r, g, b: u8) -> u32																																	#link_name "SDL_MapRGB" ---;
	sdl_map_rgba 										:: proc(format: SDL_Pixel_Format, r, g, b, a: u8) -> u32																																#link_name "SDL_MapRGBA" ---;
	sdl_masks_to_pixel_format_enum 						:: proc(bpp: i32, r_mask, g_mask, b_mask, a_mask: u32) -> u32																															#link_name "SDL_MasksToPixelFormatEnum" ---;
	sdl_maximize_window 								:: proc(window: ^SDL_Window)																																							#link_name "SDL_MaximizeWindow" ---;
	sdl_minimize_window 								:: proc(window: ^SDL_Window)																																							#link_name "SDL_MinimizeWindow" ---;
	sdl_mix_audio 										:: proc(dst, src: ^u8, len: u32, volume: i32)																																			#link_name "SDL_MixAudio" ---;
	sdl_mix_audio_format 								:: proc(dst, src: ^u8, format: SDL_Audio_Format, len: u32, volume: i32)																													#link_name "SDL_MixAudioFormat" ---;
	sdl_mouse_is_haptic 								:: proc() -> i32																																										#link_name "SDL_MouseIsHaptic" ---;
	sdl_num_haptics 									:: proc() -> i32																																										#link_name "SDL_NumHaptics" ---;
	sdl_num_joysticks 									:: proc() -> i32																																										#link_name "SDL_NumJoysticks" ---;
	sdl_open_audio 										:: proc(desired, obtained: ^SDL_Audio_Spec) -> i32																																		#link_name "SDL_OpenAudio" ---;
	sdl_open_audio_device 								:: proc(device: ^u8, iscapture: i32, desired, obtained: ^SDL_Audio_Spec, allowed_changed: i32) -> SDL_Audio_Device_Id																	#link_name "SDL_OpenAudioDevice" ---;
	sdl_pause_audio 									:: proc(pause_on: i32)																																									#link_name "SDL_PauseAudio" ---;
	sdl_pause_audio_device 								:: proc(dev: SDL_Audio_Device_Id, pause_on: i32)																																		#link_name "SDL_PauseAudioDevice" ---;
	sdl_peep_events 									:: proc(events: ^SDL_Event, num_events: i32, action: SDL_Event_Action, min_type, max_type: u32) -> i32																					#link_name "SDL_PeepEvents" ---;
	sdl_pixel_format_enum_to_masks 						:: proc(format: u32, bpp: ^i32, r_mask, g_mask, b_mask, a_mask: ^u32) -> SDL_Bool																										#link_name "SDL_PixelFormatEnumToMasks" ---;
	sdl_poll_event 										:: proc(event: ^SDL_Event) -> i32																																						#link_name "SDL_PollEvent" ---;
	sdl_pump_events 									:: proc()																																												#link_name "SDL_PumpEvents" ---;
	sdl_push_event 										:: proc(event: ^SDL_Event) -> i32																																						#link_name "SDL_PushEvent" ---;
	sdl_query_texture 									:: proc(texture: ^SDL_Texture, format: ^u32, access, w, h: ^i32) -> i32																													#link_name "SDL_QueryTexture" ---;
	sdl_queue_audio 									:: proc(dev: SDL_Audio_Device_Id, data: rawptr, len: u32) -> i32																														#link_name "SDL_QueueAudio" ---;
	sdl_quit 											:: proc()																																												#link_name "SDL_Quit" ---;
	sdl_quit_sub_system 								:: proc(flags: u32)																																										#link_name "SDL_QuitSubSystem" ---;
	sdl_raise_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_RaiseWindow" ---;
	sdl_record_gesture 									:: proc(touch_id: SDL_Touch_Id) -> i32																																					#link_name "SDL_RecordGesture" ---;
	sdl_register_app 									:: proc(name: ^u8, style: u32, h_inst: rawptr) -> i32																																	#link_name "SDL_RegisterApp" ---;
	sdl_register_events 								:: proc(num_events: i32) -> u32																																							#link_name "SDL_RegisterEvents" ---;
	sdl_remove_timer 									:: proc(id: SDL_Timer_Id) -> SDL_Bool																																					#link_name "SDL_RemoveTimer" ---;
	sdl_render_clear 									:: proc(renderer: ^SDL_Renderer) -> i32																																					#link_name "SDL_RenderClear" ---;
	sdl_render_copy 									:: proc(renderer: ^SDL_Renderer, texture: ^SDL_Texture, srcrect, dstrect: ^SDL_Rect) -> i32																								#link_name "SDL_RenderCopy" ---;
	sdl_render_copy_ex 									:: proc(renderer: ^SDL_Renderer, texture: ^SDL_Texture, srcrect, dstrect: ^SDL_Rect, angle: f64, center: ^SDL_Point, flip: SDL_Renderer_Flip) -> i32									#link_name "SDL_RenderCopyEx" ---;
	sdl_render_draw_line 								:: proc(renderer: ^SDL_Renderer, x1, y1, x2, y2: i32) -> i32																															#link_name "SDL_RenderDrawLine" ---;
	sdl_render_draw_lines 								:: proc(renderer: ^SDL_Renderer, points: ^SDL_Point, count: i32) -> i32																													#link_name "SDL_RenderDrawLines" ---;
	sdl_render_draw_point 								:: proc(renderer: ^SDL_Renderer, x, y: i32) -> i32																																		#link_name "SDL_RenderDrawPoint" ---;
	sdl_render_draw_points 								:: proc(renderer: ^SDL_Renderer, points: ^SDL_Point, count: i32) -> i32																													#link_name "SDL_RenderDrawPoints" ---;
	sdl_render_draw_rect 								:: proc(renderer: ^SDL_Renderer, rect: ^SDL_Rect) -> i32																																#link_name "SDL_RenderDrawRect" ---;
	sdl_render_draw_rects 								:: proc(renderer: ^SDL_Renderer, rects: ^SDL_Rect, count: i32) -> i32																													#link_name "SDL_RenderDrawRects" ---;
	sdl_render_fill_rect 								:: proc(dst: ^SDL_Surface, rect: ^SDL_Rect, color: u32) -> i32																															#link_name "SDL_RenderFillRect" ---;
	sdl_render_fill_rects 								:: proc(dst: ^SDL_Surface, rect: ^SDL_Rect, count: i32, color: u32) -> i32																												#link_name "SDL_RenderFillRects" ---;
	sdl_render_get_clip_rect 							:: proc(surface: ^SDL_Surface, rect: ^SDL_Rect)																																			#link_name "SDL_RenderGetClipRect" ---;
	sdl_render_get_d3d9_device 							:: proc(renderer: ^SDL_Renderer) ->	^IDirect3D_Device_9																																	#link_name "SDL_RenderGetD3D9Device" ---;
	sdl_render_get_integer_scale 						:: proc(renderer: ^SDL_Renderer) -> SDL_Bool																																			#link_name "SDL_RenderGetIntegerScale" ---;
	sdl_render_get_logical_size 						:: proc(renderer: ^SDL_Renderer, w, h: ^i32)																																			#link_name "SDL_RenderGetLogicalSize" ---;
	sdl_render_get_scale 								:: proc(renderer: ^SDL_Renderer, scale_x, scale_y: ^f32)																																#link_name "SDL_RenderGetScale" ---;
	sdl_render_get_viewport 							:: proc(renderer: ^SDL_Renderer, rect: ^SDL_Rect)																																		#link_name "SDL_RenderGetViewport" ---;
	sdl_render_is_clip_enabled 							:: proc(renderer: ^SDL_Renderer) -> SDL_Bool																																			#link_name "SDL_RenderIsClipEnabled" ---;
	sdl_render_present 									:: proc(renderer: ^SDL_Renderer)																																						#link_name "SDL_RenderPresent" ---;
	sdl_render_read_pixels 								:: proc(renderer: ^SDL_Renderer, rect: ^SDL_Rect, format: u32, pixels: rawptr, pitch: i32) -> i32																						#link_name "SDL_RenderReadPixels" ---;
	sdl_render_set_clip_rect 							:: proc(surface: ^SDL_Surface, rect: ^SDL_Rect) -> SDL_Bool																																#link_name "SDL_RenderSetClipRect" ---;
	sdl_render_set_integer_scale 						:: proc(renderer: ^SDL_Renderer, enable: SDL_Bool) -> i32																																#link_name "SDL_RenderSetIntegerScale" ---;
	sdl_render_set_logical_size 						:: proc(renderer: ^SDL_Renderer, w, h: i32) -> i32																																		#link_name "SDL_RenderSetLogicalSize" ---;
	sdl_render_set_scale 								:: proc(renderer: ^SDL_Renderer, scale_x, scale_y: f32) -> i32																															#link_name "SDL_RenderSetScale" ---;
	sdl_render_set_viewport 							:: proc(renderer: ^SDL_Renderer, rect: ^SDL_Rect)																																		#link_name "SDL_RenderSetViewport" ---;
	sdl_render_target_supported 						:: proc(renderer: ^SDL_Renderer) -> SDL_Bool																																			#link_name "SDL_RenderTargetSupported" ---;
	sdl_reset_assertion_report 							:: proc()																																												#link_name "SDL_ResetAssertionReport" ---;
	sdl_restore_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_RestoreWindow" ---;
	sdl_sem_post 										:: proc(sem: SDL_Sem) -> i32																																							#link_name "SDL_SemPost" ---;
	sdl_sem_try_wait 									:: proc(sem: SDL_Sem) -> i32																																							#link_name "SDL_SemTryWait" ---;
	sdl_sem_value 										:: proc(sem: SDL_Sem) -> u32																																							#link_name "SDL_SemValue" ---;
	sdl_sem_wait 										:: proc(sem: SDL_Sem) -> i32																																							#link_name "SDL_SemWait" ---;
	sdl_sem_wait_timeout 								:: proc(sem: SDL_Sem, ms: u32) -> i32																																					#link_name "SDL_SemWaitTimeout" ---;
	sdl_set_assertion_handler 							:: proc(handler: SDL_Assertion_Handler, userdata: rawptr)																																#link_name "SDL_SetAssertionHandler" ---;
	sdl_set_clip_rect 									:: proc(surface: ^SDL_Surface, rect: ^SDL_Rect) -> SDL_Bool																																#link_name "SDL_SetClipRect" ---;
	sdl_set_clipboard_text 								:: proc(text: ^u8) -> i32																																								#link_name "SDL_SetClipboardText" ---;
	sdl_set_color_key 									:: proc(surface: ^SDL_Surface, flag: i32, key: u32) -> i32																																#link_name "SDL_SetColorKey" ---;
	sdl_set_cursor 										:: proc(cursor: ^SDL_Cursor)																																							#link_name "SDL_SetCursor" ---;
	sdl_set_error 										:: proc(fmt: ...^u8) -> i32																																								#link_name "SDL_SetError" ---;
	sdl_set_event_filter 								:: proc(filter: SDL_Event_Filter, userdata: rawptr)																																		#link_name "SDL_SetEventFilter" ---;
	sdl_set_hint 										:: proc(name, value: ^u8) -> SDL_Bool																																					#link_name "SDL_SetHint" ---;
	sdl_set_hint_with_priority 							:: proc(name, value: ^u8, priority: SDL_Hint_Priority) -> SDL_Bool																														#link_name "SDL_SetHintWithPriority" ---;
	sdl_set_main_ready 									:: proc()																																												#link_name "SDL_SetMainReady" ---;
	sdl_set_mod_state 									:: proc(modstate: SDL_Keymod)																																							#link_name "SDL_SetModState" ---;
	sdl_set_palette_colors 								:: proc(palette: ^SDL_Palette, colors: ^SDL_Color, firstcolor, ncolors: i32) -> i32																										#link_name "SDL_SetPaletteColors" ---;
	sdl_set_pixel_format_palette 						:: proc(format: ^SDL_Pixel_Format, palette: ^SDL_Palette) -> i32																														#link_name "SDL_SetPixelFormatPalette" ---;
	sdl_set_relative_mouse_mode 						:: proc(enabled: SDL_Bool) -> i32																																						#link_name "SDL_SetRelativeMouseMode" ---;
	sdl_set_render_draw_blend_mode 						:: proc(renderer: ^SDL_Renderer, blend_mode: SDL_Blend_Mode) -> i32																														#link_name "SDL_SetRenderDrawBlendMode" ---;
	sdl_set_render_draw_color 							:: proc(renderer: ^SDL_Renderer, r, g, b, a: u8) -> i32																																	#link_name "SDL_SetRenderDrawColor" ---;
	sdl_set_render_target 								:: proc(renderer: ^SDL_Renderer, texture: ^SDL_Texture) -> i32																															#link_name "SDL_SetRenderTarget" ---;
	sdl_set_surface_alpha_mod 							:: proc(surface: ^SDL_Surface, alpha: u8) -> i32																																		#link_name "SDL_SetSurfaceAlphaMod" ---;
	sdl_set_surface_blend_mode 							:: proc(surface: ^SDL_Surface, blend_mode: SDL_Blend_Mode) -> i32																														#link_name "SDL_SetSurfaceBlendMode" ---;
	sdl_set_surface_color_mod 							:: proc(surface: ^SDL_Surface, r, g, b: u8) -> i32																																		#link_name "SDL_SetSurfaceColorMod" ---;
	sdl_set_surface_palette 							:: proc(surface: ^SDL_Surface, palette: ^SDL_Palette) -> i32																															#link_name "SDL_SetSurfacePalette" ---;
	sdl_set_surface_rle 								:: proc(surface: ^SDL_Surface, flag: i32) -> i32																																		#link_name "SDL_SetSurfaceRLE" ---;
	sdl_set_text_input_rect 							:: proc(rect: ^SDL_Rect)																																								#link_name "SDL_SetTextInputRect" ---;
	sdl_set_texture_alpha_mod 							:: proc(texture: ^SDL_Texture, alpha: u8) -> i32																																		#link_name "SDL_SetTextureAlphaMod" ---;
	sdl_set_texture_blend_mode 							:: proc(texture: ^SDL_Texture, blend_mode: SDL_Blend_Mode) -> i32																														#link_name "SDL_SetTextureBlendMode" ---;
	sdl_set_texture_color_mod 							:: proc(texture: ^SDL_Texture, r, g, b: u8) -> i32																																		#link_name "SDL_SetTextureColorMod" ---;
	sdl_set_thread_priority 							:: proc(priority: SDL_Thread_Priority) -> i32																																			#link_name "SDL_SetThreadPriority" ---;
	sdl_set_window_bordered 							:: proc(window: ^SDL_Window, bordered: SDL_Bool)																																		#link_name "SDL_SetWindowBordered" ---;
	sdl_set_window_brightness 							:: proc(window: ^SDL_Window, brightness: f32) -> i32																																	#link_name "SDL_SetWindowBrightness" ---;
	sdl_set_window_data 								:: proc(window: ^SDL_Window, name: ^u8, userdata: rawptr) -> rawptr																														#link_name "SDL_SetWindowData" ---;
	sdl_set_window_display_mode 						:: proc(window: ^SDL_Window, mode: ^SDL_Display_Mode) -> i32																															#link_name "SDL_SetWindowDisplayMode" ---;
	sdl_set_window_fullscreen 							:: proc(window: ^SDL_Window, flags: u32) -> i32																																			#link_name "SDL_SetWindowFullscreen" ---;
	sdl_set_window_gamma_ramp 							:: proc(window: ^SDL_Window, r, g, b: ^u16) -> i32																																		#link_name "SDL_SetWindowGammaRamp" ---;
	sdl_set_window_grab 								:: proc(window: ^SDL_Window, grabbed: SDL_Bool)																																			#link_name "SDL_SetWindowGrab" ---;
	sdl_set_window_hit_test 							:: proc(window: ^SDL_Window, callback: SDL_Hit_Test, callback_data: rawptr) -> i32																										#link_name "SDL_SetWindowHitTest" ---;
	sdl_set_window_icon 								:: proc(window: ^SDL_Window, icon: ^SDL_Surface)																																		#link_name "SDL_SetWindowIcon" ---;
	sdl_set_window_input_focus 							:: proc(window: ^SDL_Window) -> i32																																						#link_name "SDL_SetWindowInputFocus" ---;
	sdl_set_window_maximum_size 						:: proc(window: ^SDL_Window, w, h: i32)																																					#link_name "SDL_SetWindowMaximumSize" ---;
	sdl_set_window_minimum_size 						:: proc(window: ^SDL_Window, w, h: i32)																																					#link_name "SDL_SetWindowMinimumSize" ---;
	sdl_set_window_modal_for 							:: proc(window: ^SDL_Window, parent_window: ^SDL_Window) -> i32																															#link_name "SDL_SetWindowModalFor" ---;
	sdl_set_window_opacity 								:: proc(window: ^SDL_Window, opacity: f32) -> i32																																		#link_name "SDL_SetWindowOpacity" ---;
	sdl_set_window_position 							:: proc(window: ^SDL_Window, x, y: i32)																																					#link_name "SDL_SetWindowPosition" ---;
	sdl_set_window_resizable 							:: proc(window: ^SDL_Window, resizable: SDL_Bool)																																		#link_name "SDL_SetWindowResizable" ---;
	sdl_set_window_shape 								:: proc(window: ^SDL_Window, shape: ^SDL_Surface, shape_mode: SDL_Window_Shape_Mode) -> i32																								#link_name "SDL_SetWindowShape" ---;
	sdl_set_window_size 								:: proc(window: ^SDL_Window, w, h: i32)																																					#link_name "SDL_SetWindowSize" ---;
	sdl_set_window_title 								:: proc(window: ^SDL_Window, title: ^u8)																																				#link_name "SDL_SetWindowTitle" ---;
	sdl_set_windows_message_hook 						:: proc(callback: SDL_Windows_Message_Hook, userdata: rawptr)																															#link_name "SDL_SetWindowsMessageHook" ---;
	sdl_show_cursor 									:: proc(toggle: i32) -> i32																																								#link_name "SDL_ShowCursor" ---;
	sdl_show_message_box 								:: proc(message_box_data: ^SDL_Message_Box_Data, button_id: ^i32) -> i32																												#link_name "SDL_ShowMessageBox" ---;
	sdl_show_simple_message_box 						:: proc(flags: u32, title, message: ^u8, window: ^SDL_Window) -> i32																													#link_name "SDL_ShowSimpleMessageBox" ---;
	sdl_show_window 									:: proc(window: ^SDL_Window)																																							#link_name "SDL_ShowWindow" ---;
	sdl_soft_stretch 									:: proc(src: ^SDL_Surface, srcrect: ^SDL_Rect, dst: ^SDL_Surface, dstrect: ^SDL_Rect) -> i32																							#link_name "SDL_SoftStretch" ---;
	sdl_start_text_input 								:: proc()																																												#link_name "SDL_StartTextInput" ---;
	sdl_stop_text_input 								:: proc()																																												#link_name "SDL_StopTextInput" ---;
	sdl_tls_create 										:: proc() -> SDL_Tls_Id																																									#link_name "SDL_TLSCreate" ---;
	sdl_tls_get 										:: proc(id: SDL_Tls_Id) -> rawptr																																						#link_name "SDL_TLSGet" ---;
	sdl_tls_set 										:: proc(id: SDL_Tls_Id, value: rawptr, destructor: proc(data: rawptr)) -> i32																											#link_name "SDL_TLSSet" ---;
	sdl_thread_id 										:: proc() -> SDL_Thread_Id																																								#link_name "SDL_ThreadID" ---;
	sdl_try_lock_mutex 									:: proc(mutex: ^SDL_Mutex) -> i32																																						#link_name "SDL_TryLockMutex" ---;
	sdl_union_rect 										:: proc(a, b, result: ^SDL_Rect)																																						#link_name "SDL_UnionRect" ---;
	sdl_unload_object 									:: proc(handle: rawptr)																																									#link_name "SDL_UnloadObject" ---;
	sdl_unlock_audio 									:: proc()																																												#link_name "SDL_UnlockAudio" ---;
	sdl_unlock_audio_device 							:: proc(dev: SDL_Audio_Device_Id)																																						#link_name "SDL_UnlockAudioDevice" ---;
	sdl_unlock_mutex 									:: proc(mutex: ^SDL_Mutex) -> i32																																						#link_name "SDL_UnlockMutex" ---;
	sdl_unlock_surface 									:: proc(surface: ^SDL_Surface)																																							#link_name "SDL_UnlockSurface" ---;
	sdl_unlock_texture 									:: proc(texture: ^SDL_Texture)																																							#link_name "SDL_UnlockTexture" ---;
	sdl_unregister_app 									:: proc()																																												#link_name "SDL_UnregisterApp" ---;
	sdl_update_texture 									:: proc(texture: ^SDL_Texture, rect: ^SDL_Rect, pixels: rawptr, pitch: i32)																												#link_name "SDL_UpdateTexture" ---;
	sdl_update_window_surface 							:: proc(window: ^SDL_Window) -> i32																																						#link_name "SDL_UpdateWindowSurface" ---;
	sdl_update_window_surface_rects 					:: proc(window: ^SDL_Window, rects: ^SDL_Rect, num_rects: i32) -> i32																													#link_name "SDL_UpdateWindowSurfaceRects" ---;
	sdl_update_yuv_texture 								:: proc(texture: ^SDL_Texture, rect: ^SDL_Rect, y_plane: ^u8, y_pitch: i32, u_plane: ^u8, u_pitch: i32, v_plane: ^u8, v_pitch: i32) -> i32												#link_name "SDL_UpdateYUVTexture" ---;
	sdl_upper_blit 										:: proc(src: ^SDL_Surface, srcrect: ^SDL_Rect, dst: ^SDL_Surface, dstrect: ^SDL_Rect) -> i32																							#link_name "SDL_UpperBlit" ---;
	sdl_upper_blit_scaled 								:: proc(src: ^SDL_Surface, srcrect: ^SDL_Rect, dst: ^SDL_Surface, dstrect: ^SDL_Rect) -> i32																							#link_name "SDL_UpperBlitScaled" ---;
	sdl_video_init 										:: proc(driver_name: ^u8) -> i32																																						#link_name "SDL_VideoInit" ---;
	sdl_video_quit 										:: proc()																																												#link_name "SDL_VideoQuit" ---;
	sdl_wait_event 										:: proc(event: ^SDL_Event) -> i32																																						#link_name "SDL_WaitEvent" ---;
	sdl_wait_event_timeout 								:: proc(event: ^SDL_Event, timeout: i32) -> i32																																			#link_name "SDL_WaitEventTimeout" ---;
	sdl_wait_thread 									:: proc(thread: ^SDL_Thread, status: ^i32)																																				#link_name "SDL_WaitThread" ---;
	sdl_warp_mouse_global 								:: proc(x, y: i32) -> i32																																								#link_name "SDL_WarpMouseGlobal" ---;
	sdl_warp_mouse_in_window 							:: proc(window: ^SDL_Window, x, y: i32)																																					#link_name "SDL_WarpMouseInWindow" ---;
	sdl_was_init 										:: proc(flags: u32) -> u32																																								#link_name "SDL_WasInit" ---;

	/* Probably don't need these at all?
	sdl_abs 											:: proc() ->																																											#link_name "SDL_abs" ---;
	sdl_acos 											:: proc() ->																																											#link_name "SDL_acos" ---;
	sdl_asin 											:: proc() ->																																											#link_name "SDL_asin" ---;
	sdl_atan 											:: proc() ->																																											#link_name "SDL_atan" ---;
	sdl_atan2 											:: proc() ->																																											#link_name "SDL_atan2" ---;
	sdl_atof 											:: proc() ->																																											#link_name "SDL_atof" ---;
	sdl_atoi 											:: proc() ->																																											#link_name "SDL_atoi" ---;
	sdl_calloc 											:: proc() ->																																											#link_name "SDL_calloc" ---;
	sdl_ceil 											:: proc() ->																																											#link_name "SDL_ceil" ---;
	sdl_copysign 										:: proc() ->																																											#link_name "SDL_copysign" ---;
	sdl_cos 											:: proc() ->																																											#link_name "SDL_cos" ---;
	sdl_cosf 											:: proc() ->																																											#link_name "SDL_cosf" ---;
	sdl_fabs 											:: proc() ->																																											#link_name "SDL_fabs" ---;
	sdl_floor 											:: proc() ->																																											#link_name "SDL_floor" ---;
	sdl_free 											:: proc() ->																																											#link_name "SDL_free" ---;
	sdl_getenv 											:: proc() ->																																											#link_name "SDL_getenv" ---;
	sdl_iconv 											:: proc() ->																																											#link_name "SDL_iconv" ---;
	sdl_iconvclose 										:: proc() ->																																											#link_name "SDL_iconv_close" ---;
	sdl_iconvopen 										:: proc() ->																																											#link_name "SDL_iconv_open" ---;
	sdl_iconvstring 									:: proc() ->																																											#link_name "SDL_iconv_string" ---;
	sdl_isdigit 										:: proc() ->																																											#link_name "SDL_isdigit" ---;
	sdl_isspace 										:: proc() ->																																											#link_name "SDL_isspace" ---;
	sdl_itoa 											:: proc() ->																																											#link_name "SDL_itoa" ---;
	sdl_lltoa 											:: proc() ->																																											#link_name "SDL_lltoa" ---;
	sdl_log 											:: proc() ->																																											#link_name "SDL_log" ---;
	sdl_ltoa 											:: proc() ->																																											#link_name "SDL_ltoa" ---;
	sdl_malloc 											:: proc() ->																																											#link_name "SDL_malloc" ---;
	sdl_memcmp 											:: proc() ->																																											#link_name "SDL_memcmp" ---;
	sdl_memcpy 											:: proc() ->																																											#link_name "SDL_memcpy" ---;
	sdl_memmove 										:: proc() ->																																											#link_name "SDL_memmove" ---;
	sdl_memset 											:: proc() ->																																											#link_name "SDL_memset" ---;
	sdl_pow 											:: proc() ->																																											#link_name "SDL_pow" ---;
	sdl_qsort 											:: proc() ->																																											#link_name "SDL_qsort" ---;
	sdl_realloc 										:: proc() ->																																											#link_name "SDL_realloc" ---;
	sdl_scalbn 											:: proc() ->																																											#link_name "SDL_scalbn" ---;
	sdl_setenv 											:: proc() ->																																											#link_name "SDL_setenv" ---;
	sdl_sin 											:: proc() ->																																											#link_name "SDL_sin" ---;
	sdl_sinf 											:: proc() ->																																											#link_name "SDL_sinf" ---;
	sdl_snprintf 										:: proc() ->																																											#link_name "SDL_snprintf" ---;
	sdl_sqrt 											:: proc() ->																																											#link_name "SDL_sqrt" ---;
	sdl_sqrtf 											:: proc() ->																																											#link_name "SDL_sqrtf" ---;
	sdl_sscanf 											:: proc() ->																																											#link_name "SDL_sscanf" ---;
	sdl_strcasecmp 										:: proc() ->																																											#link_name "SDL_strcasecmp" ---;
	sdl_strchr 											:: proc() ->																																											#link_name "SDL_strchr" ---;
	sdl_strcmp 											:: proc() ->																																											#link_name "SDL_strcmp" ---;
	sdl_strdup 											:: proc() ->																																											#link_name "SDL_strdup" ---;
	sdl_strlcat 										:: proc() ->																																											#link_name "SDL_strlcat" ---;
	sdl_strlcpy 										:: proc() ->																																											#link_name "SDL_strlcpy" ---;
	sdl_strlen 											:: proc() ->																																											#link_name "SDL_strlen" ---;
	sdl_strlwr 											:: proc() ->																																											#link_name "SDL_strlwr" ---;
	sdl_strncasecmp 									:: proc() ->																																											#link_name "SDL_strncasecmp" ---;
	sdl_strncmp 										:: proc() ->																																											#link_name "SDL_strncmp" ---;
	sdl_strrchr 										:: proc() ->																																											#link_name "SDL_strrchr" ---;
	sdl_strrev 											:: proc() ->																																											#link_name "SDL_strrev" ---;
	sdl_strstr 											:: proc() ->																																											#link_name "SDL_strstr" ---;
	sdl_strtod 											:: proc() ->																																											#link_name "SDL_strtod" ---;
	sdl_strtol 											:: proc() ->																																											#link_name "SDL_strtol" ---;
	sdl_strtoll 										:: proc() ->																																											#link_name "SDL_strtoll" ---;
	sdl_strtoul 										:: proc() ->																																											#link_name "SDL_strtoul" ---;
	sdl_strtoull 										:: proc() ->																																											#link_name "SDL_strtoull" ---;
	sdl_strupr 											:: proc() ->																																											#link_name "SDL_strupr" ---;
	sdl_tan 											:: proc() ->																																											#link_name "SDL_tan" ---;
	sdl_tanf 											:: proc() ->																																											#link_name "SDL_tanf" ---;
	sdl_tolower 										:: proc() ->																																											#link_name "SDL_tolower" ---;
	sdl_toupper 										:: proc() ->																																											#link_name "SDL_toupper" ---;
	sdl_uitoa 											:: proc() ->																																											#link_name "SDL_uitoa" ---;
	sdl_ulltoa 											:: proc() ->																																											#link_name "SDL_ulltoa" ---;
	sdl_ultoa 											:: proc() ->																																											#link_name "SDL_ultoa" ---;
	sdl_utf8strlcpy 									:: proc() ->																																											#link_name "SDL_utf8strlcpy" ---;
	sdl_vsnprintf 										:: proc() ->																																											#link_name "SDL_vsnprintf" ---;
	sdl_vsscanf 										:: proc() ->																																											#link_name "SDL_vsscanf" ---;
	sdl_wcslcat 										:: proc() ->																																											#link_name "SDL_wcslcat" ---;
	sdl_wcslcpy 										:: proc() ->																																											#link_name "SDL_wcslcpy" ---;
	sdl_wcslen 											:: proc() ->																																											#link_name "SDL_wcslen" ---;
	*/
}

SDL_INIT_TIMER :: 0x00000001;
SDL_INIT_AUDIO :: 0x00000010;
SDL_INIT_VIDEO :: 0x00000020;
SDL_INIT_JOYSTICK :: 0x00000200;
SDL_INIT_HAPTIC :: 0x00001000;
SDL_INIT_GAMECONTROLLER :: 0x00002000;
SDL_INIT_EVENTS :: 0x00004000;
SDL_INIT_NOPARACHUTE :: 0x00100000;
SDL_INIT_EVERYTHING :: SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS | SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER;

SDL_WINDOW_FULLSCREEN :: 0x00000001;
SDL_WINDOW_OPENGL :: 0x00000002;
SDL_WINDOW_SHOWN :: 0x00000004;
SDL_WINDOW_HIDDEN :: 0x00000008;
SDL_WINDOW_BORDERLESS :: 0x00000010;
SDL_WINDOW_RESIZABLE :: 0x00000020;
SDL_WINDOW_MINIMIZED :: 0x00000040;
SDL_WINDOW_MAXIMIZED :: 0x00000080;
SDL_WINDOW_INPUT_GRABBED :: 0x00000100;
SDL_WINDOW_INPUT_FOCUS :: 0x00000200;
SDL_WINDOW_MOUSE_FOCUS :: 0x00000400;
SDL_WINDOW_FULLSCREEN_DESKTOP :: SDL_WINDOW_FULLSCREEN | 0x00001000;
SDL_WINDOW_FOREIGN :: 0x00000800;
SDL_WINDOW_ALLOW_HIGHDPI :: 0x00002000;
SDL_WINDOW_MOUSE_CAPTURE :: 0x00004000;
SDL_WINDOW_ALWAYS_ON_TOP :: 0x00008000;
SDL_WINDOW_SKIP_TASKBAR :: 0x00010000;
SDL_WINDOW_UTILITY :: 0x00020000;
SDL_WINDOW_TOOLTIP :: 0x00040000;
SDL_WINDOW_POPUP_MENU :: 0x00080000;
SDL_WINDOW_VULKAN :: 0x00100000;

SDL_WINDOWPOS_UNDEFINED :: 0x1FFF0000;
SDL_WINDOWPOS_CENTERED :: 0x2FFF0000;

SDL_RENDERER_SOFTWARE :: 0x00000001;
SDL_RENDERER_ACCELERATED :: 0x00000002;
SDL_RENDERER_PRESENTVSYNC :: 0x00000004;
SDL_RENDERER_TARGETTEXTURE :: 0x00000008;

SDL_Blend_Mode :: enum i32
{
    SDL_BLENDMODE_NONE = 0x00000000,     /**< no blending
                                              dstRGBA = srcRGBA */
    SDL_BLENDMODE_BLEND = 0x00000001,    /**< alpha blending
                                              dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA))
                                              dstA = srcA + (dstA * (1-srcA)) */
    SDL_BLENDMODE_ADD = 0x00000002,      /**< additive blending
                                              dstRGB = (srcRGB * srcA) + dstRGB
                                              dstA = dstA */
    SDL_BLENDMODE_MOD = 0x00000004       /**< color modulate
                                              dstRGB = srcRGB * dstRGB
                                              dstA = dstA */
}

SDL_Error_Code :: enum i32
{
    SDL_ENOMEM,
    SDL_EFREAD,
    SDL_EFWRITE,
    SDL_EFSEEK,
    SDL_UNSUPPORTED,
    SDL_LASTERROR
}

SDL_Joystick_Power_Level :: enum i32
{
    SDL_JOYSTICK_POWER_UNKNOWN = -1,
    SDL_JOYSTICK_POWER_EMPTY,
    SDL_JOYSTICK_POWER_LOW,
    SDL_JOYSTICK_POWER_MEDIUM,
    SDL_JOYSTICK_POWER_FULL,
    SDL_JOYSTICK_POWER_WIRED,
    SDL_JOYSTICK_POWER_MAX
}

SDL_Hint_Priority :: enum i32
{
    SDL_HINT_DEFAULT,
    SDL_HINT_NORMAL,
    SDL_HINT_OVERRIDE
}

SDL_Thread_Priority :: enum i32
{
    SDL_THREAD_PRIORITY_LOW,
    SDL_THREAD_PRIORITY_NORMAL,
    SDL_THREAD_PRIORITY_HIGH
}

SDL_Assert_State :: enum i32
{
    SDL_ASSERTION_RETRY,  /**< Retry the assert immediately. */
    SDL_ASSERTION_BREAK,  /**< Make the debugger trigger a breakpoint. */
    SDL_ASSERTION_ABORT,  /**< Terminate the program. */
    SDL_ASSERTION_IGNORE,  /**< Ignore the assert. */
    SDL_ASSERTION_ALWAYS_IGNORE  /**< Ignore the assert from now on. */
}

SDL_Event_Action :: enum i32
{
    SDL_ADDEVENT,
    SDL_PEEKEVENT,
    SDL_GETEVENT
}

SDL_Hit_Test_Result :: enum i32
{
    SDL_HITTEST_NORMAL,  /**< Region is normal. No special properties. */
    SDL_HITTEST_DRAGGABLE,  /**< Region can drag entire window. */
    SDL_HITTEST_RESIZE_TOPLEFT,
    SDL_HITTEST_RESIZE_TOP,
    SDL_HITTEST_RESIZE_TOPRIGHT,
    SDL_HITTEST_RESIZE_RIGHT,
    SDL_HITTEST_RESIZE_BOTTOMRIGHT,
    SDL_HITTEST_RESIZE_BOTTOM,
    SDL_HITTEST_RESIZE_BOTTOMLEFT,
    SDL_HITTEST_RESIZE_LEFT
}

SDL_Bool :: enum i32
{
    SDL_False,
    SDL_True
}

Window_Shape_Mode :: enum i32
{
    /** \brief The default mode, a binarized alpha cutoff of 1. */
    ShapeModeDefault,
    /** \brief A binarized alpha cutoff with a given integer value. */
    ShapeModeBinarizeAlpha,
    /** \brief A binarized alpha cutoff with a given integer value, but with the opposite comparison. */
    ShapeModeReverseBinarizeAlpha,
    /** \brief A color key is applied. */
    ShapeModeColorKey
}

SDL_Keymod :: enum i32
{
    KMOD_NONE = 0x0000,
    KMOD_LSHIFT = 0x0001,
    KMOD_RSHIFT = 0x0002,
    KMOD_LCTRL = 0x0040,
    KMOD_RCTRL = 0x0080,
    KMOD_LALT = 0x0100,
    KMOD_RALT = 0x0200,
    KMOD_LGUI = 0x0400,
    KMOD_RGUI = 0x0800,
    KMOD_NUM = 0x1000,
    KMOD_CAPS = 0x2000,
    KMOD_MODE = 0x4000,
    KMOD_RESERVED = 0x8000
}

SDL_Renderer_Flip :: enum i32
{
    SDL_FLIP_NONE = 0x00000000,     /**< Do not flip */
    SDL_FLIP_HORIZONTAL = 0x00000001,    /**< flip horizontally */
    SDL_FLIP_VERTICAL = 0x00000002     /**< flip vertically */
}

SDL_GL_Attr :: enum i32
{
    SDL_GL_RED_SIZE,
    SDL_GL_GREEN_SIZE,
    SDL_GL_BLUE_SIZE,
    SDL_GL_ALPHA_SIZE,
    SDL_GL_BUFFER_SIZE,
    SDL_GL_DOUBLEBUFFER,
    SDL_GL_DEPTH_SIZE,
    SDL_GL_STENCIL_SIZE,
    SDL_GL_ACCUM_RED_SIZE,
    SDL_GL_ACCUM_GREEN_SIZE,
    SDL_GL_ACCUM_BLUE_SIZE,
    SDL_GL_ACCUM_ALPHA_SIZE,
    SDL_GL_STEREO,
    SDL_GL_MULTISAMPLEBUFFERS,
    SDL_GL_MULTISAMPLESAMPLES,
    SDL_GL_ACCELERATED_VISUAL,
    SDL_GL_RETAINED_BACKING,
    SDL_GL_CONTEXT_MAJOR_VERSION,
    SDL_GL_CONTEXT_MINOR_VERSION,
    SDL_GL_CONTEXT_EGL,
    SDL_GL_CONTEXT_FLAGS,
    SDL_GL_CONTEXT_PROFILE_MASK,
    SDL_GL_SHARE_WITH_CURRENT_CONTEXT,
    SDL_GL_FRAMEBUFFER_SRGB_CAPABLE,
    SDL_GL_CONTEXT_RELEASE_BEHAVIOR
}

SDL_Message_Box_Color_Type :: enum i32
{
    SDL_MESSAGEBOX_COLOR_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_TEXT,
    SDL_MESSAGEBOX_COLOR_BUTTON_BORDER,
    SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND,
    SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED,
    SDL_MESSAGEBOX_COLOR_MAX
}

SDL_Audio_Status :: enum i32
{
    SDL_AUDIO_STOPPED = 0,
    SDL_AUDIO_PLAYING,
    SDL_AUDIO_PAUSED
}

SDL_Power_State :: enum i32
{
    SDL_POWERSTATE_UNKNOWN,      /**< cannot determine power status */
    SDL_POWERSTATE_ON_BATTERY,   /**< Not plugged in, running on the battery */
    SDL_POWERSTATE_NO_BATTERY,   /**< Plugged in, no battery available */
    SDL_POWERSTATE_CHARGING,     /**< Plugged in, charging battery */
    SDL_POWERSTATE_CHARGED       /**< Plugged in, battery charged */
}

SDL_Log_Priority :: enum i32
{
    SDL_LOG_PRIORITY_VERBOSE = 1,
    SDL_LOG_PRIORITY_DEBUG,
    SDL_LOG_PRIORITY_INFO,
    SDL_LOG_PRIORITY_WARN,
    SDL_LOG_PRIORITY_ERROR,
    SDL_LOG_PRIORITY_CRITICAL,
    SDL_NUM_LOG_PRIORITIES
}


// Input stuff


SDL_Game_Controller_Button :: enum i32
{
    SDL_CONTROLLER_BUTTON_INVALID = -1,
    SDL_CONTROLLER_BUTTON_A,
    SDL_CONTROLLER_BUTTON_B,
    SDL_CONTROLLER_BUTTON_X,
    SDL_CONTROLLER_BUTTON_Y,
    SDL_CONTROLLER_BUTTON_BACK,
    SDL_CONTROLLER_BUTTON_GUIDE,
    SDL_CONTROLLER_BUTTON_START,
    SDL_CONTROLLER_BUTTON_LEFTSTICK,
    SDL_CONTROLLER_BUTTON_RIGHTSTICK,
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER,
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER,
    SDL_CONTROLLER_BUTTON_DPAD_UP,
    SDL_CONTROLLER_BUTTON_DPAD_DOWN,
    SDL_CONTROLLER_BUTTON_DPAD_LEFT,
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT,
    SDL_CONTROLLER_BUTTON_MAX
}

SDL_Game_Controller_Axis :: enum i32
{
    SDL_CONTROLLER_AXIS_INVALID = -1,
    SDL_CONTROLLER_AXIS_LEFTX,
    SDL_CONTROLLER_AXIS_LEFTY,
    SDL_CONTROLLER_AXIS_RIGHTX,
    SDL_CONTROLLER_AXIS_RIGHTY,
    SDL_CONTROLLER_AXIS_TRIGGERLEFT,
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT,
    SDL_CONTROLLER_AXIS_MAX
}

SDL_Game_Controller_Bind_Type :: enum i32
{
    SDL_CONTROLLER_BINDTYPE_NONE = 0,
    SDL_CONTROLLER_BINDTYPE_BUTTON,
    SDL_CONTROLLER_BINDTYPE_AXIS,
    SDL_CONTROLLER_BINDTYPE_HAT
}

SDL_System_Cursor :: enum i32
{
    SDL_SYSTEM_CURSOR_ARROW,     /**< Arrow */
    SDL_SYSTEM_CURSOR_IBEAM,     /**< I-beam */
    SDL_SYSTEM_CURSOR_WAIT,      /**< Wait */
    SDL_SYSTEM_CURSOR_CROSSHAIR, /**< Crosshair */
    SDL_SYSTEM_CURSOR_WAITARROW, /**< Small wait cursor (or Wait if not available) */
    SDL_SYSTEM_CURSOR_SIZENWSE,  /**< Double arrow pointing northwest and southeast */
    SDL_SYSTEM_CURSOR_SIZENESW,  /**< Double arrow pointing northeast and southwest */
    SDL_SYSTEM_CURSOR_SIZEWE,    /**< Double arrow pointing west and east */
    SDL_SYSTEM_CURSOR_SIZENS,    /**< Double arrow pointing north and south */
    SDL_SYSTEM_CURSOR_SIZEALL,   /**< Four pointed arrow pointing north, south, east, and west */
    SDL_SYSTEM_CURSOR_NO,        /**< Slashed circle or crossbones */
    SDL_SYSTEM_CURSOR_HAND,      /**< Hand */
    SDL_NUM_SYSTEM_CURSORS
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

SDLK_CAPSLOCK :: SDL_Scancode.SDL_SCANCODE_CAPSLOCK | SDLK_SCANCODE_MASK;

SDLK_F1 :: SDL_Scancode.SDL_SCANCODE_F1 | SDLK_SCANCODE_MASK;
SDLK_F2 :: SDL_Scancode.SDL_SCANCODE_F2 | SDLK_SCANCODE_MASK;
SDLK_F3 :: SDL_Scancode.SDL_SCANCODE_F3 | SDLK_SCANCODE_MASK;
SDLK_F4 :: SDL_Scancode.SDL_SCANCODE_F4 | SDLK_SCANCODE_MASK;
SDLK_F5 :: SDL_Scancode.SDL_SCANCODE_F5 | SDLK_SCANCODE_MASK;
SDLK_F6 :: SDL_Scancode.SDL_SCANCODE_F6 | SDLK_SCANCODE_MASK;
SDLK_F7 :: SDL_Scancode.SDL_SCANCODE_F7 | SDLK_SCANCODE_MASK;
SDLK_F8 :: SDL_Scancode.SDL_SCANCODE_F8 | SDLK_SCANCODE_MASK;
SDLK_F9 :: SDL_Scancode.SDL_SCANCODE_F9 | SDLK_SCANCODE_MASK;
SDLK_F10 :: SDL_Scancode.SDL_SCANCODE_F10 | SDLK_SCANCODE_MASK;
SDLK_F11 :: SDL_Scancode.SDL_SCANCODE_F11 | SDLK_SCANCODE_MASK;
SDLK_F12 :: SDL_Scancode.SDL_SCANCODE_F12 | SDLK_SCANCODE_MASK;

SDLK_PRINTSCREEN :: SDL_Scancode.SDL_SCANCODE_PRINTSCREEN | SDLK_SCANCODE_MASK;
SDLK_SCROLLLOCK :: SDL_Scancode.SDL_SCANCODE_SCROLLLOCK | SDLK_SCANCODE_MASK;
SDLK_PAUSE :: SDL_Scancode.SDL_SCANCODE_PAUSE | SDLK_SCANCODE_MASK;
SDLK_INSERT :: SDL_Scancode.SDL_SCANCODE_INSERT | SDLK_SCANCODE_MASK;
SDLK_HOME :: SDL_Scancode.SDL_SCANCODE_HOME | SDLK_SCANCODE_MASK;
SDLK_PAGEUP :: SDL_Scancode.SDL_SCANCODE_PAGEUP | SDLK_SCANCODE_MASK;
SDLK_DELETE :: '\177';
SDLK_END :: SDL_Scancode.SDL_SCANCODE_END | SDLK_SCANCODE_MASK;
SDLK_PAGEDOWN :: SDL_Scancode.SDL_SCANCODE_PAGEDOWN | SDLK_SCANCODE_MASK;
SDLK_RIGHT :: SDL_Scancode.SDL_SCANCODE_RIGHT | SDLK_SCANCODE_MASK;
SDLK_LEFT :: SDL_Scancode.SDL_SCANCODE_LEFT | SDLK_SCANCODE_MASK;
SDLK_DOWN :: SDL_Scancode.SDL_SCANCODE_DOWN | SDLK_SCANCODE_MASK;
SDLK_UP :: SDL_Scancode.SDL_SCANCODE_UP | SDLK_SCANCODE_MASK;

SDLK_NUMLOCKCLEAR :: SDL_Scancode.SDL_SCANCODE_NUMLOCKCLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_DIVIDE :: SDL_Scancode.SDL_SCANCODE_KP_DIVIDE | SDLK_SCANCODE_MASK;
SDLK_KP_MULTIPLY :: SDL_Scancode.SDL_SCANCODE_KP_MULTIPLY | SDLK_SCANCODE_MASK;
SDLK_KP_MINUS :: SDL_Scancode.SDL_SCANCODE_KP_MINUS | SDLK_SCANCODE_MASK;
SDLK_KP_PLUS :: SDL_Scancode.SDL_SCANCODE_KP_PLUS | SDLK_SCANCODE_MASK;
SDLK_KP_ENTER :: SDL_Scancode.SDL_SCANCODE_KP_ENTER | SDLK_SCANCODE_MASK;
SDLK_KP_1 :: SDL_Scancode.SDL_SCANCODE_KP_1 | SDLK_SCANCODE_MASK;
SDLK_KP_2 :: SDL_Scancode.SDL_SCANCODE_KP_2 | SDLK_SCANCODE_MASK;
SDLK_KP_3 :: SDL_Scancode.SDL_SCANCODE_KP_3 | SDLK_SCANCODE_MASK;
SDLK_KP_4 :: SDL_Scancode.SDL_SCANCODE_KP_4 | SDLK_SCANCODE_MASK;
SDLK_KP_5 :: SDL_Scancode.SDL_SCANCODE_KP_5 | SDLK_SCANCODE_MASK;
SDLK_KP_6 :: SDL_Scancode.SDL_SCANCODE_KP_6 | SDLK_SCANCODE_MASK;
SDLK_KP_7 :: SDL_Scancode.SDL_SCANCODE_KP_7 | SDLK_SCANCODE_MASK;
SDLK_KP_8 :: SDL_Scancode.SDL_SCANCODE_KP_8 | SDLK_SCANCODE_MASK;
SDLK_KP_9 :: SDL_Scancode.SDL_SCANCODE_KP_9 | SDLK_SCANCODE_MASK;
SDLK_KP_0 :: SDL_Scancode.SDL_SCANCODE_KP_0 | SDLK_SCANCODE_MASK;
SDLK_KP_PERIOD :: SDL_Scancode.SDL_SCANCODE_KP_PERIOD | SDLK_SCANCODE_MASK;

SDLK_APPLICATION :: SDL_Scancode.SDL_SCANCODE_APPLICATION | SDLK_SCANCODE_MASK;
SDLK_POWER :: SDL_Scancode.SDL_SCANCODE_POWER | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALS :: SDL_Scancode.SDL_SCANCODE_KP_EQUALS | SDLK_SCANCODE_MASK;
SDLK_F13 :: SDL_Scancode.SDL_SCANCODE_F13 | SDLK_SCANCODE_MASK;
SDLK_F14 :: SDL_Scancode.SDL_SCANCODE_F14 | SDLK_SCANCODE_MASK;
SDLK_F15 :: SDL_Scancode.SDL_SCANCODE_F15 | SDLK_SCANCODE_MASK;
SDLK_F16 :: SDL_Scancode.SDL_SCANCODE_F16 | SDLK_SCANCODE_MASK;
SDLK_F17 :: SDL_Scancode.SDL_SCANCODE_F17 | SDLK_SCANCODE_MASK;
SDLK_F18 :: SDL_Scancode.SDL_SCANCODE_F18 | SDLK_SCANCODE_MASK;
SDLK_F19 :: SDL_Scancode.SDL_SCANCODE_F19 | SDLK_SCANCODE_MASK;
SDLK_F20 :: SDL_Scancode.SDL_SCANCODE_F20 | SDLK_SCANCODE_MASK;
SDLK_F21 :: SDL_Scancode.SDL_SCANCODE_F21 | SDLK_SCANCODE_MASK;
SDLK_F22 :: SDL_Scancode.SDL_SCANCODE_F22 | SDLK_SCANCODE_MASK;
SDLK_F23 :: SDL_Scancode.SDL_SCANCODE_F23 | SDLK_SCANCODE_MASK;
SDLK_F24 :: SDL_Scancode.SDL_SCANCODE_F24 | SDLK_SCANCODE_MASK;
SDLK_EXECUTE :: SDL_Scancode.SDL_SCANCODE_EXECUTE | SDLK_SCANCODE_MASK;
SDLK_HELP :: SDL_Scancode.SDL_SCANCODE_HELP | SDLK_SCANCODE_MASK;
SDLK_MENU :: SDL_Scancode.SDL_SCANCODE_MENU | SDLK_SCANCODE_MASK;
SDLK_SELECT :: SDL_Scancode.SDL_SCANCODE_SELECT | SDLK_SCANCODE_MASK;
SDLK_STOP :: SDL_Scancode.SDL_SCANCODE_STOP | SDLK_SCANCODE_MASK;
SDLK_AGAIN :: SDL_Scancode.SDL_SCANCODE_AGAIN | SDLK_SCANCODE_MASK;
SDLK_UNDO :: SDL_Scancode.SDL_SCANCODE_UNDO | SDLK_SCANCODE_MASK;
SDLK_CUT :: SDL_Scancode.SDL_SCANCODE_CUT | SDLK_SCANCODE_MASK;
SDLK_COPY :: SDL_Scancode.SDL_SCANCODE_COPY | SDLK_SCANCODE_MASK;
SDLK_PASTE :: SDL_Scancode.SDL_SCANCODE_PASTE | SDLK_SCANCODE_MASK;
SDLK_FIND :: SDL_Scancode.SDL_SCANCODE_FIND | SDLK_SCANCODE_MASK;
SDLK_MUTE :: SDL_Scancode.SDL_SCANCODE_MUTE | SDLK_SCANCODE_MASK;
SDLK_VOLUMEUP :: SDL_Scancode.SDL_SCANCODE_VOLUMEUP | SDLK_SCANCODE_MASK;
SDLK_VOLUMEDOWN :: SDL_Scancode.SDL_SCANCODE_VOLUMEDOWN | SDLK_SCANCODE_MASK;
SDLK_KP_COMMA :: SDL_Scancode.SDL_SCANCODE_KP_COMMA | SDLK_SCANCODE_MASK;
SDLK_KP_EQUALSAS400 :: SDL_Scancode.SDL_SCANCODE_KP_EQUALSAS400 | SDLK_SCANCODE_MASK;

SDLK_ALTERASE :: SDL_Scancode.SDL_SCANCODE_ALTERASE | SDLK_SCANCODE_MASK;
SDLK_SYSREQ :: SDL_Scancode.SDL_SCANCODE_SYSREQ | SDLK_SCANCODE_MASK;
SDLK_CANCEL :: SDL_Scancode.SDL_SCANCODE_CANCEL | SDLK_SCANCODE_MASK;
SDLK_CLEAR :: SDL_Scancode.SDL_SCANCODE_CLEAR | SDLK_SCANCODE_MASK;
SDLK_PRIOR :: SDL_Scancode.SDL_SCANCODE_PRIOR | SDLK_SCANCODE_MASK;
SDLK_RETURN2 :: SDL_Scancode.SDL_SCANCODE_RETURN2 | SDLK_SCANCODE_MASK;
SDLK_SEPARATOR :: SDL_Scancode.SDL_SCANCODE_SEPARATOR | SDLK_SCANCODE_MASK;
SDLK_OUT :: SDL_Scancode.SDL_SCANCODE_OUT | SDLK_SCANCODE_MASK;
SDLK_OPER :: SDL_Scancode.SDL_SCANCODE_OPER | SDLK_SCANCODE_MASK;
SDLK_CLEARAGAIN :: SDL_Scancode.SDL_SCANCODE_CLEARAGAIN | SDLK_SCANCODE_MASK;
SDLK_CRSEL :: SDL_Scancode.SDL_SCANCODE_CRSEL | SDLK_SCANCODE_MASK;
SDLK_EXSEL :: SDL_Scancode.SDL_SCANCODE_EXSEL | SDLK_SCANCODE_MASK;

SDLK_KP_00 :: SDL_Scancode.SDL_SCANCODE_KP_00 | SDLK_SCANCODE_MASK;
SDLK_KP_000 :: SDL_Scancode.SDL_SCANCODE_KP_000 | SDLK_SCANCODE_MASK;
SDLK_THOUSANDSSEPARATOR :: SDL_Scancode.SDL_SCANCODE_THOUSANDSSEPARATOR | SDLK_SCANCODE_MASK;
SDLK_DECIMALSEPARATOR :: SDL_Scancode.SDL_SCANCODE_DECIMALSEPARATOR | SDLK_SCANCODE_MASK;
SDLK_CURRENCYUNIT :: SDL_Scancode.SDL_SCANCODE_CURRENCYUNIT | SDLK_SCANCODE_MASK;
SDLK_CURRENCYSUBUNIT :: SDL_Scancode.SDL_SCANCODE_CURRENCYSUBUNIT | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTPAREN :: SDL_Scancode.SDL_SCANCODE_KP_LEFTPAREN | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTPAREN :: SDL_Scancode.SDL_SCANCODE_KP_RIGHTPAREN | SDLK_SCANCODE_MASK;
SDLK_KP_LEFTBRACE :: SDL_Scancode.SDL_SCANCODE_KP_LEFTBRACE | SDLK_SCANCODE_MASK;
SDLK_KP_RIGHTBRACE :: SDL_Scancode.SDL_SCANCODE_KP_RIGHTBRACE | SDLK_SCANCODE_MASK;
SDLK_KP_TAB :: SDL_Scancode.SDL_SCANCODE_KP_TAB | SDLK_SCANCODE_MASK;
SDLK_KP_BACKSPACE :: SDL_Scancode.SDL_SCANCODE_KP_BACKSPACE | SDLK_SCANCODE_MASK;
SDLK_KP_A :: SDL_Scancode.SDL_SCANCODE_KP_A | SDLK_SCANCODE_MASK;
SDLK_KP_B :: SDL_Scancode.SDL_SCANCODE_KP_B | SDLK_SCANCODE_MASK;
SDLK_KP_C :: SDL_Scancode.SDL_SCANCODE_KP_C | SDLK_SCANCODE_MASK;
SDLK_KP_D :: SDL_Scancode.SDL_SCANCODE_KP_D | SDLK_SCANCODE_MASK;
SDLK_KP_E :: SDL_Scancode.SDL_SCANCODE_KP_E | SDLK_SCANCODE_MASK;
SDLK_KP_F :: SDL_Scancode.SDL_SCANCODE_KP_F | SDLK_SCANCODE_MASK;
SDLK_KP_XOR :: SDL_Scancode.SDL_SCANCODE_KP_XOR | SDLK_SCANCODE_MASK;
SDLK_KP_POWER :: SDL_Scancode.SDL_SCANCODE_KP_POWER | SDLK_SCANCODE_MASK;
SDLK_KP_PERCENT :: SDL_Scancode.SDL_SCANCODE_KP_PERCENT | SDLK_SCANCODE_MASK;
SDLK_KP_LESS :: SDL_Scancode.SDL_SCANCODE_KP_LESS | SDLK_SCANCODE_MASK;
SDLK_KP_GREATER :: SDL_Scancode.SDL_SCANCODE_KP_GREATER | SDLK_SCANCODE_MASK;
SDLK_KP_AMPERSAND :: SDL_Scancode.SDL_SCANCODE_KP_AMPERSAND | SDLK_SCANCODE_MASK;
SDLK_KP_DBLAMPERSAND :: SDL_Scancode.SDL_SCANCODE_KP_DBLAMPERSAND | SDLK_SCANCODE_MASK;
SDLK_KP_VERTICALBAR :: SDL_Scancode.SDL_SCANCODE_KP_VERTICALBAR | SDLK_SCANCODE_MASK;
SDLK_KP_DBLVERTICALBAR :: SDL_Scancode.SDL_SCANCODE_KP_DBLVERTICALBAR | SDLK_SCANCODE_MASK;
SDLK_KP_COLON :: SDL_Scancode.SDL_SCANCODE_KP_COLON | SDLK_SCANCODE_MASK;
SDLK_KP_HASH :: SDL_Scancode.SDL_SCANCODE_KP_HASH | SDLK_SCANCODE_MASK;
SDLK_KP_SPACE :: SDL_Scancode.SDL_SCANCODE_KP_SPACE | SDLK_SCANCODE_MASK;
SDLK_KP_AT :: SDL_Scancode.SDL_SCANCODE_KP_AT | SDLK_SCANCODE_MASK;
SDLK_KP_EXCLAM :: SDL_Scancode.SDL_SCANCODE_KP_EXCLAM | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSTORE :: SDL_Scancode.SDL_SCANCODE_KP_MEMSTORE | SDLK_SCANCODE_MASK;
SDLK_KP_MEMRECALL :: SDL_Scancode.SDL_SCANCODE_KP_MEMRECALL | SDLK_SCANCODE_MASK;
SDLK_KP_MEMCLEAR :: SDL_Scancode.SDL_SCANCODE_KP_MEMCLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_MEMADD :: SDL_Scancode.SDL_SCANCODE_KP_MEMADD | SDLK_SCANCODE_MASK;
SDLK_KP_MEMSUBTRACT :: SDL_Scancode.SDL_SCANCODE_KP_MEMSUBTRACT | SDLK_SCANCODE_MASK;
SDLK_KP_MEMMULTIPLY :: SDL_Scancode.SDL_SCANCODE_KP_MEMMULTIPLY | SDLK_SCANCODE_MASK;
SDLK_KP_MEMDIVIDE :: SDL_Scancode.SDL_SCANCODE_KP_MEMDIVIDE | SDLK_SCANCODE_MASK;
SDLK_KP_PLUSMINUS :: SDL_Scancode.SDL_SCANCODE_KP_PLUSMINUS | SDLK_SCANCODE_MASK;
SDLK_KP_CLEAR :: SDL_Scancode.SDL_SCANCODE_KP_CLEAR | SDLK_SCANCODE_MASK;
SDLK_KP_CLEARENTRY :: SDL_Scancode.SDL_SCANCODE_KP_CLEARENTRY | SDLK_SCANCODE_MASK;
SDLK_KP_BINARY :: SDL_Scancode.SDL_SCANCODE_KP_BINARY | SDLK_SCANCODE_MASK;
SDLK_KP_OCTAL :: SDL_Scancode.SDL_SCANCODE_KP_OCTAL | SDLK_SCANCODE_MASK;
SDLK_KP_DECIMAL :: SDL_Scancode.SDL_SCANCODE_KP_DECIMAL | SDLK_SCANCODE_MASK;
SDLK_KP_HEXADECIMAL :: SDL_Scancode.SDL_SCANCODE_KP_HEXADECIMAL | SDLK_SCANCODE_MASK;

SDLK_LCTRL :: SDL_Scancode.SDL_SCANCODE_LCTRL | SDLK_SCANCODE_MASK;
SDLK_LSHIFT :: SDL_Scancode.SDL_SCANCODE_LSHIFT | SDLK_SCANCODE_MASK;
SDLK_LALT :: SDL_Scancode.SDL_SCANCODE_LALT | SDLK_SCANCODE_MASK;
SDLK_LGUI :: SDL_Scancode.SDL_SCANCODE_LGUI | SDLK_SCANCODE_MASK;
SDLK_RCTRL :: SDL_Scancode.SDL_SCANCODE_RCTRL | SDLK_SCANCODE_MASK;
SDLK_RSHIFT :: SDL_Scancode.SDL_SCANCODE_RSHIFT | SDLK_SCANCODE_MASK;
SDLK_RALT :: SDL_Scancode.SDL_SCANCODE_RALT | SDLK_SCANCODE_MASK;
SDLK_RGUI :: SDL_Scancode.SDL_SCANCODE_RGUI | SDLK_SCANCODE_MASK;

SDLK_MODE :: SDL_Scancode.SDL_SCANCODE_MODE | SDLK_SCANCODE_MASK;

SDLK_AUDIONEXT :: SDL_Scancode.SDL_SCANCODE_AUDIONEXT | SDLK_SCANCODE_MASK;
SDLK_AUDIOPREV :: SDL_Scancode.SDL_SCANCODE_AUDIOPREV | SDLK_SCANCODE_MASK;
SDLK_AUDIOSTOP :: SDL_Scancode.SDL_SCANCODE_AUDIOSTOP | SDLK_SCANCODE_MASK;
SDLK_AUDIOPLAY :: SDL_Scancode.SDL_SCANCODE_AUDIOPLAY | SDLK_SCANCODE_MASK;
SDLK_AUDIOMUTE :: SDL_Scancode.SDL_SCANCODE_AUDIOMUTE | SDLK_SCANCODE_MASK;
SDLK_MEDIASELECT :: SDL_Scancode.SDL_SCANCODE_MEDIASELECT | SDLK_SCANCODE_MASK;
SDLK_WWW :: SDL_Scancode.SDL_SCANCODE_WWW | SDLK_SCANCODE_MASK;
SDLK_MAIL :: SDL_Scancode.SDL_SCANCODE_MAIL | SDLK_SCANCODE_MASK;
SDLK_CALCULATOR :: SDL_Scancode.SDL_SCANCODE_CALCULATOR | SDLK_SCANCODE_MASK;
SDLK_COMPUTER :: SDL_Scancode.SDL_SCANCODE_COMPUTER | SDLK_SCANCODE_MASK;
SDLK_AC_SEARCH :: SDL_Scancode.SDL_SCANCODE_AC_SEARCH | SDLK_SCANCODE_MASK;
SDLK_AC_HOME :: SDL_Scancode.SDL_SCANCODE_AC_HOME | SDLK_SCANCODE_MASK;
SDLK_AC_BACK :: SDL_Scancode.SDL_SCANCODE_AC_BACK | SDLK_SCANCODE_MASK;
SDLK_AC_FORWARD :: SDL_Scancode.SDL_SCANCODE_AC_FORWARD | SDLK_SCANCODE_MASK;
SDLK_AC_STOP :: SDL_Scancode.SDL_SCANCODE_AC_STOP | SDLK_SCANCODE_MASK;
SDLK_AC_REFRESH :: SDL_Scancode.SDL_SCANCODE_AC_REFRESH | SDLK_SCANCODE_MASK;
SDLK_AC_BOOKMARKS :: SDL_Scancode.SDL_SCANCODE_AC_BOOKMARKS | SDLK_SCANCODE_MASK;

SDLK_BRIGHTNESSDOWN :: SDL_Scancode.SDL_SCANCODE_BRIGHTNESSDOWN | SDLK_SCANCODE_MASK;
SDLK_BRIGHTNESSUP :: SDL_Scancode.SDL_SCANCODE_BRIGHTNESSUP | SDLK_SCANCODE_MASK;
SDLK_DISPLAYSWITCH :: SDL_Scancode.SDL_SCANCODE_DISPLAYSWITCH | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMTOGGLE :: SDL_Scancode.SDL_SCANCODE_KBDILLUMTOGGLE | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMDOWN :: SDL_Scancode.SDL_SCANCODE_KBDILLUMDOWN | SDLK_SCANCODE_MASK;
SDLK_KBDILLUMUP :: SDL_Scancode.SDL_SCANCODE_KBDILLUMUP | SDLK_SCANCODE_MASK;
SDLK_EJECT :: SDL_Scancode.SDL_SCANCODE_EJECT | SDLK_SCANCODE_MASK;
SDLK_SLEEP :: SDL_Scancode.SDL_SCANCODE_SLEEP | SDLK_SCANCODE_MASK;

SDLK_SCANCODE_MASK :: 1<<30;


SDL_Scancode :: enum i32
{
    SDL_SCANCODE_UNKNOWN = 0,

    /**
     *  \name Usage page 0x07
     *
     *  These values are from usage page 0x07 (USB keyboard page).
     */
    /* @{ */

    SDL_SCANCODE_A = 4,
    SDL_SCANCODE_B = 5,
    SDL_SCANCODE_C = 6,
    SDL_SCANCODE_D = 7,
    SDL_SCANCODE_E = 8,
    SDL_SCANCODE_F = 9,
    SDL_SCANCODE_G = 10,
    SDL_SCANCODE_H = 11,
    SDL_SCANCODE_I = 12,
    SDL_SCANCODE_J = 13,
    SDL_SCANCODE_K = 14,
    SDL_SCANCODE_L = 15,
    SDL_SCANCODE_M = 16,
    SDL_SCANCODE_N = 17,
    SDL_SCANCODE_O = 18,
    SDL_SCANCODE_P = 19,
    SDL_SCANCODE_Q = 20,
    SDL_SCANCODE_R = 21,
    SDL_SCANCODE_S = 22,
    SDL_SCANCODE_T = 23,
    SDL_SCANCODE_U = 24,
    SDL_SCANCODE_V = 25,
    SDL_SCANCODE_W = 26,
    SDL_SCANCODE_X = 27,
    SDL_SCANCODE_Y = 28,
    SDL_SCANCODE_Z = 29,

    SDL_SCANCODE_1 = 30,
    SDL_SCANCODE_2 = 31,
    SDL_SCANCODE_3 = 32,
    SDL_SCANCODE_4 = 33,
    SDL_SCANCODE_5 = 34,
    SDL_SCANCODE_6 = 35,
    SDL_SCANCODE_7 = 36,
    SDL_SCANCODE_8 = 37,
    SDL_SCANCODE_9 = 38,
    SDL_SCANCODE_0 = 39,

    SDL_SCANCODE_RETURN = 40,
    SDL_SCANCODE_ESCAPE = 41,
    SDL_SCANCODE_BACKSPACE = 42,
    SDL_SCANCODE_TAB = 43,
    SDL_SCANCODE_SPACE = 44,

    SDL_SCANCODE_MINUS = 45,
    SDL_SCANCODE_EQUALS = 46,
    SDL_SCANCODE_LEFTBRACKET = 47,
    SDL_SCANCODE_RIGHTBRACKET = 48,
    SDL_SCANCODE_BACKSLASH = 49, /**< Located at the lower left of the return
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
    SDL_SCANCODE_NONUSHASH = 50, /**< ISO USB keyboards actually use this code
                                  *   instead of 49 for the same key, but all
                                  *   OSes I've seen treat the two codes
                                  *   identically. So, as an implementor, unless
                                  *   your keyboard generates both of those
                                  *   codes and your OS treats them differently,
                                  *   you should generate SDL_SCANCODE_BACKSLASH
                                  *   instead of this code. As a user, you
                                  *   should not rely on this code because SDL
                                  *   will never generate it with most (all?)
                                  *   keyboards.
                                  */
    SDL_SCANCODE_SEMICOLON = 51,
    SDL_SCANCODE_APOSTROPHE = 52,
    SDL_SCANCODE_GRAVE = 53, /**< Located in the top left corner (on both ANSI
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
    SDL_SCANCODE_COMMA = 54,
    SDL_SCANCODE_PERIOD = 55,
    SDL_SCANCODE_SLASH = 56,

    SDL_SCANCODE_CAPSLOCK = 57,

    SDL_SCANCODE_F1 = 58,
    SDL_SCANCODE_F2 = 59,
    SDL_SCANCODE_F3 = 60,
    SDL_SCANCODE_F4 = 61,
    SDL_SCANCODE_F5 = 62,
    SDL_SCANCODE_F6 = 63,
    SDL_SCANCODE_F7 = 64,
    SDL_SCANCODE_F8 = 65,
    SDL_SCANCODE_F9 = 66,
    SDL_SCANCODE_F10 = 67,
    SDL_SCANCODE_F11 = 68,
    SDL_SCANCODE_F12 = 69,

    SDL_SCANCODE_PRINTSCREEN = 70,
    SDL_SCANCODE_SCROLLLOCK = 71,
    SDL_SCANCODE_PAUSE = 72,
    SDL_SCANCODE_INSERT = 73, /**< insert on PC, help on some Mac keyboards (but
                                   does send code 73, not 117) */
    SDL_SCANCODE_HOME = 74,
    SDL_SCANCODE_PAGEUP = 75,
    SDL_SCANCODE_DELETE = 76,
    SDL_SCANCODE_END = 77,
    SDL_SCANCODE_PAGEDOWN = 78,
    SDL_SCANCODE_RIGHT = 79,
    SDL_SCANCODE_LEFT = 80,
    SDL_SCANCODE_DOWN = 81,
    SDL_SCANCODE_UP = 82,

    SDL_SCANCODE_NUMLOCKCLEAR = 83, /**< num lock on PC, clear on Mac keyboards
                                     */
    SDL_SCANCODE_KP_DIVIDE = 84,
    SDL_SCANCODE_KP_MULTIPLY = 85,
    SDL_SCANCODE_KP_MINUS = 86,
    SDL_SCANCODE_KP_PLUS = 87,
    SDL_SCANCODE_KP_ENTER = 88,
    SDL_SCANCODE_KP_1 = 89,
    SDL_SCANCODE_KP_2 = 90,
    SDL_SCANCODE_KP_3 = 91,
    SDL_SCANCODE_KP_4 = 92,
    SDL_SCANCODE_KP_5 = 93,
    SDL_SCANCODE_KP_6 = 94,
    SDL_SCANCODE_KP_7 = 95,
    SDL_SCANCODE_KP_8 = 96,
    SDL_SCANCODE_KP_9 = 97,
    SDL_SCANCODE_KP_0 = 98,
    SDL_SCANCODE_KP_PERIOD = 99,

    SDL_SCANCODE_NONUSBACKSLASH = 100, /**< This is the additional key that ISO
                                        *   keyboards have over ANSI ones,
                                        *   located between left shift and Y.
                                        *   Produces GRAVE ACCENT and TILDE in a
                                        *   US or UK Mac layout, REVERSE SOLIDUS
                                        *   (backslash) and VERTICAL LINE in a
                                        *   US or UK Windows layout, and
                                        *   LESS-THAN SIGN and GREATER-THAN SIGN
                                        *   in a Swiss German, German, or French
                                        *   layout. */
    SDL_SCANCODE_APPLICATION = 101, /**< windows contextual menu, compose */
    SDL_SCANCODE_POWER = 102, /**< The USB document says this is a status flag,
                               *   not a physical key - but some Mac keyboards
                               *   do have a power key. */
    SDL_SCANCODE_KP_EQUALS = 103,
    SDL_SCANCODE_F13 = 104,
    SDL_SCANCODE_F14 = 105,
    SDL_SCANCODE_F15 = 106,
    SDL_SCANCODE_F16 = 107,
    SDL_SCANCODE_F17 = 108,
    SDL_SCANCODE_F18 = 109,
    SDL_SCANCODE_F19 = 110,
    SDL_SCANCODE_F20 = 111,
    SDL_SCANCODE_F21 = 112,
    SDL_SCANCODE_F22 = 113,
    SDL_SCANCODE_F23 = 114,
    SDL_SCANCODE_F24 = 115,
    SDL_SCANCODE_EXECUTE = 116,
    SDL_SCANCODE_HELP = 117,
    SDL_SCANCODE_MENU = 118,
    SDL_SCANCODE_SELECT = 119,
    SDL_SCANCODE_STOP = 120,
    SDL_SCANCODE_AGAIN = 121,   /**< redo */
    SDL_SCANCODE_UNDO = 122,
    SDL_SCANCODE_CUT = 123,
    SDL_SCANCODE_COPY = 124,
    SDL_SCANCODE_PASTE = 125,
    SDL_SCANCODE_FIND = 126,
    SDL_SCANCODE_MUTE = 127,
    SDL_SCANCODE_VOLUMEUP = 128,
    SDL_SCANCODE_VOLUMEDOWN = 129,
/* not sure whether there's a reason to enable these */
/*     SDL_SCANCODE_LOCKINGCAPSLOCK = 130,  */
/*     SDL_SCANCODE_LOCKINGNUMLOCK = 131, */
/*     SDL_SCANCODE_LOCKINGSCROLLLOCK = 132, */
    SDL_SCANCODE_KP_COMMA = 133,
    SDL_SCANCODE_KP_EQUALSAS400 = 134,

    SDL_SCANCODE_INTERNATIONAL1 = 135, /**< used on Asian keyboards, see
                                            footnotes in USB doc */
    SDL_SCANCODE_INTERNATIONAL2 = 136,
    SDL_SCANCODE_INTERNATIONAL3 = 137, /**< Yen */
    SDL_SCANCODE_INTERNATIONAL4 = 138,
    SDL_SCANCODE_INTERNATIONAL5 = 139,
    SDL_SCANCODE_INTERNATIONAL6 = 140,
    SDL_SCANCODE_INTERNATIONAL7 = 141,
    SDL_SCANCODE_INTERNATIONAL8 = 142,
    SDL_SCANCODE_INTERNATIONAL9 = 143,
    SDL_SCANCODE_LANG1 = 144, /**< Hangul/English toggle */
    SDL_SCANCODE_LANG2 = 145, /**< Hanja conversion */
    SDL_SCANCODE_LANG3 = 146, /**< Katakana */
    SDL_SCANCODE_LANG4 = 147, /**< Hiragana */
    SDL_SCANCODE_LANG5 = 148, /**< Zenkaku/Hankaku */
    SDL_SCANCODE_LANG6 = 149, /**< reserved */
    SDL_SCANCODE_LANG7 = 150, /**< reserved */
    SDL_SCANCODE_LANG8 = 151, /**< reserved */
    SDL_SCANCODE_LANG9 = 152, /**< reserved */

    SDL_SCANCODE_ALTERASE = 153, /**< Erase-Eaze */
    SDL_SCANCODE_SYSREQ = 154,
    SDL_SCANCODE_CANCEL = 155,
    SDL_SCANCODE_CLEAR = 156,
    SDL_SCANCODE_PRIOR = 157,
    SDL_SCANCODE_RETURN2 = 158,
    SDL_SCANCODE_SEPARATOR = 159,
    SDL_SCANCODE_OUT = 160,
    SDL_SCANCODE_OPER = 161,
    SDL_SCANCODE_CLEARAGAIN = 162,
    SDL_SCANCODE_CRSEL = 163,
    SDL_SCANCODE_EXSEL = 164,

    SDL_SCANCODE_KP_00 = 176,
    SDL_SCANCODE_KP_000 = 177,
    SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
    SDL_SCANCODE_DECIMALSEPARATOR = 179,
    SDL_SCANCODE_CURRENCYUNIT = 180,
    SDL_SCANCODE_CURRENCYSUBUNIT = 181,
    SDL_SCANCODE_KP_LEFTPAREN = 182,
    SDL_SCANCODE_KP_RIGHTPAREN = 183,
    SDL_SCANCODE_KP_LEFTBRACE = 184,
    SDL_SCANCODE_KP_RIGHTBRACE = 185,
    SDL_SCANCODE_KP_TAB = 186,
    SDL_SCANCODE_KP_BACKSPACE = 187,
    SDL_SCANCODE_KP_A = 188,
    SDL_SCANCODE_KP_B = 189,
    SDL_SCANCODE_KP_C = 190,
    SDL_SCANCODE_KP_D = 191,
    SDL_SCANCODE_KP_E = 192,
    SDL_SCANCODE_KP_F = 193,
    SDL_SCANCODE_KP_XOR = 194,
    SDL_SCANCODE_KP_POWER = 195,
    SDL_SCANCODE_KP_PERCENT = 196,
    SDL_SCANCODE_KP_LESS = 197,
    SDL_SCANCODE_KP_GREATER = 198,
    SDL_SCANCODE_KP_AMPERSAND = 199,
    SDL_SCANCODE_KP_DBLAMPERSAND = 200,
    SDL_SCANCODE_KP_VERTICALBAR = 201,
    SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
    SDL_SCANCODE_KP_COLON = 203,
    SDL_SCANCODE_KP_HASH = 204,
    SDL_SCANCODE_KP_SPACE = 205,
    SDL_SCANCODE_KP_AT = 206,
    SDL_SCANCODE_KP_EXCLAM = 207,
    SDL_SCANCODE_KP_MEMSTORE = 208,
    SDL_SCANCODE_KP_MEMRECALL = 209,
    SDL_SCANCODE_KP_MEMCLEAR = 210,
    SDL_SCANCODE_KP_MEMADD = 211,
    SDL_SCANCODE_KP_MEMSUBTRACT = 212,
    SDL_SCANCODE_KP_MEMMULTIPLY = 213,
    SDL_SCANCODE_KP_MEMDIVIDE = 214,
    SDL_SCANCODE_KP_PLUSMINUS = 215,
    SDL_SCANCODE_KP_CLEAR = 216,
    SDL_SCANCODE_KP_CLEARENTRY = 217,
    SDL_SCANCODE_KP_BINARY = 218,
    SDL_SCANCODE_KP_OCTAL = 219,
    SDL_SCANCODE_KP_DECIMAL = 220,
    SDL_SCANCODE_KP_HEXADECIMAL = 221,

    SDL_SCANCODE_LCTRL = 224,
    SDL_SCANCODE_LSHIFT = 225,
    SDL_SCANCODE_LALT = 226, /**< alt, option */
    SDL_SCANCODE_LGUI = 227, /**< windows, command (apple), meta */
    SDL_SCANCODE_RCTRL = 228,
    SDL_SCANCODE_RSHIFT = 229,
    SDL_SCANCODE_RALT = 230, /**< alt gr, option */
    SDL_SCANCODE_RGUI = 231, /**< windows, command (apple), meta */

    SDL_SCANCODE_MODE = 257,    /**< I'm not sure if this is really not covered
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

    SDL_SCANCODE_AUDIONEXT = 258,
    SDL_SCANCODE_AUDIOPREV = 259,
    SDL_SCANCODE_AUDIOSTOP = 260,
    SDL_SCANCODE_AUDIOPLAY = 261,
    SDL_SCANCODE_AUDIOMUTE = 262,
    SDL_SCANCODE_MEDIASELECT = 263,
    SDL_SCANCODE_WWW = 264,
    SDL_SCANCODE_MAIL = 265,
    SDL_SCANCODE_CALCULATOR = 266,
    SDL_SCANCODE_COMPUTER = 267,
    SDL_SCANCODE_AC_SEARCH = 268,
    SDL_SCANCODE_AC_HOME = 269,
    SDL_SCANCODE_AC_BACK = 270,
    SDL_SCANCODE_AC_FORWARD = 271,
    SDL_SCANCODE_AC_STOP = 272,
    SDL_SCANCODE_AC_REFRESH = 273,
    SDL_SCANCODE_AC_BOOKMARKS = 274,

    /* @} *//* Usage page 0x0C */

    /**
     *  \name Walther keys
     *
     *  These are values that Christian Walther added (for mac keyboard?).
     */
    /* @{ */

    SDL_SCANCODE_BRIGHTNESSDOWN = 275,
    SDL_SCANCODE_BRIGHTNESSUP = 276,
    SDL_SCANCODE_DISPLAYSWITCH = 277, /**< display mirroring/dual display
                                           switch, video mode switch */
    SDL_SCANCODE_KBDILLUMTOGGLE = 278,
    SDL_SCANCODE_KBDILLUMDOWN = 279,
    SDL_SCANCODE_KBDILLUMUP = 280,
    SDL_SCANCODE_EJECT = 281,
    SDL_SCANCODE_SLEEP = 282,

    SDL_SCANCODE_APP1 = 283,
    SDL_SCANCODE_APP2 = 284,

    /* @} *//* Walther keys */

    /* Add any other keys here. */

    SDL_NUM_SCANCODES = 512 /**< not a key, just marks the number of scancodes
                                 for array bounds */
}






SDL_FIRSTEVENT :: 0;     /**< Unused (do not remove) */

/* Application events */
SDL_QUIT :: 0x100; /**< User-requested quit */

/* These application events have special meaning on iOS, see README-ios.md for details */
SDL_APP_TERMINATING :: 257;        /**< The application is being terminated by the OS
                                 Called on iOS in applicationWillTerminate()
                                 Called on Android in onDestroy()
                            */
SDL_APP_LOWMEMORY :: 258;          /**< The application is low on memory, free memory if possible.
                                 Called on iOS in applicationDidReceiveMemoryWarning()
                                 Called on Android in onLowMemory()
                            */
SDL_APP_WILLENTERBACKGROUND :: 259; /**< The application is about to enter the background
                                 Called on iOS in applicationWillResignActive()
                                 Called on Android in onPause()
                            */
SDL_APP_DIDENTERBACKGROUND :: 260; /**< The application did enter the background and may not get CPU for some time
                                 Called on iOS in applicationDidEnterBackground()
                                 Called on Android in onPause()
                            */
SDL_APP_WILLENTERFOREGROUND :: 261; /**< The application is about to enter the foreground
                                 Called on iOS in applicationWillEnterForeground()
                                 Called on Android in onResume()
                            */
SDL_APP_DIDENTERFOREGROUND :: 262; /**< The application is now interactive
                                 Called on iOS in applicationDidBecomeActive()
                                 Called on Android in onResume()
                            */

/* Window events */
SDL_WINDOWEVENT :: 0x200; /**< Window state change */
SDL_SYSWMEVENT :: 513;             /**< System specific event */

/* Keyboard events */
SDL_KEYDOWN :: 0x300; /**< Key pressed */
SDL_KEYUP :: 769;                  /**< Key released */
SDL_TEXTEDITING :: 770;            /**< Keyboard text editing (composition) */
SDL_TEXTINPUT :: 771;              /**< Keyboard text input */
SDL_KEYMAPCHANGED :: 772;          /**< Keymap changed due to a system event such as an
                                 input language or keyboard layout change.
                            */

/* Mouse events */
SDL_MOUSEMOTION :: 0x400; /**< Mouse moved */
SDL_MOUSEBUTTONDOWN :: 1025;        /**< Mouse button pressed */
SDL_MOUSEBUTTONUP :: 1026;         /**< Mouse button released */
SDL_MOUSEWHEEL :: 1027;             /**< Mouse wheel motion */

/* Joystick events */
SDL_JOYAXISMOTION :: 0x600; /**< Joystick axis motion */
SDL_JOYBALLMOTION :: 1537;          /**< Joystick trackball motion */
SDL_JOYHATMOTION :: 1538;           /**< Joystick hat position change */
SDL_JOYBUTTONDOWN :: 1539;          /**< Joystick button pressed */
SDL_JOYBUTTONUP :: 1540;            /**< Joystick button released */
SDL_JOYDEVICEADDED :: 1541;         /**< A new joystick has been inserted into the system */
SDL_JOYDEVICEREMOVED :: 1542;       /**< An opened joystick has been removed */

/* Game controller events */
SDL_CONTROLLERAXISMOTION :: 0x650; /**< Game controller axis motion */
SDL_CONTROLLERBUTTONDOWN :: 1617;          /**< Game controller button pressed */
SDL_CONTROLLERBUTTONUP :: 1618;            /**< Game controller button released */
SDL_CONTROLLERDEVICEADDED :: 1619;         /**< A new Game controller has been inserted into the system */
SDL_CONTROLLERDEVICEREMOVED :: 1620;       /**< An opened Game controller has been removed */
SDL_CONTROLLERDEVICEREMAPPED :: 1621;      /**< The controller mapping was updated */

/* Touch events */
SDL_FINGERDOWN :: 0x700;
SDL_FINGERUP :: 1793;
SDL_FINGERMOTION :: 1794;

/* Gesture events */
SDL_DOLLARGESTURE :: 0x800;
SDL_DOLLARRECORD :: 2049;
SDL_MULTIGESTURE :: 2050;

/* Clipboard events */
SDL_CLIPBOARDUPDATE :: 0x900; /**< The clipboard changed */

/* Drag and drop events */
SDL_DROPFILE :: 0x1000; /**< The system requests a file open */
SDL_DROPTEXT :: 4097;                 /**< text/plain drag-and-drop event */
SDL_DROPBEGIN :: 4098;                /**< A new set of drops is beginning (NULL filename) */
SDL_DROPCOMPLETE :: 4099;             /**< Current set of drops is now complete (NULL filename) */

/* Audio hotplug events */
SDL_AUDIODEVICEADDED :: 0x1100; /**< A new audio device is available */
SDL_AUDIODEVICEREMOVED :: 4353;        /**< An audio device has been removed. */

/* Render events */
SDL_RENDER_TARGETS_RESET :: 0x2000; /**< The render targets have been reset and their contents need to be updated */
SDL_RENDER_DEVICE_RESET :: 8193; /**< The device has been reset and all textures need to be recreated */

/** Events ::SDL_USEREVENT through ::SDL_LASTEVENT are for your use,
 *  and should be allocated with SDL_RegisterEvents()
 */
SDL_USEREVENT :: 0x8000;

/**
 *  This last event is only for bounding internal arrays
 */
SDL_LASTEVENT :: 0xFFFF;

SDL_BlitMap :: rawptr;
SDL_Window :: rawptr;
SDL_Renderer :: rawptr;
SDL_Texture :: rawptr;
SDL_SysWMmsg :: rawptr;
SDL_GL_Context :: rawptr;

SDL_Cond :: struct #ordered {};
SDL_Mutex :: struct #ordered {};
SDL_Sem :: struct #ordered {};
SDL_Thread :: struct #ordered {};
SDL_Haptic :: struct #ordered {};
SDL_Joystick :: struct #ordered {};
SDL_Game_Controller :: struct #ordered {};
SDL_Cursor :: struct #ordered {};
IDirect3D_Device_9 :: struct #ordered {};

SDL_Joystick_Id :: i32;
SDL_Timer_Id :: i32;
SDL_Spin_Lock :: i32;
SDL_Tls_Id :: u32;
SDL_Audio_Device_Id :: u32;
SDL_Audio_Device :: u32;
SDL_Audio_Format :: u16;
SDL_Keycode :: i32;
SDL_Thread_Id :: u64;
SDL_Touch_Id :: i64;
SDL_Finger_Id :: i64;

SDL_Hint_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
SDL_Event_Filter :: proc(userdata: rawptr, param: ^SDL_Event) -> i32 #cc_c;
SDL_Timer_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
SDL_Audio_Callback :: proc(userdata: rawptr, stream: ^u8, len: i32) #cc_c;
SDL_Assertion_Handler :: proc(data: ^SDL_Assert_Data, userdata: rawptr) -> SDL_Assert_State #cc_c;
SDL_Audio_Filter :: proc(cvt: ^SDL_Audio_Cvt, format: SDL_Audio_Format) #cc_c;
SDL_Thread_Function :: proc(data: rawptr) -> i32 #cc_c;
SDL_Hit_Test :: proc(window: ^SDL_Window, area: ^SDL_Point, data: rawptr) -> SDL_Hit_Test_Result #cc_c;
SDL_Windows_Message_Hook :: proc(userdata: rawptr, hwnd: rawptr, message: u32, wparam: u64, lparam: i64) #cc_c;
SDL_Log_Output_Function :: proc(userdata: rawptr, category: i32, priority: SDL_Log_Priority, message: ^u8) #cc_c;

SDL_Message_Box_Data :: struct #ordered
{
    flags: u32;
    window: ^SDL_Window;
    title: ^u8;
    message: ^u8;

    numbuttons: i32;
    buttons: ^SDL_Message_Box_Button_Data;

    colorScheme: ^SDL_Message_Box_Color_Scheme;
}

SDL_Message_Box_Button_Data :: struct #ordered
{
    flags: u32;       /**< ::SDL_MessageBoxButtonFlags */
    buttonid: i32;       /**< User defined button id (value returned via SDL_ShowMessageBox) */
    text: ^u8;  /**< The UTF-8 button text */
}

SDL_Message_Box_Color_Scheme :: struct #ordered
{
    colors: [SDL_Message_Box_Color_Type.SDL_MESSAGEBOX_COLOR_MAX]SDL_Message_Box_Color;
}

SDL_Message_Box_Color :: struct #ordered
{
    r, g, b: u8;
}

SDL_Assert_Data :: struct #ordered
{
    always_ignore: i32;
    trigger_count: u32;
    condition: ^u8;
    filename: ^u8;
    linenum: i32;
    function: ^u8;
    next: ^SDL_Assert_Data;
}

SDL_Window_Shape_Params :: struct #raw_union
{
    /** \brief a cutoff alpha value for binarization of the window shape's alpha channel. */
    binarizationCutoff: u8;
    colorKey: SDL_Color;
}

SDL_Window_Shape_Mode :: struct #ordered
{
    mode: Window_Shape_Mode;
    parameters: SDL_Window_Shape_Params;
}

SDL_Point :: struct #ordered
{
    x: i32;
    y: i32;
}

SDL_Renderer_Info :: struct #ordered
{
    name: ^u8;           /**< The name of the renderer */
    flags: u32;               /**< Supported ::SDL_RendererFlags */
    num_texture_formats: u32; /**< The number of available texture formats */
    texture_formats: [16]u32; /**< The available texture formats */
    max_texture_width: i32;      /**< The maximum texture width */
    max_texture_height: i32;     /**< The maximum texture height */
}

SDL_Version :: struct #ordered
{
    major: u8;        /**< major version */
    minor: u8;        /**< minor version */
    patch: u8;        /**< update version */
}

SDL_Display_Mode :: struct #ordered
{
    format: u32;              /**< pixel format */
    w: i32;                      /**< width, in screen coordinates */
    h: i32;                      /**< height, in screen coordinates */
    refresh_rate: i32;           /**< refresh rate (or zero for unspecified) */
    driverdata: rawptr;           /**< driver-specific data, initialize to 0 */
}

SDL_Finger :: struct #ordered
{
    id: SDL_Finger_Id;
    x: f32;
    y: f32;
    pressure: f32;
}

SDL_Audio_Spec :: struct #ordered
{
    freq: i32;                   /**< DSP frequency -- samples per second */
    format: SDL_Audio_Format;     /**< Audio data format */
    channels: u8;             /**< Number of channels: 1 mono, 2 stereo */
    silence: u8;              /**< Audio buffer silence value (calculated) */
    samples: u16;             /**< Audio buffer size in samples (power of 2) */
    padding: u16;             /**< Necessary for some compile environments */
    size: u32;                /**< Audio buffer size in bytes (calculated) */
    callback: SDL_Audio_Callback; /**< Callback that feeds the audio device (NULL to use SDL_QueueAudio()). */
    userdata: rawptr;             /**< Userdata passed to callback (ignored for NULL callbacks). */
}

SDL_Joystick_Guid :: struct #ordered
{
    data: [16]u8;
}

SDL_Audio_Cvt :: struct #ordered
{
    needed: i32;                 /**< Set to 1 if conversion possible */
    src_format: SDL_Audio_Format; /**< Source audio format */
    dst_format: SDL_Audio_Format; /**< Target audio format */
    rate_incr: i64;           /**< Rate conversion increment */
    buf: ^u8;                 /**< Buffer to hold entire audio data */
    len: i32;                    /**< Length of original audio buffer */
    len_cvt: i32;                /**< Length of converted audio buffer */
    len_mult: i32;               /**< buffer must be len*len_mult big */
    len_ratio: i64;           /**< Given len, final size is len*len_ratio */
    filters: [10]SDL_Audio_Filter;        /**< Filter list */
    filter_index: i32;           /**< Current audio conversion function */
}

SDL_Surface :: struct #ordered
{
    flags: u32;
    format: ^SDL_Pixel_Format;
    w, h: i32;
    pitch: i32;
    pixels: rawptr;

    userdata: rawptr;

    locked: i32;
    lock_data: rawptr;

    clip_rect: SDL_Rect;
    blip_map: ^SDL_BlitMap;

    refcount: i32;
}

SDL_Color :: struct #ordered
{
    r: u8;
    g: u8;
    b: u8;
    a: u8;
}

SDL_Palette :: struct #ordered
{
    ncolors: i32;
    colors: ^SDL_Color;
    version: u32;
    refcount: i32;
}

SDL_Pixel_Format :: struct #ordered
{
    format: u32;
    palette: ^SDL_Palette;
    BitsPerPixel: u8;
    BytesPerPixel: u8;
    padding: [2]u8;
    Rmask: u32;
    Gmask: u32;
    Bmask: u32;
    Amask: u32;
    Rloss: u8;
    Gloss: u8;
    Bloss: u8;
    Aloss: u8;
    Rshift: u8;
    Gshift: u8;
    Bshift: u8;
    Ashift: u8;
    refcount: i32;
    next: ^SDL_Pixel_Format;
}

SDL_Rect :: struct #ordered
{
    x, y: u32;
    w, h: u32;
}

SDL_Atomic :: struct #ordered
{
    value: i32;
}

SDL_Keysym :: struct #ordered
{
    scancode: u32;      /**< SDL physical key code - see ::SDL_Scancode for details */
    sym: i32;            /**< SDL virtual key code - see ::SDL_Keycode for details */
    mod: u16;                 /**< current key modifiers */
    unused: u32;
}

SDL_Haptic_Effect :: struct #raw_union
{
    /* Common for all force feedback effects */
    haptic_type: u16;                    /**< Effect type. */
    constant: SDL_Haptic_Constant;    /**< Constant effect. */
    periodic: SDL_Haptic_Periodic;    /**< Periodic effect. */
    condition: SDL_Haptic_Condition;  /**< Condition effect. */
    ramp: SDL_Haptic_Ramp;            /**< Ramp effect. */
    leftright: SDL_Haptic_Left_Right;  /**< Left/Right effect. */
    custom: SDL_Haptic_Custom;        /**< Custom effect. */
}

SDL_Haptic_Constant :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_CONSTANT */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

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

SDL_Haptic_Periodic :: struct
{
    /* Header */
    haptic_type: u16;        /**< ::SDL_HAPTIC_SINE, ::SDL_HAPTIC_LEFTRIGHT,
                             ::SDL_HAPTIC_TRIANGLE, ::SDL_HAPTIC_SAWTOOTHUP or
                             ::SDL_HAPTIC_SAWTOOTHDOWN */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

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

SDL_Haptic_Direction :: struct
{
    haptic_type: u8;         /**< The type of encoding. */
    dir: [3]i32;      /**< The encoded direction. */
}

SDL_Haptic_Condition :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_SPRING, ::SDL_HAPTIC_DAMPER,
                                 ::SDL_HAPTIC_INERTIA or ::SDL_HAPTIC_FRICTION */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect - Not used ATM. */

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

SDL_Haptic_Ramp :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_RAMP */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

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

SDL_Haptic_Left_Right :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_LEFTRIGHT */

    /* Replay */
    length: u32;          /**< Duration of the effect. */

    /* Rumble */
    large_magnitude: u16; /**< Control of the large controller motor. */
    small_magnitude: u16; /**< Control of the small controller motor. */
}

SDL_Haptic_Custom :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_CUSTOM */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

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

SDL_Event :: struct #raw_union
{
    event_type: u32;                    /**< Event type, shared with all events */
    common: SDL_CommonEvent;         /**< Common event data */
    window: SDL_WindowEvent;         /**< Window event data */
    key: SDL_KeyboardEvent;          /**< Keyboard event data */
    edit: SDL_TextEditingEvent;      /**< Text editing event data */
    text: SDL_TextInputEvent;        /**< Text input event data */
    motion: SDL_MouseMotionEvent;    /**< Mouse motion event data */
    button: SDL_MouseButtonEvent;    /**< Mouse button event data */
    wheel: SDL_MouseWheelEvent;      /**< Mouse wheel event data */
    jaxis: SDL_JoyAxisEvent;         /**< Joystick axis event data */
    jball: SDL_JoyBallEvent;         /**< Joystick ball event data */
    jhat: SDL_JoyHatEvent;           /**< Joystick hat event data */
    jbutton: SDL_JoyButtonEvent;     /**< Joystick button event data */
    jdevice: SDL_JoyDeviceEvent;     /**< Joystick device change event data */
    caxis: SDL_ControllerAxisEvent;      /**< Game Controller axis event data */
    cbutton: SDL_ControllerButtonEvent;  /**< Game Controller button event data */
    cdevice: SDL_ControllerDeviceEvent;  /**< Game Controller device event data */
    adevice: SDL_AudioDeviceEvent;   /**< Audio device event data */
    quit: SDL_QuitEvent;             /**< Quit request event data */
    user: SDL_UserEvent;             /**< Custom event data */
    syswm: SDL_SysWMEvent;           /**< System dependent window event data */
    tfinger: SDL_TouchFingerEvent;   /**< Touch finger event data */
    mgesture: SDL_MultiGestureEvent; /**< Gesture event data */
    dgesture: SDL_DollarGestureEvent; /**< Gesture event data */
    drop: SDL_DropEvent;             /**< Drag and drop event data */

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
SDL_CommonEvent :: struct #ordered
{
    event_type: u32;
    timestamp: u32;
}

/**
 *  \brief Window state change event data (event.window.*)
 */
SDL_WindowEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_WINDOWEVENT */
    timestamp: u32;
    windowID: u32;    /**< The associated window */
    event: u8;        /**< ::SDL_WindowEventID */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    data1: i32;       /**< event dependent data */
    data2: i32;       /**< event dependent data */
}

/**
 *  \brief Keyboard button event structure (event.key.*)
 */
SDL_KeyboardEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_KEYDOWN or ::SDL_KEYUP */
    timestamp: u32;
    windowID: u32;    /**< The window with keyboard focus, if any */
    state: u8;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
    repeat: u8;       /**< Non-zero if this is a key repeat */
    padding2: u8;
    padding3: u8;
    keysym: SDL_Keysym;  /**< The key that was pressed or released */
}

SDL_TEXTEDITINGEVENT_TEXT_SIZE :: 32;
/**
 *  \brief Keyboard text editing event structure (event.edit.*)
 */
SDL_TextEditingEvent :: struct #ordered
{
    event_type: u32;                                /**< ::SDL_TEXTEDITING */
    timestamp: u32;
    windowID: u32;                            /**< The window with keyboard focus, if any */
    text: [SDL_TEXTEDITINGEVENT_TEXT_SIZE]u8;  /**< The editing text */
    start: i32;                               /**< The start cursor of selected editing text */
    length: i32;                              /**< The length of selected editing text */
}


SDL_TEXTINPUTEVENT_TEXT_SIZE :: 32;
/**
 *  \brief Keyboard text input event structure (event.text.*)
 */
SDL_TextInputEvent :: struct #ordered
{
    event_type: u32;                              /**< ::SDL_TEXTINPUT */
    timestamp: u32;
    windowID: u32;                          /**< The window with keyboard focus, if any */
    text: [SDL_TEXTINPUTEVENT_TEXT_SIZE]u8;  /**< The input text */
}

/**
 *  \brief Mouse motion event structure (event.motion.*)
 */
SDL_MouseMotionEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_MOUSEMOTION */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    state: u32;       /**< The current button state */
    x: i32;           /**< X coordinate, relative to window */
    y: i32;           /**< Y coordinate, relative to window */
    xrel: i32;        /**< The relative motion in the X direction */
    yrel: i32;        /**< The relative motion in the Y direction */
}

/**
 *  \brief Mouse button event structure (event.button.*)
 */
SDL_MouseButtonEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    button: u8;       /**< The mouse button index */
    state: u8;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
    clicks: u8;       /**< 1 for single-click, 2 for double-click, etc. */
    padding1: u8;
    x: i32;           /**< X coordinate, relative to window */
    y: i32;           /**< Y coordinate, relative to window */
}

/**
 *  \brief Mouse wheel event structure (event.wheel.*)
 */
SDL_MouseWheelEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_MOUSEWHEEL */
    timestamp: u32;
    windowID: u32;    /**< The window with mouse focus, if any */
    which: u32;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
    x: i32;           /**< The amount scrolled horizontally, positive to the right and negative to the left */
    y: i32;           /**< The amount scrolled vertically, positive away from the user and negative toward the user */
    direction: u32;   /**< Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back */
}

/**
 *  \brief Joystick axis motion event structure (event.jaxis.*)
 */
SDL_JoyAxisEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_JOYAXISMOTION */
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
SDL_JoyBallEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_JOYBALLMOTION */
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
SDL_JoyHatEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_JOYHATMOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    hat: u8;          /**< The joystick hat index */
    value: u8;        /**< The hat position value.
                         *   \sa ::SDL_HAT_LEFTUP ::SDL_HAT_UP ::SDL_HAT_RIGHTUP
                         *   \sa ::SDL_HAT_LEFT ::SDL_HAT_CENTERED ::SDL_HAT_RIGHT
                         *   \sa ::SDL_HAT_LEFTDOWN ::SDL_HAT_DOWN ::SDL_HAT_RIGHTDOWN
                         *
                         *   Note that zero means the POV is centered.
                         */
    padding1: u8;
    padding2: u8;
}

/**
 *  \brief Joystick button event structure (event.jbutton.*)
 */
SDL_JoyButtonEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_JOYBUTTONDOWN or ::SDL_JOYBUTTONUP */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    button: u8;       /**< The joystick button index */
    state: u8;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
    padding1: u8;
    padding2: u8;
}

/**
 *  \brief Joystick device event structure (event.jdevice.*)
 */
SDL_JoyDeviceEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_JOYDEVICEADDED or ::SDL_JOYDEVICEREMOVED */
    timestamp: u32;
    which: i32;       /**< The joystick device index for the ADDED event, instance id for the REMOVED event */
}


/**
 *  \brief Game controller axis motion event structure (event.caxis.*)
 */
SDL_ControllerAxisEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_CONTROLLERAXISMOTION */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    axis: u8;         /**< The controller axis (SDL_GameControllerAxis) */
    padding1: u8;
    padding2: u8;
    padding3: u8;
    value: i16;       /**< The axis value (range: -32768 to 32767) */
    padding4: u16;
}


/**
 *  \brief Game controller button event structure (event.cbutton.*)
 */
SDL_ControllerButtonEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_CONTROLLERBUTTONDOWN or ::SDL_CONTROLLERBUTTONUP */
    timestamp: u32;
    which: i32; /**< The joystick instance id */
    button: u8;       /**< The controller button (SDL_GameControllerButton) */
    state: u8;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
    padding1: u8;
    padding2: u8;
}


/**
 *  \brief Controller device event structure (event.cdevice.*)
 */
SDL_ControllerDeviceEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_CONTROLLERDEVICEADDED, ::SDL_CONTROLLERDEVICEREMOVED, or ::SDL_CONTROLLERDEVICEREMAPPED */
    timestamp: u32;
    which: i32;       /**< The joystick device index for the ADDED event, instance id for the REMOVED or REMAPPED event */
}

/**
 *  \brief Audio device event structure (event.adevice.*)
 */
SDL_AudioDeviceEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_AUDIODEVICEADDED, or ::SDL_AUDIODEVICEREMOVED */
    timestamp: u32;
    which: u32;       /**< The audio device index for the ADDED event (valid until next SDL_GetNumAudioDevices() call), SDL_AudioDeviceID for the REMOVED event */
    iscapture: u8;    /**< zero if an output device, non-zero if a capture device. */
    padding1: u8;
    padding2: u8;
    padding3: u8;
}


/**
 *  \brief Touch finger event structure (event.tfinger.*)
 */
SDL_TouchFingerEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_FINGERMOTION or ::SDL_FINGERDOWN or ::SDL_FINGERUP */
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
SDL_MultiGestureEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_MULTIGESTURE */
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
SDL_DollarGestureEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_DOLLARGESTURE or ::SDL_DOLLARRECORD */
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
 *         This event is enabled by default, you can disable it with SDL_EventState().
 *  \note If this event is enabled, you must free the filename in the event.
 */
SDL_DropEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_DROPBEGIN or ::SDL_DROPFILE or ::SDL_DROPTEXT or ::SDL_DROPCOMPLETE */
    timestamp: u32;
    file: ^u8;         /**< The file name, which should be freed with SDL_free(), is NULL on begin/complete */
    windowID: u32;    /**< The window that was dropped on, if any */
}


/**
 *  \brief The "quit requested" event
 */
SDL_QuitEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_QUIT */
    timestamp: u32;
}

/**
 *  \brief OS Specific event
 */
SDL_OSEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_QUIT */
    timestamp: u32;
}

/**
 *  \brief A user-defined event type (event.user.*)
 */
SDL_UserEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_USEREVENT through ::SDL_LASTEVENT-1 */
    timestamp: u32;
    windowID: u32;    /**< The associated window if any */
    code: i32;        /**< User defined event code */
    data1: ^rawptr;        /**< User defined data pointer */
    data2: ^rawptr;        /**< User defined data pointer */
}

/**
 *  \brief A video driver dependent system event (event.syswm.*)
 *         This event is disabled by default, you can enable it with SDL_EventState()
 *
 *  \note If you want to use this event, you should include SDL_syswm.h.
 */
SDL_SysWMEvent :: struct #ordered
{
    event_type: u32;        /**< ::SDL_SYSWMEVENT */
    timestamp: u32;
    msg: ^SDL_SysWMmsg;  /**< driver dependent data, defined in SDL_syswm.h */
}

main :: proc()
{

}