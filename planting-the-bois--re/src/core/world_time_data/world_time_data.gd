extends Node
class_name WorldTimeData

## Determines game speed based on real-life time. A game tick will act like
## an in-game minute. (Based on real-life seconds)
@export var game_tick_speed: float = 1

var day: int = 0
var hour: int = 0
var minute: int = 0
var time: float = 0

signal day_passed
signal hour_passed
signal minute_passed


func _process(delta: float) -> void:
	time += delta
	#print(time)
	if game_tick_speed / time <= 1:
		update_time()
		time = 0
	print_time_data()


func update_time() -> void:
	minute += 1
	minute_passed.emit()
	
	if minute > 59:
		minute = 0
		hour += 1
		hour_passed.emit()
	
	if hour > 23:
		hour = 0
		day += 1
		day_passed.emit()


func print_time_data() -> void:
	print("Day: ", day, " Hour: ", hour, " Minute: ", minute)
