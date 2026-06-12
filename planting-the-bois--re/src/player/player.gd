extends CharacterBody2D
class_name Player

@export var anim: AnimationManager

var facing_direction: Vector2:
	set(value):
		facing_direction = value
		determine_animation_direction()


func determine_animation_direction() -> void:
	if abs(facing_direction.x) > 0:
		if facing_direction.x > 0:
			anim.direction = anim.RIGHT
		else:
			anim.direction = anim.LEFT
	else:
		if facing_direction.y > 0:
			anim.direction = anim.DOWN
		else:
			anim.direction = anim.UP
