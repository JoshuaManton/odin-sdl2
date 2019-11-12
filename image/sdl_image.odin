package sdl_image

import sdl "shared:odin-sdl2" // sdl package
import "core:os"

when os.OS == "windows" do foreign import lib "SDL2_image.lib";
when os.OS == "linux" do foreign import lib "system:SDL2_image";
when os.OS == "darwin" do foreign import lib "system:SDL2_image";

@(default_calling_convention="c")
foreign lib {
	@(link_name="IMG_Init") init :: proc(flags: Init_Flags) -> Init_Flags																				---;
	@(link_name="IMG_Linked_Version") linked_version :: proc() -> ^sdl.Version																				---;
	@(link_name="IMG_Load") load :: proc(file: cstring) -> ^sdl.Surface																		---;
	@(link_name="IMG_LoadBMP_RW") load_bmp_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadCUR_RW") load_cur_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadGIF_RW") load_gif_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadICO_RW") load_ico_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadJPG_RW") load_jpg_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadLBM_RW") load_lbm_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadPCX_RW") load_pcx_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadPNG_RW") load_png_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadPNM_RW") load_pnm_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadTGA_RW") load_tga_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadTIF_RW") load_tif_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadTexture") load_texture :: proc(renderer: ^sdl.Renderer, file: cstring) -> ^sdl.Texture												---;
	@(link_name="IMG_LoadTextureTyped_RW") load_texture_typed_rw :: proc(renderer: ^sdl.Renderer, src: ^sdl.Rw_Ops, freesrc: i32, img_type: cstring) -> ^sdl.Texture			---;
	@(link_name="IMG_LoadTexture_RW") load_texture_rw :: proc(renderer: ^sdl.Renderer, src: ^sdl.Rw_Ops, freesrc: i32) -> ^sdl.Texture							---;
	@(link_name="IMG_LoadTyped_RW") load_typed_rw :: proc(src: ^sdl.Rw_Ops, freesrc: i32, img_type: cstring) -> ^sdl.Surface									---;
	@(link_name="IMG_LoadWEBP_RW") load_webp_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadXCF_RW") load_xcf_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadXPM_RW") load_xpm_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_LoadXV_RW") load_xv_rw :: proc(src: ^sdl.Rw_Ops) -> ^sdl.Surface																---;
	@(link_name="IMG_Load_RW") load_rw :: proc(src: ^sdl.Rw_Ops, freesrc: i32) -> ^sdl.Surface													---;
	@(link_name="IMG_Quit") quit :: proc()																								---;
	@(link_name="IMG_ReadXPMFromArray") read_xpm_from_array :: proc(xpm: ^^u8) -> ^sdl.Surface																		---;
	@(link_name="IMG_SavePNG") save_png :: proc(surface: ^sdl.Surface, file: cstring) -> i32														---;
	@(link_name="IMG_SavePNG_RW") save_png_rw :: proc(surface: ^sdl.Surface, dst: ^sdl.Rw_Ops, freedst: i32) -> i32									---;
	@(link_name="IMG_isBMP") is_bmp :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isCUR") is_cur :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isGIF") is_gif :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isICO") is_ico :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isJPG") is_jpg :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isLBM") is_lbm :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isPCX") is_pcx :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isPNG") is_png :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isPNM") is_pnm :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isTIF") is_tif :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isWEBP") is_webp :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isXCF") is_xcf :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isXPM") is_xpm :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
	@(link_name="IMG_isXV") is_xv :: proc(src: ^sdl.Rw_Ops) -> i32																			---;
    @(link_name="SDL_GetError") get_error :: proc() -> cstring ---;
}

Init_Flags :: enum i32
{
	JPG = 0x00000001,
	PNG = 0x00000002,
	TIF = 0x00000004,
	WEBP = 0x00000008
}
