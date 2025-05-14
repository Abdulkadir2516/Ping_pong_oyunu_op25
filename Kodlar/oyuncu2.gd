extends CharacterBody2D

var top

func _ready() -> void:
	
	top = get_parent().get_node("Top")
	
#Sahne veya oyun devam ettiği sürece tekrarla

@export var karakterHiz = 7

#Sahne veya oyun devam ettiği süwdswdssrece tekrarla
func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	#if Input.is_action_pressed("yukarı"):
		##print("Yukarı Gitti")
		#velocity.y = velocity.y - 1
	#if Input.is_action_pressed("aşağı"):wsw
		##print("Aşağı Gitti")
		#velocity.y = velocity.y + 1
	#move_and_collide(velocity * karakterHiz)	
	
	move_and_collide(Vector2(0,yon_belirle()) * karakterHiz)

func yon_belirle():	
	if abs(top.position.y - position.y) > 35:
		if top.pozisyon() > position.y:
			return 2
		else:
			return -2
	else:
		return 0
