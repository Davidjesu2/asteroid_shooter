extends Marker2D


@export var asteroids: Array[PackedScene]
@export var min_y: float
@export var max_y: float
@onready var timer: Timer = $Timer


func create_asteroid():
	if GameManager.is_gamer_over:
		timer.stop()
	# Asignacion de la escena a instanciar mediante pick_random de array.
	var random_asteroid_scene = asteroids.pick_random()
	var random_asteroid_instance = random_asteroid_scene.instantiate()
	# Agregar a escena 
	add_child(random_asteroid_instance)
	
	# Se asigna una aparicion aleatoria entre el eje y
	var random_y = randf_range(64, 594)
	random_asteroid_instance.global_position.y = random_y




func _on_timer_timeout() -> void:
	create_asteroid()
