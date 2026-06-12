extends Node
class_name State

var parent: PhysicsBody2D

signal switch_state(next_state: String)


func _enter_state() -> void:
	pass


func _state_process(delta: float) -> void:
	pass


func _state_physics_process(delta: float) -> void:
	pass


func _exit_state() -> void:
	pass
