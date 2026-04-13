extends Area2D

var random_speed: float
@export var min_speed: float
@export var max_speed: float

var speed_rotation: float
@export var min_rotation_speed: float
@export var max_rotation_speed: float

func _ready() -> void:
	random_speed = randf_range(min_speed, max_speed)
	speed_rotation = randf_range(min_rotation_speed, max_rotation_speed)

func _process(delta: float) -> void:
	position.x -= random_speed * delta
	rotation_degrees += speed_rotation * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player") or area.is_in_group("laser"):
		queue_free() 
