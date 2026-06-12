extends AnimatedSprite2D
class_name AnimationManager

const UP := "_up"
const DOWN := "_down"
const RIGHT := "_right"
const LEFT := "_left"

var direction: String = DOWN


func play_anim(anim: String) -> void:
	play(anim + direction)
