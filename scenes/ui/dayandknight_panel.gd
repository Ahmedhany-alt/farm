extends Control

@onready var day_label: Label = $DayPanel/MarginContainer/DayLabel
@onready var time_label: Label = $TimePanel/MarginContainer/TimeLabel

@export var normal_speed: int = 5
@export var fast_speed: int = 100
@export var cheater_speed: int = 200

func _ready() -> void:
	DayAndKnightCyclemanager.time_tick.connect(on_time_tick)
	
	
func on_time_tick(day: int, hour: int, minute: int) -> void:
	day_label.text = "Day " + str(day)
	time_label.text = "%02d:%02d" % [hour, minute]

func _on_normalspeed_button_pressed() -> void:
	DayAndKnightCyclemanager.game_speed = normal_speed

func _on_fastspeed_button_pressed() -> void:
	DayAndKnightCyclemanager.game_speed = fast_speed

func _on_cheaterspeed_button_2_pressed() -> void:
	DayAndKnightCyclemanager.game_speed = cheater_speed
