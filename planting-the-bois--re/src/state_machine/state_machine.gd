extends Node
class_name StateMachine

@export var parent: PhysicsBody2D
@export var initial_state: State

var active_state: State
var states: Dictionary

func _ready() -> void:
	for child_state: State in get_children():
		child_state.parent = parent
		states[child_state.name.to_lower()] = child_state
		child_state.switch_state.connect(_switch_state)


func _process(delta: float) -> void:
	if active_state:
		active_state._state_process(delta)


func _physics_process(delta: float) -> void:
	if active_state:
		active_state._state_physics_process(delta)


func _switch_state(next_state: String) -> void:
	if active_state == states[next_state]:
		return
	
	if active_state:
		active_state._exit_state()
	
	active_state = states[next_state]
	
	if active_state:
		active_state._enter_state()
