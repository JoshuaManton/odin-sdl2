package sdl_ttf

import sdl "shared:odin-sdl2" // sdl package
import "core:os"

when os.OS == "windows" do foreign import lib "SDL2_ttf.lib";
when os.OS == "linux" do foreign import lib "system:SDL2_ttf";
when os.OS == "darwin" do foreign import lib "system:SDL2_ttf";

@(default_calling_convention="c")
foreign lib {
	@(link_name="TTF_ByteSwappedUNICODE") byte_swapped_unicode :: proc(swapped: i32) 																					 ---;
	@(link_name="TTF_CloseFont") close_font :: proc(font: ^Font) 																					 ---;
	@(link_name="TTF_FontAscent") font_ascent :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_FontDescent") font_descent :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_FontFaceFamilyName") font_face_family_name :: proc(font: ^Font) -> cstring																				 ---;
	@(link_name="TTF_FontFaceIsFixedWidth") font_face_is_fixed_width :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_FontFaceStyleName") font_face_style_name :: proc(font: ^Font) -> cstring 																			 ---;
	@(link_name="TTF_FontFaces") font_faces :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_FontHeight") font_height :: proc(font: ^Font) -> i32																				 ---;
	@(link_name="TTF_FontLineSkip") font_line_skip :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_GetFontHinting") get_font_hinting :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_GetFontKerning") get_font_kerning :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_GetFontKerningSizeGlyphs") get_font_kerning_size_glyphs :: proc(font: ^Font, previous_ch: u16, ch: u16) -> i32 													 ---;
	@(link_name="TTF_GetFontOutline") get_font_outline :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_GetFontStyle") get_font_style :: proc(font: ^Font) -> i32 																			 ---;
	@(link_name="TTF_GlyphIsProvided") glyph_is_provided :: proc(font: ^Font, ch: u16) -> i32																	 ---;
	@(link_name="TTF_GlyphMetrics") glyph_metrics :: proc(font: ^Font, ch: u16, min_x, max_x, min_y, max_y, advance: ^i32) -> i32 						 ---;
	@(link_name="TTF_Init") init :: proc() -> i32 																						 ---;
	@(link_name="TTF_Linked_Version") linked_version :: proc() -> ^sdl.Version 																				 ---;
	@(link_name="TTF_OpenFont") open_font :: proc(file: cstring, pt_size: i32) -> ^Font 																 ---;
	@(link_name="TTF_OpenFontIndex") open_font_index :: proc(file: cstring, pt_size: i32, index: i32) -> ^Font 												 ---;
	@(link_name="TTF_OpenFontIndexRW") open_font_index_rw :: proc(src: ^sdl.Rw_Ops, freesrc, pt_size: i32, index: u64) -> ^Font 									 ---;
	@(link_name="TTF_OpenFontRW") open_font_rw :: proc(src: ^sdl.Rw_Ops, freesrc, pt_size: i32) -> ^Font 												 ---;
	@(link_name="TTF_Quit") quit :: proc() 																								 ---;
	@(link_name="TTF_RenderGlyph_Blended") render_glyph_blended :: proc(font: ^Font, ch: u16, fg: sdl.Color) -> ^sdl.Surface 											 ---;
	@(link_name="TTF_RenderGlyph_Shaded") render_glyph_shaded :: proc(font: ^Font, ch: u16, fg, bg: sdl.Color) -> ^sdl.Surface										 ---;
	@(link_name="TTF_RenderGlyph_Solid") render_glyph_solid :: proc(font: ^Font, ch: u16, fg: sdl.Color) -> ^sdl.Surface 											 ---;
	@(link_name="TTF_RenderText_Blended") render_text_blended :: proc(font: ^Font, text: cstring, fg: sdl.Color) -> ^sdl.Surface										 ---;
	@(link_name="TTF_RenderText_Blended_Wrapped") render_text_blended_wrapped :: proc(font: ^Font, text: cstring, fg: sdl.Color, wrap_length: u32) -> ^sdl.Surface					 ---;
	@(link_name="TTF_RenderText_Shaded") render_text_shaded :: proc(font: ^Font, text: cstring, fg, bg: sdl.Color) -> ^sdl.Surface 									 ---;
	@(link_name="TTF_RenderText_Solid") render_text_solid :: proc(font: ^Font, text: cstring, fg: sdl.Color) -> ^sdl.Surface 											 ---;
	@(link_name="TTF_RenderUNICODE_Blended") render_unicode_blended :: proc(font: ^Font, text: ^u16, fg: sdl.Color) -> ^sdl.Surface 										 ---;
	@(link_name="TTF_RenderUNICODE_Blended_Wrapped") render_unicode_blended_wrapped :: proc(font: ^Font, text: ^u16, fg: sdl.Color, wrap_length: u32) -> ^sdl.Surface 						 ---;
	@(link_name="TTF_RenderUNICODE_Shaded") render_unicode_shaded :: proc(font: ^Font, text: ^u16, fg, bg: sdl.Color) -> ^sdl.Surface 									 ---;
	@(link_name="TTF_RenderUNICODE_Solid") render_unicode_solid :: proc(font: ^Font, text: ^u16, fg: sdl.Color) -> ^sdl.Surface 										 ---;
	@(link_name="TTF_RenderUTF8_Blended") render_utf8_blended :: proc(font: ^Font, text: cstring, fg: sdl.Color) -> ^sdl.Surface 										 ---;
	@(link_name="TTF_RenderUTF8_Blended_Wrapped") render_utf8_blended_wrapped :: proc(font: ^Font, text: cstring, fg: sdl.Color, wrap_length: u32) -> ^sdl.Surface 					 ---;
	@(link_name="TTF_RenderUTF8_Shaded") render_utf8_shaded :: proc(font: ^Font, text: cstring, fg, bg: sdl.Color) -> ^sdl.Surface 									 ---;
	@(link_name="TTF_RenderUTF8_Solid") render_utf8_solid :: proc(font: ^Font, text: cstring, fg: sdl.Color) -> ^sdl.Surface 											 ---;
	@(link_name="TTF_SetFontHinting") set_font_hinting :: proc(font: ^Font, hinting: i32) 																		 ---;
	@(link_name="TTF_SetFontKerning") set_font_kerning :: proc(font: ^Font, allowed: i32) 																		 ---;
	@(link_name="TTF_SetFontOutline") set_font_outline :: proc(font: ^Font, outline: i32) 																		 ---;
	@(link_name="TTF_SetFontStyle") set_font_style :: proc(font: ^Font, style: i32) 																		 ---;
	@(link_name="TTF_SizeText") size_text :: proc(font: ^Font, text: cstring, w, h: ^i32) -> i32 														 ---;
	@(link_name="TTF_SizeUNICODE") size_unicode :: proc(font: ^Font, text: ^u16, w, h: ^i32) -> i32														 ---;
	@(link_name="TTF_SizeUTF8") size_utf8 :: proc(font: ^Font, text: cstring, w, h: ^i32) -> i32														 ---;
	@(link_name="TTF_WasInit") was_init :: proc() -> i32 																						 ---;
}

HINTING_NORMAL :: 0;
HINTING_LIGHT  :: 1;
HINTING_MONO   :: 2;
HINTING_NONE   :: 3;

STYLE_NORMAL        :: 0x00;
STYLE_BOLD          :: 0x01;
STYLE_ITALIC        :: 0x02;
STYLE_UNDERLINE     :: 0x04;
STYLE_STRIKETHROUGH :: 0x08;

UNICODE_BOM_NATIVE  :: 0xFEFF;
UNICODE_BOM_SWAPPED :: 0xFFFE;

Font :: struct {};
