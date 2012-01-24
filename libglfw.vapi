[CCode (lower_case_cprefix = "", cheader_filename="GL/glfw.h")]
namespace GLFW {

	[CCode (cprefix = "GLFW_", cname = "int", has_type_id = false)]
	public enum Mode {
		WINDOW,
		FULLSCREEN
	}

	[CCode (cprefix = "GLFW_", cname = "int", has_type_id = false)]
	public enum Target {
		REFRESH_RATE,
		ACCUM_RED_BITS,
		ACCUM_GREEN_BITS,
		ACCUM_BLUE_BITS,
		ACCUM_ALPHA_BITS,
		AUX_BUFFERS,
		STEREO,
		WINDOW_NO_RESIZE,
		FSAA_SAMPLES
	}

	[CCode (cprefix = "GLFW_", cname = "int", has_type_id = false)]
	public enum WindowParam {
		OPENED,
		ACTIVE,
		ICONIFIED,
		ACCELERATED,
		RED_BITS,
		GREEN_BITS,
		BLUE_BITS,
		ALPHA_BITS,
		DEPTH_BITS,
		STENCIL_BITS,
		REFRESH_RATE,
		ACCUM_RED_BITS,
		ACCUM_GREEN_BITS,
		ACCUM_BLUE_BITS,
		ACCUM_ALPHA_BITS,
		AUX_BUFFERS,
		STEREO,
		FSAA_SAMPLES,
		WINDOW_NO_RESIZE
	}

	[CCode (cprefix = "GLFW_", cname = "int", has_type_id = false)]
	public enum JoystickParam {
		PRESENT,
		AXES,
		BUTTONS
	}

	[CCode (cname = "GLFWvidmode", has_type_id = false)]
	public struct VideoMode {
		[CCode (cname = "Width")]
		public int width;
		[CCode (cname = "Height")]
		public int height;
		[CCode (cname = "RedBits")]
		public int red_bits;
		[CCode (cname = "GreenBits")]
		public int green_bits;
		[CCode (cname = "BlueBits")]
		public int blue_bits;
	}

	[CCode (cname = "GLFWwindowclosefun", has_target = false)]
	public delegate bool WindowCloseFunc ();
	[CCode (cname = "GLFWwindowsizefun", has_target = false)]
	public delegate void WindowSizeFunc (int width, int height);
	[CCode (cname = "GLFWwindowrefreshfun", has_target = false)]
	public delegate void WindowRefreshFunc ();
	[CCode (cname = "GLFWkeyfun", has_target = false)]
	public delegate void KeyFunc (int key, bool action);
	[CCode (cname = "GLFWcharfun", has_target = false)]
	public delegate void CharFunc (int character, bool action);
	[CCode (cname = "GLFWmousebuttonfun", has_target = false)]
	public delegate void MouseButtonFunc (int button, bool action);
	[CCode (cname = "GLFWmouseposfun", has_target = false)]
	public delegate void MousePosFunc (int x, int y);
	[CCode (cname = "GLFWmousewheelfun", has_target = false)]
	public delegate void MouseWheelFunc (int pos);

	// Initialization and Termination
	public bool glfwInit ();
	public void glfwTerminate ();
	public void glfwGetVersion (out int major, out int minor, out int rev);

	// Window Handling
	public bool glfwOpenWindow (int width = 0, int height = 0, int redbits = 0,
	                            int greenbits = 0, int bluebits = 0,
	                            int alphabits = 0, int depthbits = 0,
	                            int stencilbits = 0,
	                            GLFW.Mode mode = GLFW.Mode.WINDOW);
	public void glfwOpenWindowHint (GLFW.Target target, int hint);
	public void glfwCloseWindow ();
	public void glfwSetWindowCloseCallback (GLFW.WindowCloseFunc? cbfun);
	public void glfwSetWindowTitle (string title);
	public void glfwSetWindowSize (int width, int height);
	public void glfwSetWindowPos (int x, int y);
	public void glfwGetWindowSize (out int width, out int height);
	public void glfwSetWindowSizeCallback (GLFW.WindowSizeFunc? cbfun);
	public void glfwIconifyWindow ();
	public void glfwRestoreWindow ();
	public int glfwGetWindowParam (GLFW.WindowParam param);
	public void glfwSwapBuffers ();
	public void glfwSwapInterval (int interval);
	public void glfwSetWindowRefreshCallback (GLFW.WindowRefreshFunc? cbfun);

