package cjglfw
import std.collection.*

public class glfw{

   ////////////////常量///////////////////////////////////////////////////
      public let	GLFW_TRUE=1//一。
      public let	GLFW_FALSE=0//零。
      public let	GLFW_HAT_CENTERED=0
      public let	GLFW_HAT_UP=1
      public let	GLFW_HAT_RIGHT=2
      public let	GLFW_HAT_DOWN=4
      public let	GLFW_HAT_LEFT=8
      public let	GLFW_HAT_RIGHT_UP=GLFW_HAT_RIGHT|GLFW_HAT_UP
      public let	GLFW_HAT_RIGHT_DOWN=GLFW_HAT_RIGHT|GLFW_HAT_DOWN
      public let	GLFW_HAT_LEFT_UP=GLFW_HAT_LEFT|GLFW_HAT_UP
      public let	GLFW_HAT_LEFT_DOWN=GLFW_HAT_LEFT|GLFW_HAT_DOWN
      public let	GLFW_KEY_UNKNOWN=-1
      public let	GLFW_KEY_SPACE=32
      public let	GLFW_KEY_APOSTROPHE=39   /*'*/
      public let	GLFW_KEY_COMMA=44 /*，*/
      public let	GLFW_KEY_MINUS=45 /*-*/
      public let	GLFW_KEY_PERIOD=46 /*.*/
      public let	GLFW_KEY_SLASH=47  //*/*/
      public let	GLFW_KEY_0=48
      public let	GLFW_KEY_1=49
      public let	GLFW_KEY_2=50
      public let	GLFW_KEY_3=51
      public let	GLFW_KEY_4=52
      public let	GLFW_KEY_5=53
      public let	GLFW_KEY_6=54
      public let	GLFW_KEY_7=55
      public let	GLFW_KEY_8=56
      public let	GLFW_KEY_9=57
      public let	GLFW_KEY_SEMICOLON=59/*;*/
      public let	GLFW_KEY_EQUAL=61/*=*/
      public let	GLFW_KEY_A=65
      public let	GLFW_KEY_B=66
      public let	GLFW_KEY_C=67
      public let	GLFW_KEY_D=68
      public let	GLFW_KEY_E=69
      public let	GLFW_KEY_F=70
      public let	GLFW_KEY_G=71
      public let	GLFW_KEY_H=72
      public let	GLFW_KEY_I=73
      public let	GLFW_KEY_J=74
      public let	GLFW_KEY_K=75
      public let	GLFW_KEY_L=76
      public let	GLFW_KEY_M=77
      public let	GLFW_KEY_N=78
      public let	GLFW_KEY_O=79
      public let	GLFW_KEY_P=80
      public let	GLFW_KEY_Q=81
      public let	GLFW_KEY_R=82
      public let	GLFW_KEY_S=83
      public let	GLFW_KEY_T=84
      public let	GLFW_KEY_U=85
      public let	GLFW_KEY_V=86
      public let	GLFW_KEY_W=87
      public let	GLFW_KEY_X=88
      public let	GLFW_KEY_Y=89
      public let	GLFW_KEY_Z=90
      public let	GLFW_KEY_LEFT_BRACKET=91/*[*/
      public let	GLFW_KEY_BACKSLASH=92/*\*/
      public let	GLFW_KEY_RIGHT_BRACKET=93/*]*/
      public let	GLFW_KEY_GRAVE_ACCENT=96/*'*/
      public let	GLFW_KEY_WORLD_1=161/*非美国#1*/
      public let	GLFW_KEY_WORLD_2=162/*非美国#2*/
      public let	GLFW_KEY_ESCAPE=256
      public let	GLFW_KEY_ENTER=257
      public let	GLFW_KEY_TAB=258
      public let	GLFW_KEY_BACKSPACE=259
      public let	GLFW_KEY_INSERT=260
      public let	GLFW_KEY_DELETE=261
      public let	GLFW_KEY_RIGHT=262
      public let	GLFW_KEY_LEFT=263
      public let	GLFW_KEY_DOWN=264
      public let	GLFW_KEY_UP=265
      public let	GLFW_KEY_PAGE_UP=266
      public let	GLFW_KEY_PAGE_DOWN=267
      public let	GLFW_KEY_HOME=268
      public let	GLFW_KEY_END=269
      public let	GLFW_KEY_CAPS_LOCK=280
      public let	GLFW_KEY_SCROLL_LOCK=281
      public let	GLFW_KEY_NUM_LOCK=282
      public let	GLFW_KEY_PRINT_SCREEN=283
      public let	GLFW_KEY_PAUSE=284
      public let	GLFW_KEY_F1=290
      public let	GLFW_KEY_F2=291
      public let	GLFW_KEY_F3=292
      public let	GLFW_KEY_F4=293
      public let	GLFW_KEY_F5=294
      public let	GLFW_KEY_F6=295
      public let	GLFW_KEY_F7=296
      public let	GLFW_KEY_F8=297
      public let	GLFW_KEY_F9=298
      public let	GLFW_KEY_F10=299
      public let	GLFW_KEY_F11=300
      public let	GLFW_KEY_F12=301
      public let	GLFW_KEY_F13=302
      public let	GLFW_KEY_F14=303
      public let	GLFW_KEY_F15=304
      public let	GLFW_KEY_F16=305
      public let	GLFW_KEY_F17=306
      public let	GLFW_KEY_F18=307
      public let	GLFW_KEY_F19=308
      public let	GLFW_KEY_F20=309
      public let	GLFW_KEY_F21=310
      public let	GLFW_KEY_F22=311
      public let	GLFW_KEY_F23=312
      public let	GLFW_KEY_F24=313
      public let	GLFW_KEY_F25=314
      public let	GLFW_KEY_KP_0=320
      public let	GLFW_KEY_KP_1=321
      public let	GLFW_KEY_KP_2=322
      public let	GLFW_KEY_KP_3=323
      public let	GLFW_KEY_KP_4=324
      public let	GLFW_KEY_KP_5=325
      public let	GLFW_KEY_KP_6=326
      public let	GLFW_KEY_KP_7=327
      public let	GLFW_KEY_KP_8=328
      public let	GLFW_KEY_KP_9=329
      public let	GLFW_KEY_KP_DECIMAL=330
      public let	GLFW_KEY_KP_DIVIDE=331
      public let	GLFW_KEY_KP_MULTIPLY=332
      public let	GLFW_KEY_KP_SUBTRACT=333
      public let	GLFW_KEY_KP_ADD=334
      public let	GLFW_KEY_KP_ENTER=335
      public let	GLFW_KEY_KP_EQUAL=336
      public let	GLFW_KEY_LEFT_SHIFT=340
      public let	GLFW_KEY_LEFT_CONTROL=341
      public let	GLFW_KEY_LEFT_ALT=342
      public let	GLFW_KEY_LEFT_SUPER=343
      public let	GLFW_KEY_RIGHT_SHIFT=344
      public let	GLFW_KEY_RIGHT_CONTROL=345
      public let	GLFW_KEY_RIGHT_ALT=346
      public let	GLFW_KEY_RIGHT_SUPER=347
      public let	GLFW_KEY_MENU=348
      public let	GLFW_KEY_LAST=GLFW_KEY_MENU
      public let	GLFW_MOD_SHIFT=0x0001	//如果设置了此位，则按住一个或多个Shift键。
      public let	GLFW_MOD_CONTROL=0x0002	//如果设置了此位，则按住一个或多个Control键。
      public let	GLFW_MOD_ALT=0x0004	//如果设置了此位，则按住一个或多个Alt键。
      public let	GLFW_MOD_SUPER=0x0008	//如果设置了此位，则按住一个或多个Super键。
      public let	GLFW_MOD_CAPS_LOCK=0x0010	//如果设置了此位，则启用CapsLock键。
      public let	GLFW_MOD_NUM_LOCK=0x0020	//如果设置了此位，则启用NumLock键。
      public let	GLFW_MOUSE_BUTTON_1=0
      public let	GLFW_MOUSE_BUTTON_2=1
      public let	GLFW_MOUSE_BUTTON_3=2
      public let	GLFW_MOUSE_BUTTON_4=3
      public let	GLFW_MOUSE_BUTTON_5=4
      public let	GLFW_MOUSE_BUTTON_6=5
      public let	GLFW_MOUSE_BUTTON_7=6
      public let	GLFW_MOUSE_BUTTON_8=7
      public let	GLFW_MOUSE_BUTTON_LAST=GLFW_MOUSE_BUTTON_8
      public let	GLFW_MOUSE_BUTTON_LEFT=GLFW_MOUSE_BUTTON_1
      public let	GLFW_MOUSE_BUTTON_RIGHT=GLFW_MOUSE_BUTTON_2
      public let	GLFW_MOUSE_BUTTON_MIDDLE=GLFW_MOUSE_BUTTON_3
      public let	GLFW_JOYSTICK_1=0
      public let	GLFW_JOYSTICK_2=1
      public let	GLFW_JOYSTICK_3=2
      public let	GLFW_JOYSTICK_4=3
      public let	GLFW_JOYSTICK_5=4
      public let	GLFW_JOYSTICK_6=5
      public let	GLFW_JOYSTICK_7=6
      public let	GLFW_JOYSTICK_8=7
      public let	GLFW_JOYSTICK_9=8
      public let	GLFW_JOYSTICK_10=9
      public let	GLFW_JOYSTICK_11=10
      public let	GLFW_JOYSTICK_12=11
      public let	GLFW_JOYSTICK_13=12
      public let	GLFW_JOYSTICK_14=13
      public let	GLFW_JOYSTICK_15=14
      public let	GLFW_JOYSTICK_16=15
      public let	GLFW_JOYSTICK_LAST=GLFW_JOYSTICK_16
      public let	GLFW_GAMEPAD_BUTTON_A=0
      public let	GLFW_GAMEPAD_BUTTON_B=1
      public let	GLFW_GAMEPAD_BUTTON_X=2
      public let	GLFW_GAMEPAD_BUTTON_Y=3
      public let	GLFW_GAMEPAD_BUTTON_LEFT_BUMPER=4
      public let	GLFW_GAMEPAD_BUTTON_RIGHT_BUMPER=5
      public let	GLFW_GAMEPAD_BUTTON_BACK=6
      public let	GLFW_GAMEPAD_BUTTON_START=7
      public let	GLFW_GAMEPAD_BUTTON_GUIDE=8
      public let	GLFW_GAMEPAD_BUTTON_LEFT_THUMB=9
      public let	GLFW_GAMEPAD_BUTTON_RIGHT_THUMB=10
      public let	GLFW_GAMEPAD_BUTTON_DPAD_UP=11
      public let	GLFW_GAMEPAD_BUTTON_DPAD_RIGHT=12
      public let	GLFW_GAMEPAD_BUTTON_DPAD_DOWN=13
      public let	GLFW_GAMEPAD_BUTTON_DPAD_LEFT=14
      public let	GLFW_GAMEPAD_BUTTON_LAST=GLFW_GAMEPAD_BUTTON_DPAD_LEFT
      public let	GLFW_GAMEPAD_BUTTON_CROSS=GLFW_GAMEPAD_BUTTON_A
      public let	GLFW_GAMEPAD_BUTTON_CIRCLE=GLFW_GAMEPAD_BUTTON_B
      public let	GLFW_GAMEPAD_BUTTON_SQUARE=GLFW_GAMEPAD_BUTTON_X
      public let	GLFW_GAMEPAD_BUTTON_TRIANGLE=GLFW_GAMEPAD_BUTTON_Y
      public let	GLFW_GAMEPAD_AXIS_LEFT_X=0
      public let	GLFW_GAMEPAD_AXIS_LEFT_Y=1
      public let	GLFW_GAMEPAD_AXIS_RIGHT_X=2
      public let	GLFW_GAMEPAD_AXIS_RIGHT_Y=3
      public let	GLFW_GAMEPAD_AXIS_LEFT_TRIGGER=4
      public let	GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER=5
      public let	GLFW_GAMEPAD_AXIS_LAST=GLFW_GAMEPAD_AXIS_RIGHT_TRIGGER
      public let	GLFW_NO_ERROR=0//未发生错误。
      public let	GLFW_NOT_INITIALIZED=0x00010001//GLFW尚未初始化。
      public let	GLFW_NO_CURRENT_CONTEXT=0x00010002//此线程没有当前上下文。
      public let	GLFW_INVALID_ENUM=0x00010003//该函数的参数之一是无效的枚举值。
      public let	GLFW_INVALID_VALUE=0x00010004//该函数的参数之一是无效值。
      public let	GLFW_OUT_OF_MEMORY=0x00010005//内存分配失败。
      public let	GLFW_API_UNAVAILABLE=0x00010006//GLFW在系统上找不到对所请求API的支持。
      public let	GLFW_VERSION_UNAVAILABLE=0x00010007//请求的OpenGL或OpenGLES版本不可用。
      public let	GLFW_PLATFORM_ERROR=0x00010008//发生了与任何更具体的类别都不匹配的特定于平台的错误。
      public let	GLFW_FORMAT_UNAVAILABLE=0x00010009//请求的格式不受支持或不可用。
      public let	GLFW_NO_WINDOW_CONTEXT=0x0001000A//指定的窗口没有OpenGL或OpenGLES上下文。
      public let	GLFW_CURSOR_UNAVAILABLE=0x0001000B//指定的游标形状不可用。
      public let	GLFW_FEATURE_UNAVAILABLE=0x0001000C//平台不提供请求的功能。
      public let	GLFW_FEATURE_UNIMPLEMENTED=0x0001000D//请求的功能未为平台实现。
      public let	GLFW_PLATFORM_UNAVAILABLE=0x0001000E//平台不可用或未找到匹配的平台。
      public let	GLFW_FOCUSED=0x00020001//输入焦点窗口提示和属性。
      public let	GLFW_ICONIFIED=0x00020002//窗口图标化窗口属性。
      public let	GLFW_RESIZABLE=0x00020003//窗口调整大小能力-窗口提示和属性。
      public let	GLFW_VISIBLE=0x00020004//窗口可见性窗口提示和属性。
      public let	GLFW_DECORATED=0x00020005//窗口装饰窗口提示和属性。
      public let	GLFW_AUTO_ICONIFY=0x00020006//窗口自动图标化窗口提示和属性。
      public let	GLFW_FLOATING=0x00020007//窗口装饰窗口提示和属性。
      public let	GLFW_MAXIMIZED=0x00020008//窗口最大化窗口提示和属性。
      public let	GLFW_CENTER_CURSOR=0x00020009//光标居中窗口提示。
      public let	GLFW_TRANSPARENT_FRAMEBUFFER=0x0002000A//窗口框架缓冲区透明度提示和属性。
      public let	GLFW_HOVERED=0x0002000B//鼠标光标悬停窗口属性。
      public let	GLFW_FOCUS_ON_SHOW=0x0002000C//输入焦点在调用showwindowhint和attribute上。
      public let	GLFW_MOUSE_PASSTHROUGH=0x0002000D//鼠标输入透明度窗口提示和属性。
      public let	GLFW_POSITION_X=0x0002000E//初始位置x坐标窗口提示。
      public let	GLFW_POSITION_Y=0x0002000F//初始位置y坐标窗口提示。
      public let	GLFW_RED_BITS=0x00021001//Framebuffer位深度提示。
      public let	GLFW_GREEN_BITS=0x00021002//Framebuffer位深度提示。
      public let	GLFW_BLUE_BITS=0x00021003//Framebuffer位深度提示。
      public let	GLFW_ALPHA_BITS=0x00021004//Framebuffer位深度提示。
      public let	GLFW_DEPTH_BITS=0x00021005//Framebuffer位深度提示。
      public let	GLFW_STENCIL_BITS=0x00021006//Framebuffer位深度提示。
      public let	GLFW_ACCUM_RED_BITS=0x00021007//Framebuffer位深度提示。
      public let	GLFW_ACCUM_GREEN_BITS=0x00021008	//Framebuffer位深度提示。
      public let	GLFW_ACCUM_BLUE_BITS=0x00021009//Framebuffer位深度提示。
      public let	GLFW_ACCUM_ALPHA_BITS=0x0002100A	//Framebuffer位深度提示。
      public let	GLFW_AUX_BUFFERS=0x0002100B	//Framebuffer辅助缓冲区提示。
      public let	GLFW_STEREO=0x0002100C //OpenGL立体渲染提示。
      public let	GLFW_SAMPLES=0x0002100D	//帧缓冲区MSAA样本提示。
      public let	GLFW_SRGB_CAPABLE=0x0002100E	//帧缓冲区sRGB提示。
      public let	GLFW_REFRESH_RATE=0x0002100F	//监视器刷新率提示。
      public let	GLFW_DOUBLEBUFFER=0x00021010	//帧缓冲区双缓冲提示和属性。
      public let	GLFW_CLIENT_API=0x00022001//上下文客户端API提示和属性。
      public let	GLFW_CONTEXT_VERSION_MAJOR=0x00022002//上下文客户端API主要版本提示和属性。
      public let	GLFW_CONTEXT_VERSION_MINOR=0x00022003//上下文客户端API次要版本提示和属性。
      public let	GLFW_CONTEXT_REVISION=0x00022004//上下文客户端API修订号属性。
      public let	GLFW_CONTEXT_ROBUSTNESS=0x00022005//上下文健壮性提示和属性。
      public let	GLFW_OPENGL_FORWARD_COMPAT=0x00022006//OpenGL向前兼容性提示和属性。
      public let	GLFW_CONTEXT_DEBUG=0x00022007	//调试模式上下文提示和属性。
      public let	GLFW_OPENGL_DEBUG_CONTEXT=GLFW_CONTEXT_DEBUG	//用于兼容性的旧名称。
      public let	GLFW_OPENGL_PROFILE=0x00022008	//OpenGL配置文件提示和属性。
      public let	GLFW_CONTEXT_RELEASE_BEHAVIOR=0x00022009	//上下文flush-on-release提示和属性。
      public let	GLFW_CONTEXT_NO_ERROR=0x0002200A	//上下文错误抑制提示和属性。
      public let	GLFW_CONTEXT_CREATION_API=0x0002200B	//上下文创建API提示和属性。
      public let	GLFW_SCALE_TO_MONITOR=0x0002200C	//窗口内容区域缩放窗口窗口提示。
      public let	GLFW_SCALE_FRAMEBUFFER=0x0002200D	//窗口帧缓冲区缩放窗口提示。
      public let	GLFW_COCOA_RETINA_FRAMEBUFFER=0x00023001	//用于兼容性的旧名称。
      public let	GLFW_COCOA_FRAME_NAME=0x00023002	//macOS特定的窗口提示。
      public let	GLFW_COCOA_GRAPHICS_SWITCHING=0x00023003	//macOS特定的窗口提示。
      public let	GLFW_X11_CLASS_NAME=0x00024001	//特定于X11的窗口提示。
      public let	GLFW_X11_INSTANCE_NAME=0x00024002	//特定于X11的窗口提示。
      public let	GLFW_WIN32_KEYBOARD_MENU=0x00025001
      public let	GLFW_WIN32_SHOWDEFAULT=0x00025002	//特定于Win32的窗口提示。
      public let	GLFW_WAYLAND_APP_ID=0x00026001	//Wayland特定的窗口提示。
      public let	GLFW_NO_API=0
      public let	GLFW_OPENGL_API=0x00030001
      public let	GLFW_OPENGL_ES_API=0x00030002
      public let	GLFW_NO_ROBUSTNESS=0
      public let	GLFW_NO_RESET_NOTIFICATION=0x00031001
      public let	GLFW_LOSE_CONTEXT_ON_RESET=0x00031002
      public let	GLFW_OPENGL_ANY_PROFILE=0
      public let	GLFW_OPENGL_CORE_PROFILE=0x00032001
      public let	GLFW_OPENGL_COMPAT_PROFILE=0x00032002
      public let	GLFW_CURSOR=0x00033001
      public let	GLFW_STICKY_KEYS=0x00033002
      public let	GLFW_STICKY_MOUSE_BUTTONS=0x00033003
      public let	GLFW_LOCK_KEY_MODS=0x00033004
      public let	GLFW_RAW_MOUSE_MOTION=0x00033005
      public let	GLFW_CURSOR_NORMAL=0x00034001
      public let	GLFW_CURSOR_HIDDEN=0x00034002
      public let	GLFW_CURSOR_DISABLED=0x00034003
      public let	GLFW_CURSOR_CAPTURED=0x00034004
      public let	GLFW_ANY_RELEASE_BEHAVIOR=0
      public let	GLFW_RELEASE_BEHAVIOR_FLUSH=0x00035001
      public let	GLFW_RELEASE_BEHAVIOR_NONE=0x00035002
      public let	GLFW_NATIVE_CONTEXT_API=0x00036001
      public let	GLFW_EGL_CONTEXT_API=0x00036002
      public let	GLFW_OSMESA_CONTEXT_API=0x00036003
      public let	GLFW_ANGLE_PLATFORM_const_NONE=0x00037001
      public let	GLFW_ANGLE_PLATFORM_const_OPENGL=0x00037002
      public let	GLFW_ANGLE_PLATFORM_const_OPENGLES=0x00037003
      public let	GLFW_ANGLE_PLATFORM_const_D3D9=0x00037004
      public let	GLFW_ANGLE_PLATFORM_const_D3D11=0x00037005
      public let	GLFW_ANGLE_PLATFORM_const_VULKAN=0x00037007
      public let	GLFW_ANGLE_PLATFORM_const_METAL=0x00037008
      public let	GLFW_WAYLAND_PREFER_LIBDECOR=0x00038001
      public let	GLFW_WAYLAND_DISABLE_LIBDECOR=0x00038002
      public let	GLFW_ANY_POSITION=0x80000000
      public let	GLFW_ARROW_CURSOR=0x00036001	//常规箭头光标形状。
      public let	GLFW_IBEAM_CURSOR=0x00036002	//文本输入I形梁光标形状。
      public let	GLFW_CROSSHAIR_CURSOR=0x00036003	//十字光标形状。
      public let	GLFW_POINTING_HAND_CURSOR=0x00036004	//指向手形光标形状。
      public let	GLFW_RESIZE_EW_CURSOR=0x00036005	//水平调整大小/移动箭头形状。
      public let	GLFW_RESIZE_NS_CURSOR=0x00036006	//垂直调整大小/移动箭头形状
      public let	GLFW_RESIZE_NWSE_CURSOR=0x00036007	//从左上到右下的对角线调整大小/移动箭头形状。
      public let	GLFW_RESIZE_NESW_CURSOR=0x00036008	//从右上到左下对角线调整大小/移动箭头形状。
      public let	GLFW_RESIZE_ALL_CURSOR=0x00036009	//全向调整大小/移动光标形状。
      public let	GLFW_NOT_ALLOWED_CURSOR=0x0003600A	//不允许的操作形状。
      public let	GLFW_HRESIZE_CURSOR=GLFW_RESIZE_EW_CURSOR	//用于兼容性的旧名称。
      public let	GLFW_VRESIZE_CURSOR=GLFW_RESIZE_NS_CURSOR	//用于兼容性的旧名称。
      public let	GLFW_HAND_CURSOR=GLFW_POINTING_HAND_CURSOR	//用于兼容性的旧名称。
      public let	GLFW_CONNECTED=0x00040001
      public let	GLFW_DISCONNECTED=0x00040002
      public let	GLFW_JOYSTICK_HAT_BUTTONS=0x00050001	//操纵杆帽按钮初始化提示。
      public let	GLFW_ANGLE_PLATFORM_const=0x00050002	//ANGLE渲染后端inithint。
      public let	GLFW_PLATFORM=0x00050003	//Platformselectioninit提示。public let	GLFW_COCOA_CHDIR_RESOURCES=0x00051001//	macOS特定的init提示。
      public let	GLFW_COCOA_MENUBAR=0x00051002	//macOS特定的init提示。
      public let	GLFW_X11_XCB_VULKAN_SURFACE=0x00052001	//特定于X11的init提示。
      public let	GLFW_WAYLAND_LIBDECOR=0x00053001	//Wayland特定的init提示。
      public let	GLFW_ANY_PLATFORM=0x00060000	//启用自动平台选择的Hint值。
      public let	GLFW_PLATFORM_WIN32=0x00060001
      public let	GLFW_PLATFORM_COCOA=0x00060002
      public let	GLFW_PLATFORM_WAYLAND=0x00060003
      public let	GLFW_PLATFORM_X11=0x00060004
      public let	GLFW_PLATFORM_NULL=0x00060005
      public let	GLFW_DONT_CARE=-1
      //public let	GLAPIENTRYAPI=APIENTRY
      //public let	GLFW_GLAPIENTRY_DEFINED
      //GLFW版本宏
      public let	GLFW_VERSION_MAJOR=3	//GLFW标头的主版本号。
      public let	GLFW_VERSION_MINOR=4	//GLFW标头的次要版本号。
      public let	GLFW_VERSION_REVISION=0	//GLFW标头的修订版号。
      //按键和按钮操作
      public let	GLFW_RELEASE=0	//释放了key或mouse按钮。
      public let	GLFW_PRESS=1	//按下了键或鼠标按钮。
      public let	GLFW_REPEAT=2	//键被按住，直到它重复。

