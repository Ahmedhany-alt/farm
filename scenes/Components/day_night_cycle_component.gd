class_name DayNightCycleComponent
extends CanvasModulate

@export var initial_day: int = 1:
	set(id):
		initial_day = id 
		DayAndKnightCyclemanager.initial_day = id
		DayAndKnightCyclemanager.set_initial_time()
		
@export var initial_hour: int = 12:
	set(ih):
		initial_hour = ih
		DayAndKnightCyclemanager.initial_hour = ih
		DayAndKnightCyclemanager.set_initial_time()
@export var initial_minute: int = 12:
	set(im):
		initial_minute = im
		DayAndKnightCyclemanager.initial_minute = im
		DayAndKnightCyclemanager.set_initial_time()

@export var day_night_gradient_texture: GradientTexture1D
func _ready()->void:
	DayAndKnightCyclemanager.initial_day = initial_day
	DayAndKnightCyclemanager.initial_hour = initial_hour
	DayAndKnightCyclemanager.initial_minute = initial_minute
	DayAndKnightCyclemanager.set_initial_time()
	DayAndKnightCyclemanager.game_time.connect(on_game_time)

func on_game_time(time: float)-> void:
	var sample_value = 0.5 * (sin(time - PI * 0.5) + 1.0)
	color = day_night_gradient_texture.gradient.sample(sample_value)
