extends Node2D

func _baslangic():
	$Oyuncu.position = Vector2(0,28)
	$Oyuncu2.position = Vector2(1006,3)
	$Top.position = Vector2(1152/2, 647/2)
	$Zamanlayici.start(3)
	$sure.visible = true
	
func _ready() -> void:
	_baslangic()
 	
func _physics_process(delta: float) -> void:
	$sure.text = str(int($Zamanlayici.time_left))
	if $sure.text == "0":
		$sure.visible = false
		$Zamanlayici.stop()

	