      public let	 VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO = 1000000000
      public let	 VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO = 1000001007
      public let	 VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO = 1000001009
      public let	 VK_STRUCTURE_TYPE_SUBMIT_INFO = 1000001004
      public let	 VK_STRUCTURE_TYPE_PRESENT_INFO_KHR = 1000001002
   ///////////////////////////////glfw函数//////////////////////////////////////////
         
      public  func  csh():Int16 {unsafe{ glfwInit()}}//初始化 GLFW 库。
      public  func  Terminate():Unit{unsafe{ glfwTerminate()}}////终止 GLFW 库。
      public  func  InitHint(hint:Int,value:Int):Unit{unsafe{glfwInitHint(hint,value)}}//设置初始化前提示值
      public  func  InitAllocator(allocator:CPointer<GLFWallocator>):Unit{unsafe{ glfwInitAllocator(allocator)}}//设置一个自定义的堆内存分配器，这个分配器将在 GLFW 初始化时被使用
      public  func  InitVulkanLoader(loader:CPointer<Unit>):Unit{unsafe{glfwInitVulkanLoader(loader)}}//设置所需的 Vulkan 函数。vkGetInstanceProcAddr
      //返回 GLFW 的版本号。
      public  func  GetVersion():(Int,Int,Int){
      var major:Int=0//版本号1
      var minor:Int=0//版本号2
      var rev:Int=0////版本号3
         unsafe{glfwGetVersion(inout major, inout minor,inout rev)}
      return (major,minor,rev)
         }//返回版本信息到参数 major, minor, rev
      public  func  GetVersionString():String{//返回描述编译时配置的字符串。
         let a=unsafe{ glfwGetVersionString()}
         let b=a.toString()
         unsafe{LibC.free(a)}
         return b
      }
      public  func  GetError(description:String):Int{unsafe{ glfwGetError(LibC.mallocCString(description))}}//返回并清除调用线程的最后一个错误提示。
      public  func  SetErrorCallback(callback:CFunc<(a:Int,b:CString)->Unit>):UIntNative{unsafe{glfwSetErrorCallback(callback)}}//设置错误回调。回调函数示例@C error(error:int , cwdm:String)
      public  func  GetPlatform():Int{unsafe{ glfwGetPlatform()}}	//返回当前选定的平台
      public  func  PlatformSupported(platform:Int):Int{unsafe{glfwPlatformSupported(platform)}}//返回库是否包含对指定平台的支持。
      //检索当前连接到系统的所有显示器。这个函数返回一个指向 GLFWmonitor 指针数组的指针，该数组包含了所有连接的显示器的句柄。你可以通过传递一个指向整数的指针来获取显示器的数量。
      public  func  GetMonitors(count:Int16):CPointer<Unit>{unsafe{glfwGetMonitors(count)}}
      //获取当前用户的主显示器，这通常是任务栏或菜单栏所在的显示器
      public  func  GetPrimaryMonitor():UIntNative{unsafe{glfwGetPrimaryMonitor()}}
      public  func  GetMonitorPos(Monitor:UIntNative):(Int,Int){
         var a=0
         var b=0
         unsafe{ glfwGetMonitorPos(Monitor,inout a, inout b)}
         return (a,b)
         }//此函数返回指定显示器左上角的位置
      
