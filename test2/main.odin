package test

import sdl "shared:odin-sdl2"
import sdl_image "shared:odin-sdl2/image"
import sdl_ttf "shared:odin-sdl2/ttf"

main :: proc() {
	sdl.init(sdl.Init_Flags.Everything);
	window := sdl.create_window("Test window", i32(sdl.Window_Pos.Undefined), i32(sdl.Window_Pos.Undefined), 800, 600, sdl.Window_Flags(0));
	renderer := sdl.create_renderer(window, -1, sdl.Renderer_Flags(0));

	sdl_image.init(sdl_image.Init_Flags.PNG);
	sdl_ttf.init();

	texture := sdl_image.load_texture(renderer, "test.png");

	font := sdl_ttf.open_font("arial.ttf", 32);
	text_surface := sdl_ttf.render_utf8_solid(font, "odin-sdl2 now supports packages!", sdl.Color{0, 255, 0, 255});
	text_texture := sdl.create_texture_from_surface(renderer, text_surface);
	sdl.free_surface(text_surface);

	running := true;
	for running {
		e: sdl.Event;
		for sdl.poll_event(&e) != 0 {
			if e.type == sdl.Event_Type.Quit {
				running = false;
			}
		}
		sdl.set_render_draw_color(renderer, 255, 0, 255, 255);
		sdl.render_clear(renderer);

		pos := sdl.Rect{20, 20, 50, 50};
		sdl.render_copy(renderer, texture, nil, &pos);

		pos.y = 100;
		sdl.query_texture(text_texture, nil, nil, &pos.w, &pos.h);
		sdl.render_copy(renderer, text_texture, nil, &pos);

		sdl.render_present(renderer);
	}

	sdl.quit();
}
