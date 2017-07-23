// Incomplete
// Incomplete
// Incomplete
// Incomplete
// Incomplete
// Incomplete

import . "sdl.odin";

foreign_system_library (
	lib "SDL2_image.lib";
)

foreign lib {
	IMG_Init
	IMG_Linked_Version
	IMG_Load
	IMG_LoadBMP_RW
	IMG_LoadCUR_RW
	IMG_LoadGIF_RW
	IMG_LoadICO_RW
	IMG_LoadJPG_RW
	IMG_LoadLBM_RW
	IMG_LoadPCX_RW
	IMG_LoadPNG_RW
	IMG_LoadPNM_RW
	IMG_LoadTGA_RW
	IMG_LoadTIF_RW
	IMG_LoadTexture
	IMG_LoadTextureTyped_RW
	IMG_LoadTexture_RW
	IMG_LoadTyped_RW
	IMG_LoadWEBP_RW
	IMG_LoadXCF_RW
	IMG_LoadXPM_RW
	IMG_LoadXV_RW
	IMG_Load_RW
	IMG_Quit
	IMG_ReadXPMFromArray
	IMG_SavePNG
	IMG_SavePNG_RW
	IMG_isBMP
	IMG_isCUR
	IMG_isGIF
	IMG_isICO
	IMG_isJPG
	IMG_isLBM
	IMG_isPCX
	IMG_isPNG
	IMG_isPNM
	IMG_isTIF
	IMG_isWEBP
	IMG_isXCF
	IMG_isXPM
	IMG_isXV
}

IMG_InitFlags :: enum i32
{
    IMG_INIT_JPG = 0x00000001,
    IMG_INIT_PNG = 0x00000002,
    IMG_INIT_TIF = 0x00000004,
    IMG_INIT_WEBP = 0x00000008
}