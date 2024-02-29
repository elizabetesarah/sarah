extends Area2D




func _on_body_entered(body):
	if body.name == 'curso':
		get_tree().change_scene_to_file("res://scenes/node_2d.tscn")
	pass
