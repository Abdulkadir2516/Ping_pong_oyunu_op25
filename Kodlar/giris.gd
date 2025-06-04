extends Sprite2D

func _on_tek_kisilik_pressed() -> void:
	Globals.kontrol = false
	get_tree().change_scene_to_file("res://Sahneler/bölüm.tscn")


func _on_cift_kisilik_pressed() -> void:
	Globals.kontrol = true
	get_tree().change_scene_to_file("res://Sahneler/bölüm.tscn")

func _on_nasil_oynanir_pressed() -> void:
	get_tree().change_scene_to_file("res://Sahneler/nasıl_oynanır.tscn")

func _on_cikis_pressed() -> void:
	get_tree().quit()
