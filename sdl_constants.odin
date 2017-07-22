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

// Input stuff

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