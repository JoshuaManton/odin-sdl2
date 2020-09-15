package test

import sdl_image "../image";

run_image :: proc() {
    using sdl_image;

    test_init := init;
    test_linked_version := linked_version;
    test_load := load;
    test_load_bmp_rw := load_bmp_rw;
    test_load_cur_rw := load_cur_rw;
    test_load_gif_rw := load_gif_rw;
    test_load_ico_rw := load_ico_rw;
    test_load_jpg_rw := load_jpg_rw;
    test_load_lbm_rw := load_lbm_rw;
    test_load_pcx_rw := load_pcx_rw;
    test_load_png_rw := load_png_rw;
    test_load_pnm_rw := load_pnm_rw;
    test_load_tga_rw := load_tga_rw;
    test_load_tif_rw := load_tif_rw;
    test_load_texture := load_texture;
    test_load_texture_typed_rw := load_texture_typed_rw;
    test_load_texture_rw := load_texture_rw;
    test_load_typed_rw := load_typed_rw;
    test_load_webp_rw := load_webp_rw;
    test_load_xcf_rw := load_xcf_rw;
    test_load_xpm_rw := load_xpm_rw;
    test_load_xv_rw := load_xv_rw;
    test_load_rw := load_rw;
    test_quit := quit;
    test_read_xpm_from_array := read_xpm_from_array;
    test_save_png := save_png;
    test_save_png_rw := save_png_rw;
    test_is_bmp := is_bmp;
    test_is_cur := is_cur;
    test_is_gif := is_gif;
    test_is_ico := is_ico;
    test_is_jpg := is_jpg;
    test_is_lbm := is_lbm;
    test_is_pcx := is_pcx;
    test_is_png := is_png;
    test_is_pnm := is_pnm;
    test_is_tif := is_tif;
    test_is_webp := is_webp;
    test_is_xcf := is_xcf;
    test_is_xpm := is_xpm;
    test_is_xv := is_xv;
}
