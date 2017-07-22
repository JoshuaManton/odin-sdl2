SDL_BlitMap :: rawptr;
SDL_Window :: rawptr;
SDL_Renderer :: rawptr;
SDL_Texture :: rawptr;
SDL_SysWMmsg :: rawptr;

SDL_Cond :: struct #ordered {};
SDL_Mutex :: struct #ordered {};
SDL_Sem :: struct #ordered {};
SDL_Haptic :: struct #ordered {};
SDL_Joystick :: struct #ordered {};
SDL_Game_Controller :: struct #ordered {};
SDL_Cursor :: struct #ordered {};

SDL_Joystick_Id :: i32;
SDL_Timer_Id :: i32;
SDL_Spin_Lock :: i32;
SDL_Audio_Device :: u32;
SDL_Audio_Format :: u16;
SDL_Keycode :: i32;

SDL_Hint_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
SDL_Event_Filter :: proc(userdata: rawptr, param: ^SDL_Event) -> i32 #cc_c;
SDL_Timer_Callback :: proc(interval: u32, param: rawptr) -> u32 #cc_c;
SDL_Audio_Filter :: proc(cvt: ^SDL_Audio_Cvt, format: SDL_Audio_Format) #cc_c;

SDL_Bool :: enum i32
{
    SDL_False,
    SDL_True
}

SDL_Game_Controller_Button :: enum i32
{
    SDL_CONTROLLER_BUTTON_INVALID = -1,
    SDL_CONTROLLER_BUTTON_A,
    SDL_CONTROLLER_BUTTON_B,
    SDL_CONTROLLER_BUTTON_X,
    SDL_CONTROLLER_BUTTON_Y,
    SDL_CONTROLLER_BUTTON_BACK,
    SDL_CONTROLLER_BUTTON_GUIDE,
    SDL_CONTROLLER_BUTTON_START,
    SDL_CONTROLLER_BUTTON_LEFTSTICK,
    SDL_CONTROLLER_BUTTON_RIGHTSTICK,
    SDL_CONTROLLER_BUTTON_LEFTSHOULDER,
    SDL_CONTROLLER_BUTTON_RIGHTSHOULDER,
    SDL_CONTROLLER_BUTTON_DPAD_UP,
    SDL_CONTROLLER_BUTTON_DPAD_DOWN,
    SDL_CONTROLLER_BUTTON_DPAD_LEFT,
    SDL_CONTROLLER_BUTTON_DPAD_RIGHT,
    SDL_CONTROLLER_BUTTON_MAX
}

SDL_Game_Controller_Axis :: enum i32
{
    SDL_CONTROLLER_AXIS_INVALID = -1,
    SDL_CONTROLLER_AXIS_LEFTX,
    SDL_CONTROLLER_AXIS_LEFTY,
    SDL_CONTROLLER_AXIS_RIGHTX,
    SDL_CONTROLLER_AXIS_RIGHTY,
    SDL_CONTROLLER_AXIS_TRIGGERLEFT,
    SDL_CONTROLLER_AXIS_TRIGGERRIGHT,
    SDL_CONTROLLER_AXIS_MAX
}

SDL_Audio_Spec :: struct #ordered 
{
    freq: i32;                   /**< DSP frequency -- samples per second */
    format: SDL_Audio_Format;     /**< Audio data format */
    channels: u8;             /**< Number of channels: 1 mono, 2 stereo */
    silence: u8;              /**< Audio buffer silence value (calculated) */
    samples: u16;             /**< Audio buffer size in samples (power of 2) */
    padding: u16;             /**< Necessary for some compile environments */
    size: u32;                /**< Audio buffer size in bytes (calculated) */
    callback: SDL_Audio_Callback; /**< Callback that feeds the audio device (NULL to use SDL_QueueAudio()). */
    userdata: rawptr;             /**< Userdata passed to callback (ignored for NULL callbacks). */
}

SDL_Joystick_Guid :: struct #ordered
{
    data: [16]u8;
}

SDL_Audio_Cvt :: struct #ordered
{
    needed: i32;                 /**< Set to 1 if conversion possible */
    src_format: SDL_Audio_Format; /**< Source audio format */
    dst_format: SDL_Audio_Format; /**< Target audio format */
    rate_incr: i64;           /**< Rate conversion increment */
    buf: ^u8;                 /**< Buffer to hold entire audio data */
    len: i32;                    /**< Length of original audio buffer */
    len_cvt: i32;                /**< Length of converted audio buffer */
    len_mult: i32;               /**< buffer must be len*len_mult big */
    len_ratio: i64;           /**< Given len, final size is len*len_ratio */
    filters: [10]SDL_Audio_Filter;        /**< Filter list */
    filter_index: i32;           /**< Current audio conversion function */
}