	// Video Modes
	public int glfwGetVideoModes (GLFW.VideoMode[] list);
	public void glfwGetDesktopMode (out GLFW.VideoMode mode);

	// Input Handling
	public void glfwPollEvents ();
	public void glfwWaitEvents ();
	public bool glfwGetKey (int key);
	public bool glfwGetMouseButton (int button);
	public void glfwGetMousePos (out int xpos, out int ypos);
	public void glfwSetMousePos (int xpos, int ypos);
	public int glfwGetMouseWheel ();
	public void glfwSetMouseWheel (int pos);
	public void glfwSetKeyCallback (GLFW.KeyFunc? cbfun);
	public void glfwSetCharCallback (GLFW.CharFunc? cbfun);
	public void glfwSetMouseButtonCallback (GLFW.MouseButtonFunc? cbfun);
	public void glfwSetMousePosCallback (GLFW.MousePosFunc? cbfun);
	public void glfwSetMouseWheelCallback (GLFW.MouseWheelFunc? cbfun);
	public int glfwGetJoystickParam (int joy, GLFW.JoystickParam param);
	public int glfwGetJoystickPos (int joy, float[] pos);
	public int glfwGetJoystickButton (int joy, uchar[] buttons);

	// Timing
	public double glfwGetTime ();
	public void glfwSetTime (double time);
	public void glfwSleep (double time);

	// Image and Texture Loading
	// TODO ...

	[CCode (lower_case_cprefix = "GLFW_MOUSE_BUTTON_")]
	namespace MouseButton {
		public const int LEFT;
		public const int RIGHT;
		public const int MIDDLE;
		public const int @1;
		public const int @2;
		public const int @3;
		public const int @4;
		public const int @5;
		public const int @6;
		public const int @7;
		public const int @8;
	}

	[CCode (lower_case_cprefix = "GLFW_JOYSTICK_")]
	namespace Joystick {
		public const int @1;
		public const int @2;
		public const int @3;
		public const int @4;
		public const int @5;
		public const int @6;
		public const int @7;
		public const int @8;
		public const int @9;
		public const int @10;
		public const int @11;
		public const int @12;
		public const int @13;
		public const int @14;
		public const int @15;
		public const int @16;
	}

	[CCode (lower_case_cprefix = "GLFW_KEY_")]
	namespace Key {
		public const int SPACE;
		public const int ESC;
		public const int F1;
		public const int F2;
		public const int F3;
		public const int F4;
		public const int F5;
		public const int F6;
		public const int F7;
		public const int F8;
		public const int F9;
		public const int F10;
		public const int F11;
		public const int F12;
		public const int F13;
		public const int F14;
		public const int F15;
		public const int F16;
		public const int F17;
		public const int F18;
		public const int F19;
		public const int F20;
		public const int F21;
		public const int F22;
		public const int F23;
		public const int F24;
		public const int F25;
		public const int UP;
		public const int DOWN;
		public const int LEFT;
		public const int RIGHT;
		public const int LSHIFT;
		public const int RSHIFT;
		public const int LCTRL;
		public const int RCTRL;
		public const int LALT;
		public const int RALT;
		public const int TAB;
		public const int ENTER;
		public const int BACKSPACE;
		public const int INSERT;
		public const int DEL;
		public const int PAGEUP;
		public const int PAGEDOWN;
		public const int HOME;
		public const int END;
		public const int KP_0;
		public const int KP_1;
		public const int KP_2;
		public const int KP_3;
		public const int KP_4;
		public const int KP_5;
		public const int KP_6;
		public const int KP_7;
		public const int KP_8;
		public const int KP_9;
		public const int KP_DIVIDE;
		public const int KP_MULTIPLY;
		public const int KP_SUBTRACT;
		public const int KP_ADD;
		public const int KP_DECIMAL;
		public const int KP_EQUAL;
		public const int KP_ENTER;
	}
}
