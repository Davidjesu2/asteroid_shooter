extends Node2D

@export var powers_up: Array[PackedScene]
@export var min_x: float
@export var max_x: float
@export var min_y: float
@export var max_y: float


func _on_timer_timeout() -> void:
	crear_powerup()
	
	
	


func crear_powerup():
	var power_up_random = powers_up.pick_random()
	var power_up_instanciate = power_up_random.instantiate()
	
	add_child(power_up_instanciate)
	
	var random_y = randf_range(min_y, max_y)
	var random_x = randf_range(min_x, max_x)
	
	power_up_instanciate.global_position.x = random_x
	power_up_instanciate.global_position.y = random_y
