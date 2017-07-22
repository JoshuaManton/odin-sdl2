import "strings.odin";

import . "sdl_structs.odin";

foreign_system_library (
	lib "SDL2_image.lib";
)

foreign lib {
}


IMG_INIT_PNG :: 2;
