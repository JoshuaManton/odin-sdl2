SDL_BlitMap :: rawptr;
SDL_Window :: rawptr;
SDL_Renderer :: rawptr;
SDL_Texture :: rawptr;
SDL_SysWMmsg :: rawptr;

SDL_cond :: struct #ordered {};
SDL_mutex :: struct #ordered {};

SDL_AudioFormat :: u16;

SDL_AudioCVT :: struct #ordered
{
    needed: i32;                 /**< Set to 1 if conversion possible */
    src_format: SDL_AudioFormat; /**< Source audio format */
    dst_format: SDL_AudioFormat; /**< Target audio format */
    rate_incr: i64;           /**< Rate conversion increment */
    buf: ^u8;                 /**< Buffer to hold entire audio data */
    len: i32;                    /**< Length of original audio buffer */
    len_cvt: i32;                /**< Length of converted audio buffer */
    len_mult: i32;               /**< buffer must be len*len_mult big */
    len_ratio: i64;           /**< Given len, final size is len*len_ratio */
    filters: [10]SDL_AudioFilter;        /**< Filter list */
    filter_index: i32;           /**< Current audio conversion function */
}

SDL_Surface :: struct #ordered
{
    flags: u32;
    format: ^SDL_Pixel_Format;
    w, h: int;
    pitch: int;
    pixels: rawptr;

    userdata: rawptr;

    locked: int;
    lock_data: rawptr;

    clip_rect: SDL_Rect;
    blip_map: ^SDL_BlitMap;

    refcount: int;
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
    ncolors: int;
    colors: ^SDL_Color;
    version: u32;
    refcount: int;
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
    refcount: int;
    next: ^SDL_Pixel_Format;
}

SDL_Rect :: struct #ordered
{
    x, y: u32;
    w, h: u32;
}

SDL_Atomic_T :: struct #ordered
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