      //获取指定显示器的工作区坐标元组
      public  func  GetMonitorWorkarea(monitor: UIntNative):(Int,Int,Int,Int){
         var a: Int=1
         var b: Int=1
         var c: Int=1
         var d: Int=1
         unsafe{glfwGetMonitorWorkarea(monitor,inout a,inout b,inout c,inout d )
         
         return (a,b,c,d)
         }
         }
      public  func  GetMonitorPhysicalSize(Monitor:UIntNative):(Int,Int){
         var w=0
         var h=0
         unsafe{glfwGetMonitorPhysicalSize(Monitor, inout w, inout h)}
         return (w,h)
         }//获取指定显示器的物理尺寸，单位为毫米。返回Float32元组
      public  func  GetMonitorContentScale(Monitor:UIntNative):(Float32,Float32){
         var x:Float32=0.0
         var y:Float32=0.0
         unsafe{glfwGetMonitorContentScale(Monitor, inout x, inout y)}
         return(x,y)
         }//返回显示器内容的x,y缩放比xscale,yscale
      public  func  GetMonitorName(Monitor:UIntNative):String{//返回显示器的名称。
         let a=unsafe{ glfwGetMonitorName(Monitor)}
         let b=a.toString()
         unsafe{LibC.free(a)} 
         return b}
      public  func  SetMonitorUserPointer(Monitor:UIntNative,pointer:CPointer<Unit>):Unit{unsafe{glfwSetMonitorUserPointer(Monitor,pointer)}}//给显示器绑定一个任意指针
      public  func  GetMonitorUserPointer(Monitor:UIntNative):UIntNative{unsafe{glfwGetMonitorUserPointer(Monitor)}}//获取显示器绑定的指针

      public  func SetMonitorCallback( callback:CFunc<()->Unit>):UIntNative{unsafe{glfwSetMonitorCallback( callback)}}
      
      //:UIntNative 	//设置 Monitor 配置回调。
      
