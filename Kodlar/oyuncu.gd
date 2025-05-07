extends CharacterBody2D

@export var karakterHiz = 7

#Sahne veya oyun devam ettiği sürece tekrarla
func _physics_process(delta: float) -> void:
	velocity = Vector2.ZERO
	if Input.is_action_pressed("w"):
		#print("Yukarı Gitti")
		velocity.y = velocity.y - 1
	if Input.is_action_pressed("s"):
		#print("Aşağı Gitti")
		velocity.y = velocity.y + 1
	move_and_collide(velocity * karakterHiz)