SDL_Surface :: struct #ordered
{
    flags: u32;
    format: ^SDL_Pixel_Format;
    w, h: i32;
    pitch: i32;
    pixels: rawptr;

    userdata: rawptr;

    locked: i32;
    lock_data: rawptr;

    clip_rect: SDL_Rect;
    blip_map: ^SDL_BlitMap;

    refcount: i32;
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
    ncolors: i32;
    colors: ^SDL_Color;
    version: u32;
    refcount: i32;
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
    refcount: i32;
    next: ^SDL_Pixel_Format;
}

SDL_Rect :: struct #ordered
{
    x, y: u32;
    w, h: u32;
}

SDL_Atomic :: struct #ordered
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

SDL_Haptic_Effect :: struct #raw_union
{
    /* Common for all force feedback effects */
    haptic_type: u16;                    /**< Effect type. */
    constant: SDL_Haptic_Constant;    /**< Constant effect. */
    periodic: SDL_Haptic_Periodic;    /**< Periodic effect. */
    condition: SDL_Haptic_Condition;  /**< Condition effect. */
    ramp: SDL_Haptic_Ramp;            /**< Ramp effect. */
    leftright: SDL_Haptic_Left_Right;  /**< Left/Right effect. */
    custom: SDL_Haptic_Custom;        /**< Custom effect. */
}

SDL_Haptic_Constant :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_CONSTANT */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Constant */
    level: i16;           /**< Strength of the constant effect. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
}

SDL_Haptic_Periodic :: struct
{
    /* Header */
    haptic_type: u16;        /**< ::SDL_HAPTIC_SINE, ::SDL_HAPTIC_LEFTRIGHT,
                             ::SDL_HAPTIC_TRIANGLE, ::SDL_HAPTIC_SAWTOOTHUP or
                             ::SDL_HAPTIC_SAWTOOTHDOWN */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;      /**< Duration of the effect. */
    delay: u16;       /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;      /**< Button that triggers the effect. */
    interval: u16;    /**< How soon it can be triggered again after button. */

    /* Periodic */
    period: u16;      /**< Period of the wave. */
    magnitude: i16;   /**< Peak value; if negative, equivalent to 180 degrees extra phase shift. */
    offset: i16;      /**< Mean value of the wave. */
    phase: u16;       /**< Positive phase shift given by hundredth of a degree. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16; /**< Duration of the fade. */
    fade_level: u16;  /**< Level at the end of the fade. */
}

SDL_Haptic_Direction :: struct
{
    haptic_type: u8;         /**< The type of encoding. */
    dir: [3]i32;      /**< The encoded direction. */
}

SDL_Haptic_Condition :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_SPRING, ::SDL_HAPTIC_DAMPER,
                                 ::SDL_HAPTIC_INERTIA or ::SDL_HAPTIC_FRICTION */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect - Not used ATM. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Condition */
    right_sat: [3]u16;    /**< Level when joystick is to the positive side; max 0xFFFF. */
    left_sat: [3]u16;     /**< Level when joystick is to the negative side; max 0xFFFF. */
    right_coeff: [3]i16;  /**< How fast to increase the force towards the positive side. */
    left_coeff: [3]i16;   /**< How fast to increase the force towards the negative side. */
    deadband: [3]u16;     /**< Size of the dead zone; max 0xFFFF: whole axis-range when 0-centered. */
    center: [3]i16;       /**< Position of the dead zone. */
}

SDL_Haptic_Ramp :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_RAMP */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Ramp */
    start: i16;           /**< Beginning strength level. */
    end: i16;             /**< Ending strength level. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
}

SDL_Haptic_Left_Right :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_LEFTRIGHT */

    /* Replay */
    length: u32;          /**< Duration of the effect. */

    /* Rumble */
    large_magnitude: u16; /**< Control of the large controller motor. */
    small_magnitude: u16; /**< Control of the small controller motor. */
}

SDL_Haptic_Custom :: struct
{
    /* Header */
    haptic_type: u16;            /**< ::SDL_HAPTIC_CUSTOM */
    direction: SDL_Haptic_Direction;  /**< Direction of the effect. */

    /* Replay */
    length: u32;          /**< Duration of the effect. */
    delay: u16;           /**< Delay before starting the effect. */

    /* Trigger */
    button: u16;          /**< Button that triggers the effect. */
    interval: u16;        /**< How soon it can be triggered again after button. */

    /* Custom */
    channels: u8;         /**< Axes to use, minimum of one. */
    period: u16;          /**< Sample periods. */
    samples: u16;         /**< Amount of samples. */
    data: ^u16;           /**< Should contain channels*samples items. */

    /* Envelope */
    attack_length: u16;   /**< Duration of the attack. */
    attack_level: u16;    /**< Level at the start of the attack. */
    fade_length: u16;     /**< Duration of the fade. */
    fade_level: u16;      /**< Level at the end of the fade. */
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

