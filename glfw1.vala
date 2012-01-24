// compile with:
//  valac --vapidir . --pkg gl --pkg libglfw glfw1.vala

using GLFW;
using GL;

int main () {
	bool running = true;

	// Initialize GLFW
	glfwInit ();

	// Open an OpenGL window (you can also try Mode.FULLSCREEN)
	if (!glfwOpenWindow (640, 480, 0, 0, 0, 0, 0, 0, Mode.WINDOW)) {
		glfwTerminate ();
		return 1;
	}

	// Main loop
	while (running) {
		// OpenGL rendering goes here...
		glClear (GL_COLOR_BUFFER_BIT);
		glBegin (GL_TRIANGLES);
			glVertex3f ( 0.0f, 1.0f, 0.0f);
			glVertex3f (-1.0f,-1.0f, 0.0f);
			glVertex3f ( 1.0f,-1.0f, 0.0f);
		glEnd ();

		// Swap front and back rendering buffers
		glfwSwapBuffers ();
		// Check if ESC key was pressed or window was closed
		running = !glfwGetKey (Key.ESC) && (bool) glfwGetWindowParam (WindowParam.OPENED);
	}

	// Close window and terminate GLFW
	glfwTerminate ();

	// Exit program
	return 0;
}
