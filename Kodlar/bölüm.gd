extends Node2D

var skor1 = 0
var skor2 = -2

func _baslangic():
	$Oyuncu.position = Vector2(0,28)
	$Oyuncu2.position = Vector2(1006,3)
	$Top.position = Vector2(1152/2, 647/2)
	$Zamanlayici.start(3)
	$sure.visible = true
	
func _ready() -> void:
	$skor_1.text = str(skor1)
	$skor_2.text = str(skor2)

	_baslangic()
 	
func _physics_process(delta: float) -> void:
	$sure.text = str(int($Zamanlayici.time_left))
	if $sure.text == "0":
		$sure.visible = false
		$Zamanlayici.stop()



func _on_sol_duvar_body_entered(body: Node2D) -> void:
	skor2 += 1
	$skor_2.text = str(skor2)
	_baslangic()


func _on_sağ_duvar_body_entered(body: Node2D) -> void:
	skor1 += 1
	$skor_1.text = str(skor1)
	_baslangic()
