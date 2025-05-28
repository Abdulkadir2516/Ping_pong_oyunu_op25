extends Node2D

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Sahneler/giris.tscn")


func _on_text_edit_gui_input(event: InputEvent) -> void:
	_tıklama(event, "w")
	

func _on_text_edit_2_gui_input(event: InputEvent) -> void:
	_tıklama(event, "s")


func _on_text_edit_3_gui_input(event: InputEvent) -> void:
	_tıklama(event, "yukarı")


func _on_text_edit_4_gui_input(event: InputEvent) -> void:
	_tıklama(event, "aşağı")


func _tıklama(event: InputEvent, action_name: String):
	if event is InputEventKey and event.pressed and not event.echo:
		var key = OS.get_keycode_string(event.keycode)
		print(key)
		
		InputMap.action_erase_events(action_name)
		
		InputMap.action_add_event(action_name, event)
		
		
