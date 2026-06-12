extends State


func _enter_state() -> void:
	if parent is Player:
		parent.anim.play_anim("idle")


func _state_process(_delta: float) -> void:
	if Input.get_vector(
		"left", "right", "up", "down") != Vector2.ZERO:
		switch_state.emit("walk")
