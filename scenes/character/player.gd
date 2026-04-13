extends CharacterBody2D

@export var speed_player: float
@export var laser_scene: PackedScene

func _physics_process(delta: float) -> void:
	var quiere_disparar = Input.is_action_just_pressed("shoot")
	process_inputs()
	move_and_slide()
	
	if quiere_disparar:
		crear_laser()
	
func process_inputs():
	var y_input = Input.get_axis("move_up", "move_down")
	var x_input = Input.get_axis("move_left", "move_right")
	velocity = Vector2(x_input, y_input).normalized() * speed_player
	
func crear_laser():
	var laser_scene_instance = laser_scene.instantiate()
	add_sibling(laser_scene_instance)
	laser_scene_instance.position = position
	
	
	


func _on_detectordearea_area_entered(area: Area2D) -> void:
	if area.is_in_group("asteroids"):
		queue_free()
