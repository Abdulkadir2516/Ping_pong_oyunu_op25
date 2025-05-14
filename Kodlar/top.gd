extends CharacterBody2D

@export var hiz = 10

var sure = 0
func _ready():

	velocity.x = -1 # [-1,1][randi() % 2] # topun başlangıcta rastgele sağa veya sol yöne gitmesini sağlar
	velocity.y = [-1,1][randi() % 2] # topun başlangıcta rastgele yukarı veya aşağı yöne gitmesini sağlar

func _physics_process(delta):
	sure = int(get_parent().get_node("Zamanlayici").time_left)
	
	if sure == 0:
		var carpısannesne = move_and_collide(velocity*hiz)
		if carpısannesne:
			$carpma_sesi.play()
			velocity = velocity.bounce(carpısannesne.get_normal())

#topu durdurabilmemizi sağlayacak olan fonksiyon
func topudurdur():
	hiz = 0

#topu tekrardan başlatabilmemizi sağlayacak olan fonksiyon
func toputekrarbaslat():
	hiz = 10

func pozisyon():
	return position.y
