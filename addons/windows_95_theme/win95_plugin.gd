@tool
extends EditorPlugin


func _enter_tree():
	var interface: EditorInterface = get_editor_interface()
	var settings: EditorSettings = interface.get_editor_settings()
	settings.set("interface/theme/preset", "Custom")
	settings.set("interface/theme/base_color", Color.SILVER)
	settings.set("interface/theme/contrast", -0.15)
	var theme_path = ProjectSettings.globalize_path("res://addons/windows_95_theme/save1.tres")
	settings.set("interface/theme/custom_theme", theme_path)


func _exit_tree():
	# Clean-up of the plugin goes here.
	pass
