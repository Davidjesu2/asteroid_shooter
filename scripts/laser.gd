extends Area2D

@export var laser_speed: float
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x += laser_speed * delta


func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("asteroids"):
		queue_free()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
