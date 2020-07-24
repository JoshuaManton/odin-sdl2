package test

import sdl_ttf "../ttf";

run_ttf :: proc() {
    using sdl_ttf;

    test_byte_swapped_unicode := byte_swapped_unicode;
    test_close_font := close_font;
    test_font_ascent := font_ascent;
    test_font_descent := font_descent;
    test_font_face_family_name := font_face_family_name;
    test_font_face_is_fixed_width := font_face_is_fixed_width;
    test_font_face_style_name := font_face_style_name;
    test_font_faces := font_faces;
    test_font_height := font_height;
    test_font_line_skip := font_line_skip;
    test_get_font_hinting := get_font_hinting;
    test_get_font_kerning := get_font_kerning;
    test_get_font_kerning_size_glyphs := get_font_kerning_size_glyphs;
    test_get_font_outline := get_font_outline;
    test_get_font_style := get_font_style;
    test_glyph_is_provided := glyph_is_provided;
    test_glyph_metrics := glyph_metrics;
    test_init := init;
    test_linked_version := linked_version;
    test_open_font := open_font;
    test_open_font_index := open_font_index;
    test_open_font_index_rw := open_font_index_rw;
    test_open_font_rw := open_font_rw;
    test_quit := quit;
    test_render_glyph_blended := render_glyph_blended;
    test_render_glyph_shaded := render_glyph_shaded;
    test_render_glyph_solid := render_glyph_solid;
    test_render_text_blended := render_text_blended;
    test_render_text_blended_wrapped := render_text_blended_wrapped;
    test_render_text_shaded := render_text_shaded;
    test_render_text_solid := render_text_solid;
    test_render_unicode_blended := render_unicode_blended;
    test_render_unicode_blended_wrapped := render_unicode_blended_wrapped;
    test_render_unicode_shaded := render_unicode_shaded;
    test_render_unicode_solid := render_unicode_solid;
    test_render_utf8_blended := render_utf8_blended;
    test_render_utf8_blended_wrapped := render_utf8_blended_wrapped;
    test_render_utf8_shaded := render_utf8_shaded;
    test_render_utf8_solid := render_utf8_solid;
    test_set_font_hinting := set_font_hinting;
    test_set_font_kerning := set_font_kerning;
    test_set_font_outline := set_font_outline;
    test_set_font_style := set_font_style;
    test_size_text := size_text;
    test_size_unicode := size_unicode;
    test_size_utf8 := size_utf8;
    test_was_init := was_init;
}