      public  func  GetVideoModes(Monitor:UIntNative):ArrayList<GLFWvidmode>{//返回指定显示器的可用视频模式到数组SZGLFWvidmode。
         var c=0
         let a=unsafe{ glfwGetVideoModes(Monitor, inout c)}//获取模式数组指针
         var b=ArrayList<GLFWvidmode>()
         for(i in 0..c)
         {
         b.append(unsafe{a.read(i)}) 
         }
         return b
         }
      public  func  GetVideoMode(Monitor:UIntNative):GLFWvidmode{unsafe{glfwGetVideoMode(Monitor)}}//返回指定显示器的当前模式。
      public  func  SetGamma(Monitor:UIntNative,Gamma:Float32):Unit{unsafe{glfwSetGamma(Monitor,Gamma)}}//设置显示器伽马值
      public  func  GetGammaRamp(Monitor:UIntNative):CPointer<GLFWgammaramp>{unsafe{ glfwGetGammaRamp(Monitor)}}//返回当前显示器的伽马坡道结构体GLFWgammaramp
      public  func  SetGammaRamp(Monitor:UIntNative,ramp:CPointer<GLFWgammaramp>):Unit{unsafe{glfwSetGammaRamp(Monitor, ramp)}}//设置当前的伽马值
      /*宽度,高度,窗口标题,显示器,关联窗口*/
      public  func  CreateWindow(width:Int, height:Int, title:String,Monitor:UIntNative,  share:UIntNative){unsafe{ glfwCreateWindow(width, height, LibC.mallocCString(title), Monitor, share)}}//创建窗口及其关联的上下文。
      public  func  DestroyWindow(window:UIntNative):Unit{unsafe{glfwDestroyWindow(window)}}//销毁窗口及其上下文。
      public  func  WindowShouldClose(window:UIntNative):Int{unsafe{glfwWindowShouldClose(window)}}//检查是否点击 关闭 标志。
      public  func  SetWindowShouldClose(window:UIntNative,value:Int):Unit{unsafe{glfwSetWindowShouldClose(window, value)}}//设置窗口的 关闭 状态。设置为 GLFW_TRUE，则窗口会关闭；如果设置为 GLFW_FALSE，则窗口不会关闭。
      /*返回窗口标题*/
      public  func  GetWindowTitle(window:UIntNative):String{
         let a=unsafe{ glfwGetWindowTitle(window)}
         let b=a.toString()
         unsafe{LibC.free(a)}
         return b}
      public  func  SetWindowTitle(window:UIntNative, title:String):Unit{unsafe{glfwSetWindowTitle(window, LibC.mallocCString(title))}}//设置窗口的标题。
      /*
      设置指定窗口的图标。
      ***count：图像数组中的图像数量，如果只有一个图像，这个值就是1。(编程语言不支持多个不开放,如若需要手动切换)**
      images：指向GLFWimage 结构体的指针，这些结构体包含了要设置为图标的图像数据。
      不是所有的平台都支持设置窗口图标*/
      public  func  SetWindowIcon( window:UIntNative,images:CPointer<GLFWimage>):Unit{unsafe{glfwSetWindowIcon(window, 1, images)}}	
      //用于获取指定窗口在屏幕上的位置,返回位置元组
      public  func  GetWindowPos(window:UIntNative):(Int,Int){
         var x=0
         var y=0
         unsafe{glfwGetWindowPos(window, inout x, inout y)}
         return (x,y)
         }
      public  func  SetWindowPos(window:UIntNative,xpos:Int, ypos:Int):Unit{unsafe{glfwSetWindowPos(window, xpos, ypos)}}//设置窗口左上角坐标位置。
      //检索窗口的内容区域 宽高返回元组
      public  func  GetWindowSize(window:UIntNative):(Int,Int){
         var w=0
         var h=0
         unsafe{glfwGetWindowSize(window, inout w, inout h)}
         return (w,h)
         }
      public  func  SetWindowSizeLimits( window:UIntNative,minwidth:Int, minheight:Int, maxwidth:Int, maxheight:Int):Unit{unsafe{glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight)}}//设置窗口最小宽度,最小高度,最大宽度,最大高度
      public  func  SetWindowAspectRatio(window:UIntNative, numer:Int, denom:Int):Unit{unsafe{glfwSetWindowAspectRatio(window, numer, denom)}}//设置指定窗口的纵横比。16 9 或者全部为GLFW_DONT_CARE设置为禁用
      public  func  SetWindowSize(window:UIntNative,width:Int, height:Int):Unit{unsafe{ glfwSetWindowSize(window, width, height)}}//设置指定窗口的内容区域的 宽,高
      //获取窗口的帧缓冲区的 宽zwidth,高zheight返回元组
      public  func  GetFramebufferSize(window:UIntNative):(Int,Int){
         var w=0
         var h=0
         unsafe{glfwGetFramebufferSize(window, inout w, inout h)}
         return (w,h)
         }
         /*用于获取 GLFW 窗口的边框大小。这个函数可以帮助你了解窗口的边框占用了多少屏幕空间，这对于某些需要精确控制窗口大小和布局的应用程序非常有用。
         返回元组（左，上，右，下）
         */
      public  func  GetWindowFrameSize(window:UIntNative):(Int,Int,Int,Int){
         var l=0
         var t=0
         var r=0
         var b=0
         unsafe{glfwGetWindowFrameSize(window, inout l, inout t, inout r, inout b)}
         return (l,t,r,b)
         }
         //获取窗口的内容缩放比例。
      public  func  GetWindowContentScale(window:UIntNative):(Float32,Float32){
         var x:Float32=0.0
         var y:Float32=0.0
         unsafe{glfwGetWindowContentScale(window, inout x, inout y)}
         return(x,y)
         }
      public  func  GetWindowOpacity(window:UIntNative):Float32{unsafe{glfwGetWindowOpacity(window)}}//返回整个窗口的不透明度。
      public  func  SetWindowOpacity(window:UIntNative,opacity:Float32):Unit{unsafe{glfwSetWindowOpacity(window, opacity)}}//设置整个窗口的不透明度。
      public  func  IconifyWindow(window:UIntNative):Unit{unsafe{ glfwIconifyWindow(window)}}//最小化窗口。
      public  func  RestoreWindow(window:UIntNative):Unit{unsafe{glfwRestoreWindow(window)}}//还原窗口。
      public  func  MaximizeWindow(window:UIntNative):Unit{unsafe{glfwMaximizeWindow(window)}}//	最大化窗口。
      public  func  ShowWindow(window:UIntNative):Unit{unsafe{glfwShowWindow(window)}}//窗口显示。
      public  func  HideWindow(window:UIntNative):Unit{unsafe{glfwHideWindow(window)}}//	隐藏窗口
      public  func  FocusWindow(window:UIntNative):Unit{unsafe{glfwFocusWindow(window)}}//将窗口置于最前面并设置输入焦点
      /*向操作系统发送一个请求，以某种形式提示用户当前应用程序需要被注意。这个请求可以导致窗口在任务栏中高亮显示、窗口标题栏闪烁，或者是在某些操作系统中将应用程序提升到前台。
      当用户开始与窗口交互时，比如点击窗口或者切换到该窗口，操作系统会自动结束这个请求，不再提示用户。这个功能特别适用于当你的应用程序在后台运行，需要以一种不打扰用户的方式提醒用户有新的通知或者更新时。*/
      public  func  RequestWindowAttention(window:UIntNative):Unit{unsafe{glfwRequestWindowAttention(window)}}
      public  func  GetWindowMonitor(window:UIntNative):UIntNative{unsafe{glfwGetWindowMonitor(window)}}//检测窗口是否全屏,全屏返回指针否则NULL
      public  func  SetWindowMonitor( window:UIntNative,Monitor:UIntNative,xpos:Int,  ypos:Int,  width:Int, height:Int,  refreshRate:Int):Unit {unsafe{glfwSetWindowMonitor(window,  Monitor,  xpos,  ypos,  width, height,  refreshRate)}}//设置窗口的xy坐标,宽,高,刷新率
      /*
      返回是否为指定状态
      attrib参数:
         GLFW_FOCUSED：窗口是否获得了输入焦点。
         GLFW_ICONIFIED：窗口是否被图标化（最小化）。
         GLFW_RESIZABLE：窗口是否可以被用户调整大小。
         GLFW_DECORATED：窗口是否有装饰（窗口边框和标题栏）。
         GLFW_FLOATING：窗口是否是浮动窗口。
         GLFW_MAXIMIZED：窗口是否被最大化。
      */
      public  func  GetWindowAttrib(window:UIntNative,attrib:Int):Int{unsafe{ glfwGetWindowAttrib(window, attrib)}}
      /*
      设置为指定状态
      attrib参数:
         GLFW_FOCUSED：窗口是否获得了输入焦点。
         GLFW_ICONIFIED：窗口是否被图标化（最小化）。
         GLFW_RESIZABLE：窗口是否可以被用户调整大小。
         GLFW_DECORATED：窗口是否有装饰（窗口边框和标题栏）。
         GLFW_FLOATING：窗口是否是浮动窗口。
         GLFW_MAXIMIZED：窗口是否被最大化。
         value：属性的新值，通常设置为 GLFW_TRUE 或 GLFW_FALSE
      */
      public  func  SetWindowAttrib( window:UIntNative,attrib:Int, value:Int):Unit{unsafe{glfwSetWindowAttrib(window, attrib, value)}}
      public  func  SetWindowUserPointer(window:UIntNative,pointer:CFunc<()->Unit>):Unit{unsafe{glfwSetWindowUserPointer(window, pointer)}}//为窗口绑定一个自定义指针
      public  func  GetWindowUserPointer(window:UIntNative):UIntNative{unsafe{glfwGetWindowUserPointer(window)}}//返回窗口的自定义指针。
      public  func  SetWindowPosCallback(window:UIntNative,callback:CFunc<()->Unit>):UIntNative{unsafe{glfwSetWindowPosCallback(window,callback)}}//为窗口设置一个位置移动回调,返回值为之前设置的回调函数的指针
      public  func  SetWindowSizeCallback(window:UIntNative,callback:CFunc<(window:UIntNative,width:Int, height:Int)->Unit>):UIntNative{unsafe{ glfwSetWindowSizeCallback(window, callback)}}//设置一个检测到窗口大小变化回调函数,返回值为之前设置的回调函数的指针
      public  func  SetWindowCloseCallback(window:UIntNative,callback:CFunc<(window:UIntNative)->Unit>):UIntNative {unsafe{ glfwSetWindowCloseCallback(window,callback)}}//设置一个触发窗口关闭回调函数,返回值为之前设置的回调函数的指针
      /*窗口设置内容刷新回调。当窗口的内容区域需要被重绘时，例如窗口在被其他窗口覆盖后暴露出来，就会调用这个回调函数,返回值为之前设置的回调函数的指针*/
      public  func  SetWindowRefreshCallback(window:UIntNative,callback:CFunc<(window:UIntNative)->Unit>):UIntNative{unsafe{glfwSetWindowRefreshCallback(window, callback)}}
      public  func  SetWindowFocusCallback(window:UIntNative,callback:CFunc<(window:UIntNative)->Unit>):UIntNative{unsafe{ glfwSetWindowFocusCallback(window,  callback)}}// 窗口设置焦点回调。当窗口获得或失去输入焦点时，这个回调函数会被调用,返回值为之前设置的回调函数的指针
      public  func  SetWindowIconifyCallback(window:UIntNative,callback:CFunc<(window:UIntNative,iconified:Int)->Unit>):UIntNative{unsafe{glfwSetWindowIconifyCallback(window,callback)}}//当窗口状态变为最小化或从最小化恢复调用函数,返回值为之前设置的回调函数的指针
      public  func  SetWindowMaximizeCallback(window:UIntNative,callback:CFunc<(window:UIntNative,iconified:Int)->Unit>):UIntNative{unsafe{ glfwSetWindowMaximizeCallback(window, callback)}}//此函数设置指定窗口的最大化回调，该回调在窗口最大化或还原时调用。,返回值为之前设置的回调函数的指针
      public  func  SetFramebufferSizeCallback(window:UIntNative, callback:CFunc<(window:UIntNative,width:Int,height:Int)->Unit>):UIntNative{unsafe{glfwSetFramebufferSizeCallback(window, callback)}}//设置帧缓冲区大小回调。当窗口的帧缓冲区（通常由于用户调整窗口大小或其他原因）被调整大小时，这个回调函数会被调用,返回值为之前设置的回调函数的指针
      /*窗口设置内容缩放回调。当窗口的内容缩放比例发生变化时，这个回调函数会被调用。内容缩放比例是指当前DPI与平台默认DPI之间的比率，这对于文本和任何UI元素尤为重要，这个回调函数会被调用,返回值为之前设置的回调函数的指针*/
      public  func  SetWindowContentScaleCallback(window:UIntNative,callback:CFunc<(window:UIntNative,width:Float32,height:Float32)->Unit> ):UIntNative{unsafe{glfwSetWindowContentScaleCallback(window,callback)}}
      
      /*参数：
      mode: 要检索的输入模式。可以是以下几种：
      GLFW_CURSOR: 检索光标模式（例如，正常、隐藏或禁用）。
      GLFW_STICKY_KEYS: 检索是否启用了粘滞键。
      GLFW_STICKY_MOUSE_BUTTONS: 检索是否启用了粘滞鼠标按钮。
      GLFW_LOCK_KEY_MODS: 检索是否在按键事件后锁定键修饰符状态。
      GLFW_RAW_MOUSE_MOTION: 检索是否启用了原始鼠标运动。
      返回值：
      指定输入模式的当前值。根据模式的不同，返回值的类型也不同：
      对于 GLFW_CURSOR，返回 GLFW_CURSOR_NORMAL、GLFW_CURSOR_HIDDEN 或 GLFW_CURSOR_DISABLED 之一。
      对于 GLFW_STICKY_KEYS 和 GLFW_STICKY_MOUSE_BUTTONS，如果已启用则返回 GLFW_TRUE(1)，如果未启用则返回 GLFW_FALSE(0)。
      对于 GLFW_LOCK_KEY_MODS，如果键修饰符状态被锁定则返回 GLFW_TRUE(1)，如果未被锁定则返回 GLFW_FALSE(0)。
      对于 GLFW_RAW_MOUSE_MOTION，如果启用了原始鼠标运动则返回 GLFW_TRUE(1)，如果未启用则返回 GLFW_FALSE(0)。*/
         public  func  GetInputMode(window:UIntNative,mode:Int):Int{unsafe{ glfwGetInputMode(window,mode)}}
      /*GLFW_CURSOR: 设置光标模式，可以有以下值：
      GLFW_CURSOR_NORMAL: 正常光标模式。
      GLFW_CURSOR_HIDDEN: 隐藏光标。
      GLFW_CURSOR_DISABLED: 禁用光标。
      GLFW_STICKY_KEYS: 设置是否启用粘滞键，可以有以下值：
      GLFW_TRUE: 启用粘滞键，即按键事件将持续直到该键被按下和释放。
      GLFW_FALSE: 禁用粘滞键。
      GLFW_STICKY_MOUSE_BUTTONS: 设置是否启用粘滞鼠标按钮，可以有以下值：
      GLFW_TRUE: 启用粘滞鼠标按钮，即鼠标按钮事件将持续直到该按钮被按下和释放。
      GLFW_FALSE: 禁用粘滞鼠标按钮。
      GLFW_LOCK_KEY_MODS: 设置是否在按键事件后锁定键修饰符状态，可以有以下值：
      GLFW_TRUE: 锁定键修饰符状态。
      GLFW_FALSE: 不锁定键修饰符状态。
      GLFW_RAW_MOUSE_MOTION: 设置是否启用原始鼠标运动，可以有以下值：
      GLFW_TRUE: 启用原始鼠标运动，即鼠标运动不受窗口边界的限制。
      GLFW_FALSE: 不启用原始鼠标运动。*/
         public  func  SetInputMode(window:UIntNative,mode:Int, value:Int):UInt{unsafe{glfwSetInputMode(window, mode, value)}}//设置指定窗口的输入选项。
         /*它用于获取指定键的状态。这个函数可以用来检测键盘上的某个键是否被按下。
         如果指定的键在指定的窗口中被按下，则返回 GLFW_PRESS。
         如果键没有被按下，则返回 GLFW_RELEASE。
         如果传入的 key 参数不是有效的键值标记，则返回 -1 并生成一个 GLFW_INVALID_ENUM 错误*/
         public  func  GetKey(window:UIntNative, key:Int):Int{unsafe{glfwGetKey(window, key)}}
         /*获取指定鼠标按钮的状态。这个函数可以用来检测鼠标上的某个按钮是否被按下。
         如果指定的按钮在指定的窗口中被按下，则返回 GLFW_PRESS。
      如果按钮没有被按下，则返回 GLFW_RELEASE。
      如果传入的 button 参数不是有效的按钮值标记，则返回 -1 并生成一个 GLFW_INVALID_ENUM 错误*/
         public  func  GetMouseButton(window:UIntNative, button:Int):Int{unsafe{glfwGetMouseButton(window, button)}}
         //返回窗口鼠标坐标xy
         public  func  GetCursorPos(window:UIntNative):(Float64,Float64){
            var x=0.0
            var y=0.0
            unsafe{glfwGetCursorPos(window,inout x,inout y)}
            return(x,y)
            }
         public  func  SetCursorPos(window:UIntNative,xpos:Float64, ypos:Float64):Unit{unsafe{glfwSetCursorPos(window,xpos,ypos)}}//设置鼠标坐标到窗口指定位置
         public  func  SetCursor(window:UIntNative,cursor:CPointer<GLFWimage>):Unit{unsafe{glfwSetCursor(window, cursor)}}//设置窗口的光标图案。
         /*为窗口绑定按钮回调函数,返回值为之前设置的回调函数的指针
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWkeyfun)(GLFWwindow*, int, int, int, int)。
         回调函数的参数如下：
         window：触发事件的窗口。
         key：被按下或释放的键。
         scancode：平台特定的键的扫描码。
         action：按键的动作，可以是 GLFW_PRESS、GLFW_RELEASE 或 GLFW_REPEAT。
         mods：按键时被按下的任何修饰键（如 Shift、Ctrl、Alt）。
         */
         public  func  SetKeyCallback(window:UIntNative,callback:CFunc<(win:CPointer<Unit>,key:Int,scatcode:Int,action:Int,mods:Int)->Unit>):UIntNative{unsafe{glfwSetKeyCallback(window,callback)}}
         /*
         设置窗口 Unicode 字符回调,返回值为之前设置的回调函数的指针,获取输入
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWcharfun)(GLFWwindow*, unsigned int)。
         回调函数的参数如下：
         window：触发事件的窗口。
         codepoint：输入的 Unicode 码点。*/
         public  func  SetCharCallback(window:UIntNative,callback:CFunc<(win:CPointer<Unit>,codepoint:UIntNative)->Unit>):UIntNative{unsafe{glfwSetCharCallback(window, callback)}}
         /*设置窗口带有修饰符的 Unicode 字符回调,返回值为之前设置的回调函数的指针,用于绑定快捷键
         window：触发事件的窗口。
         codepoint：输入的 Unicode 码点。
         mods：按下的修饰键的位字段。
         GLFW_MOD_SHIFT：Shift 键被按下。
         GLFW_MOD_CONTROL：Ctrl 键被按下。
         GLFW_MOD_ALT：Alt 键被按下。
         GLFW_MOD_SUPER：Command/Windows 键被按下。
         */
         public  func  SetCharModsCallback(window:UIntNative,callback:CFunc<(win:CPointer<Unit>,codepoint:UIntNative,mods:Int)->Unit>):UIntNative{unsafe{glfwSetCharModsCallback(window, callback)}}
         /*
         
         为窗口绑定鼠标点击事件,返回值为之前设置的回调函数的指针.
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWmousebuttonfun)(GLFWwindow*, int, int, int)。
         回调函数的参数如下：

         window：触发事件的窗口。
         button：被按下或释放的鼠标按钮。可能的值包括 GLFW_MOUSE_BUTTON_LEFT、GLFW_MOUSE_BUTTON_RIGHT 和 GLFW_MOUSE_BUTTON_MIDDLE，以及其他可能的按钮。
         action：鼠标按钮的动作，可以是 GLFW_PRESS 或 GLFW_RELEASE。
         mods：按下的修饰键的位字段，例如 GLFW_MOD_SHIFT、GLFW_MOD_CONTROL 等。
         */
         public  func  SetMouseButtonCallback(window:UIntNative,callback:CFunc<(win:CPointer<Unit>,button:Int,action:Int,mods:Int)->Unit>):UIntNative{unsafe{glfwSetMouseButtonCallback(window, callback)}}
         /*设置窗口鼠标移动回调,返回值为之前设置的回调函数的指针
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWcursorposfun)(GLFWwindow*, double, double)。
         回调函数的参数如下：

         window：触发事件的窗口。
         xpos：鼠标在窗口内容区域中的水平位置，相对于左上角。
         ypos：鼠标在窗口内容区域中的垂直位置，相对于左上角。
         */
         
         public  func  SetCursorPosCallback(window:UIntNative,callback:CFunc<(window:UIntNative,xpos:Float64,ypos:Float64)->Unit>):UIntNative{unsafe{glfwSetCursorPosCallback(window, callback)}}//
         /*
         返回值为之前设置的回调函数的指针
         鼠标光标进入或离开窗口的客户区域时被调用
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWcursorenterfun)(GLFWwindow*, int)。
         回调函数的参数如下：
         window：触发事件的窗口。
         entered：如果光标进入窗口的客户区域，则为 GLFW_TRUE；如果光标离开，则为 GLFW_FALSE。
         */
         
         public  func  SetCursorEnterCallback(window:UIntNative,callback:CFunc<(window:UIntNative,entered:Int)->Unit>):UIntNative{unsafe{ glfwSetCursorEnterCallback(window, callback)}}//设置窗口光标进入/离开回调,返回值为之前设置的回调函数的指针
         /*   设置一个鼠标滚轮调用函数
         返回值为之前设置的回调函数的指针
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWscrollfun)(GLFWwindow*, double, double)。
         回调函数的参数如下：
         window：触发事件的窗口。
         xoffset：滚轮在 x 轴方向上的滚动量。
         yoffset：滚轮在 y 轴方向上的滚动量。
         */
         
         public  func  SetScrollCallback(window:UIntNative,callback:CFunc<(window:UIntNative,xoffset:Float64,yoffset:Float64)->Unit>):UIntNative{unsafe{ glfwSetScrollCallback(window, callback)}}
         /*
         为窗口设置一个回调函数，以便在用户将文件或目录拖放到窗口上时被调用
         callback：一个指向回调函数的指针，该函数的原型为 void(*GLFWdropfun)(GLFWwindow*, int, const char**)。
         回调函数的参数如下：
         window：触发事件的窗口。
         count：拖放的文件或目录的数量。
         paths：一个指向以 null 结尾的字符串数组的指针，每个字符串包含一个文件或目录的路径。
         */
         
         public  func  SetDropCallback(window:UIntNative,callback:CFunc<(window:UIntNative,count:Int,paths:VArray<CString,$9999>)->Unit>):UIntNative{unsafe{glfwSetDropCallback(window,callback)}}

         public  func  SetClipboardString(window:UIntNative,string:String):Unit{unsafe{glfwSetClipboardString(window, LibC.mallocCString(string))}}//将剪贴板设置为指定的字符串。
         public  func  GetClipboardString(window:UIntNative):String{//以字符串形式返回剪贴板的内容
            let a=unsafe{glfwGetClipboardString(window)}
            let b=a.toString()
            unsafe{LibC.free(a)}
            return b
            }
            
         public  func  GetTime():Float64{unsafe{ glfwGetTime()}}//返回 GLFW 时间。
         public  func  SetTime(time:Float64):Unit{unsafe{glfwSetTime(time)}}//设置 GLFW 时间。
         public  func  GetTimerValue():UInt64{unsafe{glfwGetTimerValue()}}//返回原始计时器的当前值。
         public  func  GetTimerFrequency():UInt64{unsafe{glfwGetTimerFrequency()}}//返回原始计时器的频率(Hz)。
         /*
         用于设置当前线程的当前上下文的函数。在 OpenGL 编程中，每个线程可以有一个“当前上下文”，这是该线程进行 OpenGL 调用时的目标图形上下文。上下文包括 OpenGL 的所有状态，包括纹理、缓冲区、着色器等
         当你创建一个窗口并创建其 OpenGL 上下文后，你需要调用 glfwMakeContextCurrent 来激活这个上下文，之后才能进行 OpenGL 调用。
         */
         
         public  func  MakeContextCurrent(window:UIntNative):Unit {unsafe{glfwMakeContextCurrent(window)}}
         /*
         用于获取当前线程的当前 OpenGL 上下文。这个函数可以帮助你确定当前线程的 OpenGL 状态，或者在多线程环境中管理不同的 OpenGL 上下文
         这个函数没有参数，并返回当前线程的当前 OpenGL 上下文的指针，如果当前没有上下文，则返回 NULL。
         */
         public  func  GetCurrentContext():UIntNative{unsafe{glfwGetCurrentContext()}}
         public  func  SwapBuffers(window:UIntNative):Unit{unsafe{glfwSwapBuffers(window)}}//交换窗口的前后缓冲区。
         public  func  SwapInterval(interval:Int):Unit{unsafe{glfwSwapInterval(interval)}}//用于设置垂直同步（V-Sync）的行为。垂直同步是一种技术，用于同步应用程序的帧渲染和显示器的刷新率，以减少屏幕撕裂现象。屏幕撕裂发生在应用程序渲染帧的速度与显示器刷新率不同步时，导致屏幕上的图像看起来被分割。interval：指定垂直同步的间隔。如果设置为零，则关闭垂直同步。如果设置为一个正整数.
         /*
         用于检查当前 OpenGL 或 OpenGL ES 上下文中是否支持指定的 API 扩展。这个函数会搜索 OpenGL 和 OpenGL ES 的扩展以及平台特定的上下文创建 API 扩展。
         extension：指定要检查的扩展的 ASCII 编码名称。
         如果指定的扩展可用，则返回 GLFW_TRUE；否则返回 GLFW_FALSE。
         必须有一个当前的 OpenGL 或 OpenGL ES 上下文。如果没有当前上下文就调用此函数，将会引发 GLFW_NO_CURRENT_CONTEXT 错误
         */
         public  func  ExtensionSupported(extension:String):Int{unsafe{glfwExtensionSupported(LibC.mallocCString(extension))}}
         /*用于获取 OpenGL 或 OpenGL ES 扩展函数的地址,以在运行时动态加载 OpenGL 函数指针。
         参数说明:
         procname：要获取地址的函数的名称。
         返回值：
         返回指定的 OpenGL 或 OpenGL ES 函数的地址。如果发生错误或函数不存在，则返回 NULL。
         */
         public  func  GetProcAddress(procname:String):CPointer<Unit>{unsafe{glfwGetProcAddress(LibC.mallocCString(procname))}}
         public  func  VulkanSupported():Int {unsafe{glfwVulkanSupported()}}//用于检查当前系统是否支持 Vulkan。这个函数会检查 Vulkan 装载器和任何最小功能的 ICD 是否存在。如果找到 Vulkan 装载器和至少一个功能完备的 ICD，则返回 GLFW_TRUE；否则返回 GLFW_FALSE。
         /*
         用于检索创建 Vulkan 表面所需的 Vulkan 实例扩展列表。这个函数对于 Vulkan 开发者来说非常重要，因为它提供了 GLFW 创建窗口表面所依赖的扩展名称数组。
         类变量Vulkanint存储返回数量
         */
         public  func  etRequiredInstanceExtensions():ArrayList<String>{
            var d=0
            let a=unsafe{glfwGetRequiredInstanceExtensions(inout d)}
            var b=ArrayList<String>()
            var c:CString=unsafe{LibC.mallocCString("")}
                  for(i in 0..d)
            {
               c=unsafe{a.read(Int64(i))}
               b.append(c.toString())
            }
            unsafe{LibC.free(c)}
            return b
            }
            /*
            用于获取 Vulkan 实例中指定函数地址的函数。这个函数可以用来获取 Vulkan API 核心或者扩展函数的地址。如果你正在动态加载 Vulkan 装载器而不是直接链接它，你可以使用这个函数来加载 Vulkan 核心或者扩展函数的地址
            instance：指定 Vulkan 实例，或者传递 NULL 来获取与实例创建相关的函数。
            procname：指定要获取地址的函数的 ASCII 编码名称。
            */
         public  func  GetInstanceProcAddress(instance:VkApplicationInfo,procname:String):UIntNative{unsafe{glfwGetInstanceProcAddress(instance,LibC.mallocCString(procname))}}
      /*查询特定的 Vulkan 物理设备的队列家族是否支持图像呈现。这个函数对于确定哪个队列家族可以用于图形渲染和交换链图像的呈现非常有用。
         instance: 一个有效的 Vulkan 实例。
         device: 一个 Vulkan 物理设备的句柄。
         queuefamily: 队列家族的索引。*/
         public  func  GetPhysicalDevicePresentationSupport(instance:VkApplicationInfo ,device:UInt32, queuefamily:UInt32):Int{unsafe{glfwGetPhysicalDevicePresentationSupport(instance,device, queuefamily)}}
         public  func  CreateWindowSurface(instance:VkApplicationInfo,Monitor:UIntNative, allocator:CPointer<Unit>, surface:CPointer<Unit>):UIntNative {unsafe{glfwCreateWindowSurface(instance, Monitor, allocator, surface)}}	//为指定窗口创建 Vulkan 表面。
            

      //////////////////C返回空白结构体指针////////////////////////////////
      public  func  fhVkApplicationInfo(){return unsafe { LibC.malloc<VkApplicationInfo>() }}//返回空白VkApplicationInfo结构体的指针
      public  func  fhGLFWvidmode(){return unsafe { LibC.malloc<GLFWvidmode>() }}//返回空白GLFWvidmode结构体的指针
      public  func  fhGLFWgammaramp(){return unsafe { LibC.malloc<GLFWgammaramp>() }}//返回空白GLFWgammaramp结构体的指针
      public  func  fhGLFWimage(){return unsafe { LibC.malloc<GLFWimage>() }}//返回空白GLFWimage结构体的指针
      public  func  fhGLFWgamepadstate(){return unsafe { LibC.malloc<GLFWgamepadstate>() }}//返回空白GLFWgamepadstate结构体的指针
      public  func  fhGLFWallocator(){return unsafe { LibC.malloc<GLFWallocator>() }}//返回空白GLFWallocator结构体的指针

      /////////////////////////////////////////////////全局函数////////////////////////////
      
         public  func  DefaultWindowHints():Unit{unsafe{glfwDefaultWindowHints()}}//将所有窗口提示重置为其默认值。
         /*
         GLFW_CONTEXT_VERSION_MAJOR：指定 OpenGL 上下文的主要版本号。
         GLFW_CONTEXT_VERSION_MINOR：指定 OpenGL 上下文的次要版本号。
         GLFW_OPENGL_PROFILE：指定 OpenGL 核心模式或兼容性模式。
         GLFW_OPENGL_FORWARD_COMPAT：指定是否创建一个向前兼容的 OpenGL 上下文。
         GLFW_RESIZABLE：指定窗口是否可以被用户调整大小。
         GLFW_VISIBLE：指定窗口是否在创建时可见。
         GLFW_DECORATED：指定窗口是否应该有边框和标题栏。
         GLFW_FOCUSED：指定窗口是否在创建时获得焦点。
         GLFW_AUTO_ICONIFY：指定窗口是否在获得焦点时自动最小化。
         GLFW_FLOATING：指定窗口是否始终在其他窗口之上。
         GLFW_MAXIMIZED：指定窗口是否在创建时最大化。
         GLFW_CENTER_CURSOR：指定光标是否在窗口创建时居中。
         GLFW_RED_BITS、GLFW_GREEN_BITS、GLFW_BLUE_BITS：指定颜色缓冲区的位数。
         GLFW_ALPHA_BITS：指定 alpha 缓冲区的位数。
         GLFW_DEPTH_BITS：指定深度缓冲区的位数。
         GLFW_STENCIL_BITS：指定模板缓冲区的位数。
         GLFW_SAMPLES：指定 FSAA 样本数。。*/
         public  func  WindowHint(hint:Int, value:Int):Unit {unsafe{ glfwWindowHint(hint, value)}}//设置程序窗口整数值。
         /*
         WindowHintString(GLFW_CLIENT_API, "gl")
         GLFW_CLIENT_API：指定客户端 API 的字符串，可以是 "gl"（代表 OpenGL）或 "gles"（代表 OpenGL ES）。
         GLFW_CONTEXT_VERSION_MAJOR 和 GLFW_CONTEXT_VERSION_MINOR：指定 OpenGL 上下文的主要和次要版本号。
         GLFW_CONTEXT_ROBUSTNESS：指定 OpenGL 上下文的鲁棒性策略。
         GLFW_OPENGL_FORWARD_COMPAT：如果设置为 GLFW_TRUE，则创建一个向前兼容的 OpenGL 上下文。
         GLFW_OPENGL_DEBUG_CONTEXT：如果设置为 GLFW_TRUE，则创建一个OpenGL调试上下文。
         GLFW_OPENGL_PROFILE：指定 OpenGL 配置文件。
         GLFW_COCOA_RETINA_FRAMEBUFFER：在 macOS 上，如果设置为 GLFW_TRUE，则创建一个 Retina 框架缓冲区。*/
         public  func  WindowHintString(hint:Int, value:CString):Unit{unsafe{glfwWindowHintString(hint, value)}}//设置程序窗口字符串值。
         
         public  func  PollEvents():Unit{unsafe{glfwPollEvents()}}//当你创建一个窗口并进入主循环时，通常需要调用 PollEvents 来处理事件。这个函数会将事件放入事件队列，然后如果有设置相应的回调函数，它会被调用。
      /*它会使调用线程进入等待状态，直到有事件进入事件队列。一旦有事件可用，它就会处理这些事件，然后立即返回。这与 PollEvents 函数的行为相同，即处理队列中的事件，然后返回。但是，WaitEvents 会在没有事件时阻塞线程，而 glfwPollEvents 则不会。*/
         public  func  WaitEvents():Unit{unsafe{glfwWaitEvents()}}
         public  func  WaitEventsTimeout(timeout:Float64):Unit{unsafe{glfwWaitEventsTimeout(timeout)}}//它允许你在等待事件时设置一个超时时间(以秒为单位)。这个函数会使调用线程进入休眠状态，直到至少有一个事件在事件队列中可用，或者达到了指定的超时时间。如果有事件可用，它的行为就像 PollEvents，即队列中的事件会被处理，然后函数会立即返回。事件处理会导致与这些事件相关联的窗口和输入回调被调用。
         public  func  PostEmptyEvent():Unit{unsafe{glfwPostEmptyEvent()}}//将空事件发布到事件队列。


         
         ////////////////////////////////////////////鼠标函数////////////////////////////////////////////////////////////////////////////////
         public  func  RawMouseMotionSupported():Int{unsafe{ glfwRawMouseMotionSupported()}}//查询当前系统是否支持原始鼠标运动,原始鼠标运动允许鼠标移动事件在操作系统层面被捕获，而不受窗口边界的限制，这对于某些类型的游戏和应用非常有用，比如需要捕获鼠标在窗口外部移动的情况。
         public  func  GetKeyName(key:Int, scancode:Int):CPointer<UInt8>{unsafe{ glfwGetKeyName(key, scancode)}}//用于获取与特定键码对应的本地化名称，应该在 GLFW 的上下文已经创建和初始化之后调用此函数。
         public  func  GetKeyScancode(key:Int):Int{unsafe{glfwGetKeyScancode(key)}}//返回指定键的在系统是否可用,可用返回键值否则返回-1
         public  func  CreateCursor(image:CPointer<GLFWimage>,xhot:Int, yhot:Int):UIntNative{unsafe{  glfwCreateCursor(image,xhot,yhot)}}//参数:光标图案、宽、高,创建自定义光标图案,如果创建光标失败，glfwCreateCursor 将返回 NULL，因此你应该检查返回值以确保光标创建成功
      
         /*创建具有标准形状光标图案。
         参数 shape 指定了要创建的标准光标形状。GLFW 定义了以下标准光标形状：
         GLFW_ARROW_CURSOR：普通的箭头光标。
         GLFW_IBEAM_CURSOR：通常用于文本编辑器的 I 形光标。
         GLFW_CROSSHAIR_CURSOR：用于精确选择的十字光标。
         GLFW_HAND_CURSOR：手形光标，通常用于链接。
         GLFW_HRESIZE_CURSOR：水平调整大小的光标。
         GLFW_VRESIZE_CURSOR：垂直调整大小的光标。
         GLFW_CONNECTED_HAND_CURSOR：当拖动可连接内容时使用，例如拖动文件到文件夹。
         GLFW_DISCONNECTED_HAND_CURSOR：当拖动不可连接内容时使用。*/
         public  func  CreateStandardCursor(shape:Int):UIntNative{unsafe{glfwCreateStandardCursor(shape)}}
         public  func  DestroyCursor(cursor:CPointer<GLFWimage>):Unit{unsafe{glfwDestroyCursor(cursor)}}//销毁指定的光标图案

         ////////////////////手柄函数/////////////////////////////////////////////////////////////////
         /*检查游戏手柄是否存在
         jid：要检查的 游戏手柄 的 ID，可以是 GLFW_JOYSTICK_1 到 GLFW_JOYSTICK_LAST 之间的任何值。
         返回值：
         如果指定的 游戏手柄 存在，则返回 GLFW_TRUE（即 1）。
         如果指定的 游戏手柄 不存在，则返回 GLFW_FALSE（即 0）*/
         public  func  JoystickPresent(jid:Int):Int{unsafe{ glfwJoystickPresent(jid)}}
         /*
         返回指定游戏手柄的所有轴的值。最高99
         jid：要查询的 游戏手柄 的 ID。
         sbcountint：一个指向整数的指针变量，用于存储返回数组中的轴值数量。
         返回值：
         返回一个指向浮点数数组的指针，其中包含了 游戏手柄 的所有轴的状态值。如果 游戏手柄 不存在，则返回 NULL。
         */
         public  func  GetJoystickAxes(jid:Int):ArrayList<Float32>{
            var d=0
            var a:CPointer<Float32>=unsafe{glfwGetJoystickAxes(jid, inout d)}
            var b=ArrayList<Float32>()
            
            for(i in 0..d) 
            {
               b.append(unsafe{a.read(i-1)})
            }
            return b 
            }

         /*jid 是指定的游戏手柄的 ID。
         sbButtons为存储数量的指针变量
         返回值是一个指向按钮状态数组的指针，如果游戏手柄不存在或发生错误，则返回 NULL。*/
         public  func  GetJoystickButtons(jid:Int):ArrayList<UInt8>
         {
         var d=0
            let a=unsafe{glfwGetJoystickButtons(jid, inout d)}
            var b=ArrayList<UInt8>()
            for(i in 0..d) 
            {
               b.append(unsafe{a.read(i-1)})
            }
            return b  }
         /*
         sbstickHats是一个指向整数的指针，用于存储返回的帽子开关状态数组中的元素数量。
         返回值是一个指向帽子开关状态数组的指针。数组中的每个元素都是一个 unsigned char，表示一个帽子开关的状态。状态值可以是以下宏之一：
         GLFW_HAT_CENTERED：中心位置。
         GLFW_HAT_UP：向上。
         GLFW_HAT_RIGHT：向右。
         GLFW_HAT_DOWN：向下。
         GLFW_HAT_LEFT：向左。
         GLFW_HAT_RIGHT_UP：右上。
         GLFW_HAT_RIGHT_DOWN：右下。
         GLFW_HAT_LEFT_UP：左上。
         GLFW_HAT_LEFT_DOWN：左下。*/
         public  func  GetJoystickHats(jid:Int):ArrayList<UInt8>
         { 
            var d=0
            let a=unsafe{glfwGetJoystickHats(jid, inout d)}
         var b=ArrayList<UInt8>()
         
            for(i in 0..d) 
            {
               b.append(unsafe{a.read(i-1)})
            }
            return b 
         }

         //返回指定游戏手柄的名称。
         public  func  GetJoystickName(jid:Int):String{
            var a=unsafe{glfwGetJoystickName(jid)}
            return a.toString()
            }
         // 获取指定游戏手柄的 SDL 兼容的 GUID（全局唯一标识符）  
         public  func  GetJoystickGUID(jid:Int):String{
            var a=unsafe{glfwGetJoystickGUID(jid)}
            return a.toString()
            }

         public  func  SetJoystickUserPointer(jid:Int, pointer:CPointer<Unit>):Unit{unsafe{glfwSetJoystickUserPointer(jid, pointer)}}//为指定游戏手柄设置一个任意指针
         public  func  etJoystickUserPointer(jid:Int):UIntNative{unsafe{glfwGetJoystickUserPointer(jid)}}//返回游戏手柄以前设置的指针
         public  func  JoystickIsGamepad(jid:Int):Int{unsafe{glfwJoystickIsGamepad(jid)}}//这个函数返回一个整数，如果游戏手柄是一个游戏板，则返回 GLFW_TRUE（非零），否则返回 GLFW_FALSE（零）。这允许你区分不同类型的游戏输入设备，例如标准游戏手柄和飞行摇杆。
         public  func  SetJoystickCallback(callback:CFunc<(joy:Int,event:Int)->Unit>):UIntNative{unsafe{glfwSetJoystickCallback(callback)}} //设置一个游戏手柄连接和断开的回调函数
         /*用于更新游戏手柄的映射。这个函数接受一个字符串参数，该字符串包含了一个或多个游戏手柄的映射信息，这些映射信息可以是单行或者是多行，并且可以包含空行和注释。这些映射信息遵循 gamecontrollerdb.txt 文件的完整格式
         如果你需要在运行时添加新的游戏手柄映射，或者更新现有的映射，你可以使用这个函数。如果内部列表中已经存在某个 GUID 的游戏手柄映射，那么它将被这个函数传入的映射信息所替换。如果库被终止并重新初始化，内部列表将恢复到内置的默认设置。
         这个函数必须在主线程中调用，并且它返回 GLFW_TRUE 表示成功，或者在发生错误时返回 GLFW_FALSE
         */
         public  func  UpdateGamepadMappings(string:String):Int{unsafe{glfwUpdateGamepadMappings(LibC.mallocCString(string))} }
            /*用于获取指定游戏手柄的人类可读名称。这个名称是从分配给指定 joystick 的游戏手柄映射中获取的。如果指定的 joystick 不存在或没有游戏手柄映射，这个函数将返回 NULL，但不会生成错误。你可以调用 glfwJoystickPresent 来检查 joystick 是否存在，不管它是否有映射 
      */
         public  func  GetGamepadName(jid:Int):CString{unsafe{glfwGetGamepadName(jid)}}
         /*参数:游戏手柄id,state：一个指向 GLFWgamepadstate 结构体的指针，用于存储游戏手柄的状态。
         它用于获取指定 joystick 的状态，并将其重新映射为类似于 Xbox 游戏手柄的状态
         返回值：如果成功，则返回 GLFW_TRUE，否则返回 GLFW_FALSE。
         */
         public  func  GetGamepadState(jid:Int,state:CPointer<GLFWgamepadstate>):Int {unsafe{glfwGetGamepadState(jid,state)}}
         

      /*
         //Windows 平台
         public  func  GetWin32Adapter():String//返回值类型String 获取显示器的适配器设备名称。
         {
            let a=unsafe{ glfwGetWin32Adapter(this.Monitor)}
            a.toString()
            let b=a.toString()
            unsafe{LibC.free(a)}
            return b
         }
      public  func  GetWin32Monitor():String////返回值类型String 获取显示器的显示设备名称
         {
            let a= unsafe{glfwGetWin32Monitor(this.Monitor)}
            a.toString()
            let b=a.toString()
            unsafe{LibC.free(a)}
            return b
         }
      public  func  GetWin32Window():UIntNative{unsafe{glfwGetWin32Window(this.Monitor)}}//返回值类型：HWND  获取与 GLFW 窗口关联的 Win32 HWND
      public  func  GetWGLContext():UIntNative {unsafe{glfwGetWGLContext(this.Monitor)}} //返回值类型：HGLRC  获取与 GLFW 窗口关联的 WGL 上下文。
      
      //macOS 平台
      public  func  GetCocoaMonitor():UIntNative{unsafe{glfwGetCocoaMonitor(this.Monitor)}}//返回值类型：CGDirectDisplayID 获取与显示器关联的 macOS CGDirectDisplayID。
      public  func  GetCocoaWindow():UIntNative{unsafe{ glfwGetCocoaWindow(this.Monitor)}}  //返回值类型：id 获取与 GLFW 窗口关联的 Cocoa NSWindow
      public  func  GetCocoaView():UIntNative{unsafe{ glfwGetCocoaView(this.Monitor)} }//返回值类型：id 获取与 GLFW 窗口关联的 Cocoa NSView。
      public  func  GetNSGLContext():UIntNative{unsafe{ glfwGetNSGLContext(this.Monitor)}}//返回值类型：id 获取与 GLFW 窗口关联的 Cocoa NSOpenGLContext

      //X11 平台
      public  func  GetX11Display():UIntNative{unsafe{glfwGetX11Display()}}//返回值类型：Display* 获取 GLFW 使用的 X11 显示连接
      public  func  GetX11Adapter():UIntNative{unsafe{glfwGetX11Adapter(this.Monitor)}}//返回值类型：RRCrtc 获取与显示器关联的 X11 RandR 显示硬件
      public  func  GetX11Monitor():UIntNative{unsafe{glfwGetX11Monitor(this.Monitor)}}//返回值类型：RROutput 获取与显示器关联的 X11 RandR 显示输出
      public  func  GetX11Window():UIntNative{unsafe{glfwGetX11Window(this.Monitor)}}//返回值类型：Window 获取与 GLFW 窗口关联的 X11 窗口标识符。
      public  func  SetX11SelectionString(a:String):Unit{unsafe{glfwSetX11SelectionString(LibC.mallocCString(a))} }//设置 X11 剪贴板的主选择为指定的字符串。
      public  func  GetX11SelectionString():String //返回值类型：String 获取当前 X11 剪贴板主选择的内容。
      {
         let a=unsafe{glfwGetX11SelectionString()} 
         let b=a.toString()
         unsafe{LibC.free(a)}
         return b
         }
         //Linux(GLX) 平台
      public  func  GetGLXContext():UIntNative{unsafe{glfwGetGLXContext(this.Monitor)}}//返回值类型：GLXContext 获取与 GLFW 窗口关联的 GLX 上下文
      public  func  GetGLXWindow():UIntNative{unsafe{glfwGetGLXWindow(this.Monitor)}}//返回值类型：GLXWindow 获取与 GLFW 窗口关联的 GLX 窗口
      //Wayland 平台
      public  func  GetWaylandDisplay():UIntNative{unsafe{glfwGetWaylandDisplay()}}//返回值类型：struct wl_display* 获取 GLFW 使用的 Wayland 显示
      public  func  GetWaylandMonitor():UIntNative{unsafe{glfwGetWaylandMonitor(this.Monitor)}}//返回值类型：struct wl_output* 获取与指定显示器关联的 Wayland 输出
      public  func  GetWaylandWindow():UIntNative{unsafe{glfwGetWaylandWindow(this.Monitor)}}//返回值类型：struct wl_surface* 获取与 GLFW 窗口关联的主要 Wayland 表面
      //EGL 平台
      public  func  GetEGLDisplay():UIntNative{unsafe{glfwGetEGLDisplay()}}//返回值类型：EGLDisplay 获取 GLFW 使用的 EGL 显示
      public  func  GetEGLContext():UIntNative{ unsafe{glfwGetEGLContext(this.Monitor)}}//返回值类型：EGLContext 获取与 GLFW 窗口关联的 EGL 上下文
      public  func  GetEGLSurface():UIntNative{unsafe{glfwGetEGLSurface(this.Monitor)}}//返回值类型：EGLSurface 获取与 GLFW 窗口关联的 EGL 表面。
      //OSMesa 平台
      public  func  GetOSMesaColorBuffer(width:Int,height:Int,format:Int,buffer:CPointer<Unit>):Int{unsafe{glfwGetOSMesaColorBuffer(this.Monitor,width,height,format,buffer)}}//返回值类型：int 检索与指定窗口关联的 OSMesa 颜色缓冲区
      public  func  GetOSMesaDepthBuffer(width:Int,height:Int,bytesPerValue:Int,buffer:CPointer<Unit>):Int{unsafe{glfwGetOSMesaDepthBuffer(this.Monitor,width,height,bytesPerValue,buffer)}}//返回值类型：int 检索与指定窗口关联的 OSMesa 深度缓冲区
      public  func  GetOSMesaContext():UIntNative{unsafe{glfwGetOSMesaContext(this.Monitor)}}//返回值类型：OSMesaContext,获取与 GLFW 窗口关联的 OSMesa 上下文。
      */
   }
   

