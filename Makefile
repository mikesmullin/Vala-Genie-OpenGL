all:
	make clean
	make glfw1

glfw1: glfw1.vala gl.vapi libglfw.vapi
	reset
	valac --vapidir . --pkg gl --pkg libglfw glfw1.vala
	./glfw1

clean:
	rm -rf glfw1
