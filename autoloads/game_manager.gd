extends Node

var score = 0
var is_gamer_over = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_gamer_over and Input.is_action_just_pressed("shoot"):
		restar_game()

func restar_game():
	get_tree().reload_current_scene()
	is_gamer_over = false
	score = 0
		

func add_score(points):
	if not is_gamer_over:
		score += points
	
func set_is_game_over(value):
	is_gamer_over = value
	
	
