import "sdl.odin";
import . "strings.odin";

foreign_system_library (
	lib "SDL2_image.lib";
)

foreign lib {
	init								:: proc(flags: i32) -> i32																					#link_name "IMG_Init" ---;
	linked_version						:: proc() -> ^sdl.Version																					#link_name "IMG_Linked_Version" ---;
	_load								:: proc(file: ^u8) -> ^sdl.Surface																			#link_name "IMG_Load" ---;
	load_bmp_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadBMP_RW" ---;
	load_cur_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadCUR_RW" ---;
	load_gif_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadGIF_RW" ---;
	load_ico_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadICO_RW" ---;
	load_jpg_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadJPG_RW" ---;
	load_lbm_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadLBM_RW" ---;
	load_pcx_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadPCX_RW" ---;
	load_png_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadPNG_RW" ---;
	load_pnm_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadPNM_RW" ---;
	load_tga_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadTGA_RW" ---;
	load_tif_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadTIF_RW" ---;
	_load_texture						:: proc(renderer: ^sdl.Renderer, file: ^u8) -> ^sdl.Texture													#link_name "IMG_LoadTexture" ---;
	_load_texture_typed_rw				:: proc(renderer: ^sdl.Renderer, src: ^sdl.RwOps, freesrc: i32, img_type: ^u8) -> ^sdl.Texture				#link_name "IMG_LoadTextureTyped_RW" ---;
	load_texture_rw						:: proc(renderer: ^sdl.Renderer, src: ^sdl.RwOps, freesrc: i32) -> ^sdl.Texture								#link_name "IMG_LoadTexture_RW" ---;
	_load_typed_rw						:: proc(src: ^sdl.RwOps, freesrc: i32, img_type: ^u8) -> ^sdl.Surface										#link_name "IMG_LoadTyped_RW" ---;
	load_webp_rw						:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadWEBP_RW" ---;
	load_xcf_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadXCF_RW" ---;
	load_xpm_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadXPM_RW" ---;
	load_xv_rw							:: proc(src: ^sdl.RwOps) -> ^sdl.Surface																	#link_name "IMG_LoadXV_RW" ---;
	load_rw								:: proc(src: ^sdl.RwOps, freesrc: i32) -> ^sdl.Surface														#link_name "IMG_Load_RW" ---;
	quit								:: proc()																									#link_name "IMG_Quit" ---;
	read_xpm_from_array					:: proc(xpm: ^^u8) -> ^sdl.Surface																			#link_name "IMG_ReadXPMFromArray" ---;
	_save_png							:: proc(surface: ^sdl.Surface, file: ^u8) -> i32															#link_name "IMG_SavePNG" ---;
	save_png_rw							:: proc(surface: ^sdl.Surface, dst: ^sdl.RwOps, freedst: i32) -> i32										#link_name "IMG_SavePNG_RW" ---;
	is_bmp								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isBMP" ---;
	is_cur								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isCUR" ---;
	is_gif								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isGIF" ---;
	is_ico								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isICO" ---;
	is_jpg								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isJPG" ---;
	is_lbm								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isLBM" ---;
	is_pcx								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isPCX" ---;
	is_png								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isPNG" ---;
	is_pnm								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isPNM" ---;
	is_tif								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isTIF" ---;
	is_webp								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isWEBP" ---;
	is_xcf								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isXCF" ---;
	is_xpm								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isXPM" ---;
	is_xv								:: proc(src: ^sdl.RwOps) -> i32																				#link_name "IMG_isXV" ---;
}

// Wrappers
load :: proc(file: string) -> ^sdl.Surface { return _load(new_c_string(file)); }
load_texture :: proc(renderer: ^sdl.Renderer, file: string) -> ^sdl.Texture { return _load_texture(renderer, new_c_string(file)); }
load_texture_typed_rw :: proc(renderer: ^sdl.Renderer, src: ^sdl.RwOps, freesrc: i32, img_type: string) -> ^sdl.Texture { return _load_texture_typed_rw(renderer, src, freesrc, new_c_string(img_type)); }
load_typed_rw :: proc(src: ^sdl.RwOps, freesrc: i32, img_type: string) -> ^sdl.Surface { return _load_typed_rw(src, freesrc, new_c_string(img_type)); }
save_png :: proc(surface: ^sdl.Surface, file: string) -> i32 { return _save_png(surface, new_c_string(file)); }

InitFlags :: enum i32
{
	JPG = 0x00000001,
	PNG = 0x00000002,
	TIF = 0x00000004,
	WEBP = 0x00000008
}