//////////////////////////结构体///////////////////////

      @C
      public  struct VkApplicationInfo {
         var sType=0 // 结构体类型
         var pNext=CPointer<Unit>()      // 指向其他结构体的指针
         var pApplicationName=unsafe{LibC.mallocCString("0")} // 应用程序名称
         var applicationVersion=UInt32(0) // 应用程序版本
         var pEngineName=unsafe{LibC.mallocCString("0")}  // 发动机名称
         var engineVersion=UInt32(0)  // 发动机版本
         var apiVersion=UInt32(0)    // Vulkan API 版本
      } 

      @C
      public struct GLFWvidmode
      {
         
         var width=0
         var height=0
         var redBits=0
         var greenBits=0
         var blueBits=0
         var refreshRate=0
      }
      @C
      public struct GLFWgammaramp
      {
         
         var red=0
         var green=0
         var blue=0
         var size=0
         }

         //Gamma 斜坡。
      @C
      public struct GLFWimage
      {
         
         
         var width=0
         var height=0
         var pixels=CPointer<Unit>()
         
      }
         //图像数据。
      @C 
      public struct GLFWgamepadstate //游戏手柄输入状态。
      {
         
         var buttons=VArray<UInt8, $15>(repeat: 0)
         var axes=VArray<Float32, $6>(repeat: 0.0)
         
      }
         
      @C
      public struct GLFWallocator//自定义堆内存分配器。 
      {

         
         var allocate=CPointer<Unit>()
         var reallocate=CPointer<Unit>()
         var deallocate=CPointer<Unit>()
         var user=CPointer<Unit>()
         }

 	
