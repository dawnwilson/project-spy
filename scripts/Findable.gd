extends Area2D

signal foundObject

export (Texture) var foundImage
var isFound : bool = false


func _on_FindableObject_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if isFound:
		return
	if event is InputEventMouseButton && event.button_index == BUTTON_LEFT:
		if event.is_pressed():
			isFound = true
			$Sprite.texture = foundImage
			emit_signal("foundObject")
