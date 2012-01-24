/* GTK+ Genie Sample Code - compile with valac --pkg gtk+-2.0 hello-gtk.gs */
uses
	Gtk
init
	Gtk.init (ref args)
	var test = new TestWindow ()
	test.show_all ()
	Gtk.main ();

class TestWindow : Window
	init
		title = "Test Window"
		default_height = 250
		default_width = 250
		window_position = WindowPosition.CENTER
		destroy.connect (Gtk.main_quit)
		var button = new Button.with_label ("Click Me")
		button.clicked += def (btn)
			title = "Hello World"
			btn.label = "Hello World"
		add (button)

