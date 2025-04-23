extends CharacterBody2D

var karakterHiz = 10

var top

func _ready() -> void:
	top = get_parent().get_node("Top")
	
#Sahne veya oyun devam ettiği sürece tekrarla
func _physics_process(delta: float) -> void:
	
	move_and_collide(Vector2(0,yon_belirle()) * karakterHiz)

func yon_belirle():	
	if abs(top.position.y - position.y) > 35:
		if top.position.y > position.y:
			return 1
		else:
			return -1
	else:
		return 0