//////////////////////////////////功能函数//////////////////////////////////////
      foreign func glfwInit():Int16 	//初始化 GLFW 库。
      foreign func glfwTerminate():Unit 	//终止 GLFW 库。
      foreign func 	glfwInitHint(hint:Int,value:Int):Unit 	//将指定的 init 提示设置为所需的值。
      foreign func 	glfwInitAllocator(allocator:CPointer<GLFWallocator>):Unit 	//将 init 分配器设置为所需的值。
      foreign func 	glfwInitVulkanLoader(loader:CPointer<Unit>):Unit 	//设置所需的 Vulkan 函数。vkGetInstanceProcAddr
      foreign func 	glfwGetVersion(major:CPointer<Int>, minor:CPointer<Int>, rev:CPointer<Int>):Unit 	//检索 GLFW 库的版本。
      foreign func glfwGetVersionString():CString 	//返回描述编译时配置的字符串。
      foreign func glfwGetError(description:CString):Int 	//返回并清除调用线程的最后一个错误。
      foreign func	glfwSetErrorCallback(callback:CFunc<(Int,CString)->Unit>):UIntNative 	//设置错误回调。
      foreign func glfwGetPlatform():Int 	//返回当前选定的平台。
      foreign func	glfwPlatformSupported(platform:Int):Int 	//返回库是否包含对指定平台的支持。 
      foreign func	glfwGetMonitors(count:Int16):CPointer<Unit> 	//返回当前连接的显示器。
      foreign func glfwGetPrimaryMonitor():UIntNative 	//返回主监控器。
      foreign func glfwGetMonitorPos(monitor:UIntNative, xpos:CPointer<Int>, ypos:CPointer<Int>):Unit 	//返回显示器的视区在虚拟屏幕上的位置。
      foreign func glfwGetMonitorWorkarea(monitor:UIntNative, xpos:CPointer<Int>, ypos:CPointer<Int>, width:CPointer<Int>, height:CPointer<Int>):Unit 	//检索显示器的工作区域。
      foreign func	glfwGetMonitorPhysicalSize(monitor:UIntNative, widthMM:CPointer<Int>, heightMM:CPointer<Int>):Unit 	//返回显示器的物理 size。
      foreign func	glfwGetMonitorContentScale(monitor:UIntNative, xscale:CPointer<Float32>, yscale:CPointer<Float32>):Unit 	//检索指定显示器的内容比例。
      foreign func glfwGetMonitorName(monitor:UIntNative):CString 	//返回指定显示器的名称。
      foreign func	glfwSetMonitorUserPointer(monitor:UIntNative, pointer:CPointer<Unit>):Unit 	//设置指定显示器的用户指针。
      foreign func	glfwGetMonitorUserPointer(monitor:UIntNative):UIntNative	//返回指定显示器的用户指针。
      foreign func 	glfwSetMonitorCallback( callback:CFunc<()->Unit>):UIntNative 	//设置 monitor 配置回调。
      foreign func 	glfwGetVideoModes(monitor:UIntNative, countmonitor:Int):CPointer<GLFWvidmode> 	//返回指定显示器的可用视频模式。
      foreign func	glfwGetVideoMode(monitor:UIntNative):GLFWvidmode	//返回指定显示器的当前模式。
      foreign func	glfwSetGamma(monitor:UIntNative,Gamma:Float32):Unit 	//生成灰度系数渐变并为指定的显示器设置它。
      foreign func glfwGetGammaRamp(monitor:UIntNative):CPointer<GLFWgammaramp> 	//返回指定显示器的当前灰度系数斜坡。
      foreign func	glfwSetGammaRamp(monitor:UIntNative, ramp:CPointer<GLFWgammaramp>):Unit 	//设置指定显示器的当前灰度系数渐变。
      foreign func	glfwDefaultWindowHints():Unit 	//将所有窗口提示重置为其默认值。
      foreign func glfwWindowHint(hint:Int, value:Int):Unit 	//将指定的窗口提示设置为所需的值。
      foreign func	glfwWindowHintString(hint:Int, value:CString):Unit 	//将指定的窗口提示设置为所需的值。
      foreign func glfwCreateWindow(width:Int, height:Int, title:CString, monitor:UIntNative, share:UIntNative):UIntNative 	//创建窗口及其关联的上下文。
      foreign func	glfwDestroyWindow(window:UIntNative):Unit 	//销毁指定的窗口及其上下文。
      foreign func	glfwWindowShouldClose(window:UIntNative):Int	//检查指定窗口的 close 标志。
      foreign func	glfwSetWindowShouldClose(window:UIntNative, value:Int):Unit 	//设置指定窗口的 close 标志。
      foreign func	glfwGetWindowTitle(window:UIntNative):CString 	//返回指定窗口的标题。
      foreign func	glfwSetWindowTitle(window:UIntNative, title:CString):Unit 	//设置指定窗口的标题。
      foreign func	glfwSetWindowIcon(window:UIntNative, count:Int, images:CPointer<GLFWimage>):Unit 	//设置指定窗口的图标。
      foreign func	glfwGetWindowPos(window:UIntNative, xpos:CPointer<Int>, ypos:CPointer<Int>):Unit //	检索指定窗口的内容区域的位置。
      foreign func	glfwSetWindowPos(window:UIntNative, xpos:Int, ypos:Int):Unit 	//设置指定窗口的内容区域的位置。
      foreign func	glfwGetWindowSize(window:UIntNative, width:CPointer<Int>, height:CPointer<Int>):Unit 	//检索指定窗口的内容区域的 size。
      foreign func	glfwSetWindowSizeLimits(window:UIntNative, minwidth:Int, minheight:Int, maxwidth:Int, maxheight:Int):Unit 	//设置指定窗口的 size限制。
      foreign func	glfwSetWindowAspectRatio(window:UIntNative, numer:Int, denom:Int):Unit 	//设置指定窗口的纵横比。
      foreign func	glfwSetWindowSize(window:UIntNative, width:Int, height:Int):Unit 	//设置指定窗口的内容区域的 size。
      foreign func	glfwGetFramebufferSize(window:UIntNative, width:CPointer<Int>, height:CPointer<Int>):Unit 	//检索指定窗口的帧缓冲区的 size。
      foreign func	glfwGetWindowFrameSize(window:UIntNative, left:CPointer<Int>, top:CPointer<Int>, right:CPointer<Int>, bottom:CPointer<Int>):Unit 	//检索窗口框架的 size。
      foreign func	glfwGetWindowContentScale(window:UIntNative, xscale:CPointer<Float32>, yscale:CPointer<Float32>):Unit 	//检索指定窗口的内容缩放。
      foreign func glfwGetWindowOpacity(window:UIntNative):Float32 	//返回整个窗口的不透明度。
      foreign func	glfwSetWindowOpacity(window:UIntNative, opacity:Float32):Unit //	设置整个窗口的不透明度。
      foreign func	glfwIconifyWindow(window:UIntNative):Unit //	图标化指定的窗口。
      foreign func	glfwRestoreWindow(window:UIntNative):Unit //	还原指定的窗口。
      foreign func	glfwMaximizeWindow(window:UIntNative):Unit //	最大化指定的窗口。
      foreign func	glfwShowWindow(window:UIntNative):Unit //	使指定的窗口可见。
      foreign func	glfwHideWindow(window:UIntNative):Unit //	隐藏指定的窗口。
      foreign func	glfwFocusWindow(window:UIntNative):Unit 	//将指定的窗口置于最前面并设置输入焦点。
      foreign func	glfwRequestWindowAttention(window:UIntNative):Unit 	//请求用户注意指定的窗口。
      foreign func glfwGetWindowMonitor(window:UIntNative):UIntNative 	//返回窗口用于全屏模式的显示器。
      foreign func	glfwSetWindowMonitor(window:UIntNative,  monitor:UIntNative,  xpos:Int,  ypos:Int,  width:Int, height:Int,  refreshRate:Int):Unit 	//设置窗口的模式, 显示器, 视频模式和位置。
      foreign func glfwGetWindowAttrib(window:UIntNative, attrib:Int):Int 	//返回指定窗口的属性。
      foreign func	glfwSetWindowAttrib(window:UIntNative, attrib:Int, value:Int):Unit 	//设置指定窗口的属性。
      foreign func	glfwSetWindowUserPointer(window:UIntNative, pointer:CFunc<()->Unit>):Unit 	//设置指定窗口的用户指针。
      foreign func	glfwGetWindowUserPointer(window:UIntNative):UIntNative 	//返回指定窗口的用户指针。
      foreign func 	glfwSetWindowPosCallback(window:UIntNative,callback:CFunc<()->Unit>):UIntNative 	//设置指定窗口的位置回调。
      foreign func glfwSetWindowSizeCallback(window:UIntNative,  callback:CFunc<(window:UIntNative,width:Int, height:Int)->Unit>):UIntNative 	//设置指定窗口的 size回调。
      foreign func glfwSetWindowCloseCallback(window:UIntNative,  callback:CFunc<(window:UIntNative)->Unit>):UIntNative 	//设置指定窗口的 close 回调。
      foreign func 	glfwSetWindowRefreshCallback(window:UIntNative,  callback:CFunc<(window:UIntNative)->Unit>):UIntNative 	//设置指定窗口的刷新回调。
      foreign func 	glfwSetWindowFocusCallback(window:UIntNative,  callback:CFunc<(window:UIntNative)->Unit>):UIntNative 	//设置指定窗口的焦点回调。
      foreign func 	glfwSetWindowIconifyCallback(window:UIntNative,  callback:CFunc<(window:UIntNative,iconified:Int)->Unit>):UIntNative 	//设置指定窗口的 iconify 回调。
      foreign func glfwSetWindowMaximizeCallback(window:UIntNative,  callback:CFunc<(window:UIntNative,iconified:Int)->Unit>):UIntNative 	//设置指定窗口的 maximize 回调。
      foreign func	glfwSetFramebufferSizeCallback(window:UIntNative, callback:CFunc<(window:UIntNative,width:Int,height:Int)->Unit>):UIntNative 	//设置指定窗口的 framebuffer resize 回调。
      foreign func	glfwSetWindowContentScaleCallback(window:UIntNative,callback:CFunc<(window:UIntNative,width:Float32,height:Float32)->Unit> ):UIntNative 	//设置指定窗口的窗口内容缩放回调。
      foreign func	glfwPollEvents():Unit 	//处理所有待处理事件。
      foreign func	glfwWaitEvents():Unit 	//等待事件排队并处理它们。
      foreign func	glfwWaitEventsTimeout(timeout:Float64):Unit 	//等待超时,直到事件排队并处理它们。
      foreign func	glfwPostEmptyEvent():Unit 	//将空事件发布到事件队列。
      foreign func glfwGetInputMode(window:UIntNative, mode:Int):Int 	//返回指定窗口的输入选项的值。 
      foreign func	glfwSetInputMode(window:UIntNative, mode:Int, value:Int):UInt 	//设置指定窗口的输入选项。
      foreign func glfwRawMouseMotionSupported():Int 	//返回是否支持原始鼠标运动。
      foreign func glfwGetKeyName(key:Int, scancode:Int):CPointer<UInt8> 	//返回指定可打印键的特定于布局的名称。
      foreign func	glfwGetKeyScancode(key:Int):Int 	//返回指定键的特定于平台的 scancode。
      foreign func	glfwGetKey(window:UIntNative, key:Int):Int 	//返回指定窗口的键盘键的最后报告状态。
      foreign func	glfwGetMouseButton(window:UIntNative, button:Int):Int 	//返回指定窗口的鼠标按钮的最后报告状态。
      foreign func	glfwGetCursorPos(window:UIntNative, xpos:CPointer<Float64>, ypos:CPointer<Float64>):Unit 	//检索光标相对于窗口内容区域的位置。
      foreign func	glfwSetCursorPos(window:UIntNative, xpos:Float64, ypos:Float64):Unit 	//设置光标相对于窗口内容区域的位置。
      foreign func  glfwCreateCursor(image:CPointer<GLFWimage>,xhot:Int, yhot:Int):UIntNative 	//创建自定义游标。
      foreign func	glfwCreateStandardCursor(shape:Int):UIntNative 	//创建具有标准形状的游标。
      foreign func	glfwDestroyCursor(cursor:CPointer<GLFWimage>):Unit 	//销毁游标。
      foreign func	glfwSetCursor(window:UIntNative, cursor:CPointer<GLFWimage>):Unit 	//设置窗口的光标。
      foreign func	glfwSetKeyCallback(window:UIntNative,callback:CFunc<(win:CPointer<Unit>,key:Int,scatcode:Int,action:Int,mods:Int)->Unit>):UIntNative 	//设置 key 回调。
      foreign func	glfwSetCharCallback(window:UIntNative,  callback:CFunc<(win:CPointer<Unit>,codepoint:UIntNative)->Unit>):UIntNative 	//设置 Unicode 字符回调。
      foreign func 	glfwSetCharModsCallback(window:UIntNative,  callback:CFunc<(win:CPointer<Unit>,codepoint:UIntNative,mods:Int)->Unit>):UIntNative 	//设置带有修饰符的 Unicode 字符回调。
      foreign func	glfwSetMouseButtonCallback(window:UIntNative, callback:CFunc<(win:CPointer<Unit>,button:Int,action:Int,mods:Int)->Unit>):UIntNative 	//设置鼠标按钮回调。
      foreign func	glfwSetCursorPosCallback(window:UIntNative, callback:CFunc<(window:UIntNative,xpos:Float64,ypos:Float64)->Unit>):UIntNative 	//设置光标位置回调。
      foreign func 	glfwSetCursorEnterCallback(window:UIntNative, callback:CFunc<(window:UIntNative,entered:Int)->Unit>):UIntNative 	//设置光标进入/离开回调。
      foreign func 	glfwSetScrollCallback(window:UIntNative,  callback:CFunc<(window:UIntNative,xoffset:Float64,yoffset:Float64)->Unit>):UIntNative 	//设置 scroll 回调。
      foreign func	glfwSetDropCallback(window:UIntNative,  callback:CFunc<(window:UIntNative,count:Int,paths:VArray<CString,$9999>)->Unit>):UIntNative 	//设置路径放置回调。
      foreign func 	glfwJoystickPresent(jid:Int):Int 	//返回指定的摇杆是否存在。
      foreign func	glfwGetJoystickAxes(jid:Int, count:CPointer<Int>):CPointer<Float32>	//返回指定摇杆的所有轴的值。
      foreign func	glfwGetJoystickButtons(jid:Int, count:CPointer<Int>):CPointer<UInt8> 	//返回指定游戏杆的所有按钮的状态。
      foreign func	glfwGetJoystickHats(jid:Int, count:CPointer<Int>):CPointer<UInt8> 	//返回指定游戏杆的所有 hat 的状态。
      foreign func	glfwGetJoystickName(jid:Int):CString 	//返回指定游戏杆的名称。
      foreign func	glfwGetJoystickGUID(jid:Int):CString 	//返回指定游戏杆的 SDL 兼容 GUID。
      foreign func	glfwSetJoystickUserPointer(jid:Int, pointer:CPointer<Unit>):Unit 	//设置指定摇杆的用户指针。
      foreign func	glfwGetJoystickUserPointer(jid:Int):UIntNative 	//返回指定摇杆的用户指针。
      foreign func	glfwJoystickIsGamepad(jid:Int):Int 	//返回指定的摇杆是否具有游戏手柄映射。
      foreign func	glfwSetJoystickCallback(callback:CFunc<(joy:Int,event:Int)->Unit>):UIntNative 	//设置摇杆配置回调。
      foreign func	glfwUpdateGamepadMappings(string:CString):Int 	//添加指定的 SDL_GameControllerDB 游戏手柄映射。
      foreign func	glfwGetGamepadName(jid:Int):CString 	//返回指定游戏杆的可读游戏手柄名称。
      foreign func	glfwGetGamepadState(jid:Int,state:CPointer<GLFWgamepadstate>):Int 	//检索重新映射为游戏手柄的指定摇杆的状态。
      foreign func	glfwSetClipboardString(window:UIntNative, string:CString):Unit 	//将剪贴板设置为指定的字符串。
      foreign func	glfwGetClipboardString(window:UIntNative):CString 	//以字符串形式返回剪贴板的内容。
      foreign func 	glfwGetTime():Float64 	//返回 GLFW 时间。
      foreign func	glfwSetTime(time:Float64):Unit 	//设置 GLFW 时间。
      foreign func	glfwGetTimerValue():UInt64 	//返回原始计时器的当前值。
      foreign func	glfwGetTimerFrequency():UInt64 	//返回原始计时器的频率(Hz)。
      foreign func	glfwMakeContextCurrent(window:UIntNative):Unit 	//使指定窗口的上下文成为调用线程的当前上下文。
      foreign func	glfwGetCurrentContext():UIntNative 	//返回其上下文在调用线程上是当前上下文的窗口。
      foreign func	glfwSwapBuffers(window:UIntNative):Unit 	//交换指定窗口的前后缓冲区。
      foreign func	glfwSwapInterval(interval:Int):Unit 	//设置当前上下文的交换间隔。
      foreign func	glfwExtensionSupported(extension:CString):Int 	//返回指定的扩展是否可用。
      foreign func	glfwGetProcAddress(procname:CString):CPointer<Unit>//CPointer<Unit> 	//返回当前上下文的指定函数的地址。
      foreign func	glfwVulkanSupported():Int 	//返回是否已找到 Vulkan 加载程序和 ICD。
      foreign func	glfwGetRequiredInstanceExtensions(count:CPointer<Int>):CPointer<CString> 	//返回 GLFW 所需的 Vulkan 实例扩展。
      foreign func	glfwGetInstanceProcAddress(instance:VkApplicationInfo,procname:CString):UIntNative 	//返回指定的 Vulkan 实例函数的地址。
      foreign func	glfwGetPhysicalDevicePresentationSupport(instance:VkApplicationInfo ,device:UInt32, queuefamily:UInt32):Int 	//返回指定的队列系列是否可以显示图像。 
      foreign func	glfwCreateWindowSurface(instance:VkApplicationInfo, window:UIntNative, allocator:CPointer<Unit>, surface:CPointer<Unit>):UIntNative 	//为指定窗口创建 Vulkan 表面。
      /*
      /////////////////////////native/////////////////////////////////////////////////////////
      foreign func glfwGetWin32Adapter(monitor:UIntNative):CString
         //返回指定监视器的适配器设备名称。
      
      foreign func	glfwGetWin32Monitor(monitor:UIntNative):CString
         //返回指定监视器的显示设备名称。
      
      foreign func	glfwGetWin32Window(window:UIntNative):UIntNative
         //返回指定窗口的 。HWND
      
      foreign func	glfwGetWGLContext(window:UIntNative):UIntNative
         //返回指定窗口的 。HGLRC
      
      foreign func	glfwGetCocoaMonitor(monitor:UIntNative):UIntNative
         //返回指定监视器的 。CGDirectDisplayID
      
      foreign func	glfwGetCocoaWindow(window:UIntNative):UIntNative
         //返回指定窗口的 。NSWindow
      
      foreign func	glfwGetCocoaView(window:UIntNative):UIntNative
         //返回指定窗口的 。NSView
      
      foreign func	glfwGetNSGLContext(window:UIntNative):UIntNative
         //返回指定窗口的 。NSOpenGLContext
      
      foreign func glfwGetX11Display():UIntNative
         //返回 GLFW 使用的 。Display
      
      foreign func	glfwGetX11Adapter(monitor:UIntNative):UIntNative
         //返回指定监视器的 。RRCrtc
      
      foreign func	glfwGetX11Monitor(monitor:UIntNative):UIntNative
         //返回指定监视器的 。RROutput
      
      foreign func	glfwGetX11Window(window:UIntNative):UIntNative
         //返回指定窗口的 。Window
      
      foreign func	glfwSetX11SelectionString(string:CString):Unit
         //将当前主选择设置为指定的字符串。
      
      foreign func	glfwGetX11SelectionString():CString
         //以字符串形式返回当前主选定内容的内容。
      
      foreign func	glfwGetGLXContext(window:UIntNative):UIntNative
         //返回指定窗口的 。GLXContext
      
      foreign func	glfwGetGLXWindow(window:UIntNative):UIntNative
         //返回指定窗口的 。GLXWindow
      
      foreign func	glfwGetWaylandDisplay():UIntNative
         //返回 GLFW 使用的 。struct wl_display*
      foreign func	glfwGetWaylandMonitor(monitor:UIntNative):UIntNative
         //返回指定监视器的 。struct wl_output*
      
      foreign func glfwGetWaylandWindow(window:UIntNative):UIntNative
         //返回指定窗口的 main。struct wl_surface*
      
      foreign func	glfwGetEGLDisplay():UIntNative
         //返回 GLFW 使用的 。EGLDisplay
      
      foreign func	glfwGetEGLContext(window:UIntNative):UIntNative
         //返回指定窗口的 。EGLContext
      
      foreign func	glfwGetEGLSurface(window:UIntNative):UIntNative
         //返回指定窗口的 。EGLSurface
      
      foreign func	glfwGetOSMesaColorBuffer(window:UIntNative,width:Int,height:Int,format:Int,buffer:CPointer<Unit>):Int
         //检索与指定窗口关联的颜色缓冲区。
      
      foreign func glfwGetOSMesaDepthBuffer(window:UIntNative,width:Int,height:Int,bytesPerValue:Int,buffer:CPointer<Unit>):Int
         //检索与指定窗口关联的深度缓冲区。
      
      foreign func	glfwGetOSMesaContext(window:UIntNative):UIntNative
         //返回指定窗口的 。OSMesaContext
         */
