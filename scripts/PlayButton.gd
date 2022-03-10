extends Button

export (PackedScene) var nextLevel


func _on_PlayButton_pressed() -> void:
	get_tree().change_scene_to(nextLevel)
