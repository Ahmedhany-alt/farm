extends Node

@export var character: CharacterBody2D
@export var animation_sprite_2d:AnimatedSprite2D
@export var idle_state_timer: float=5.0

@onready var idle_state_timeer: Timer.new

var idle_state_timeout: bool = false

func _ready() -> void:
<<<<<<< HEAD
<<<<<<< Updated upstream
	idle_state_timer.wait_time = idle_state_time_interval
	idle_state_timer.timeout.connect(on_idle_state_timeout)
=======
	
	idle_state_timer.wait_time=idle_state_time_intervalidle_state_timer.timeout.connect(on_idle_state_timeout)
>>>>>>> ff34e80c04d513ee0f1f0e4ef04ad1c9c94ca0f9
	add_child(idle_state_timer) 

=======
	idle_state_timer.wait_time=idle_state_time_interval
	idle_state_timer.timeout.connect(on_idle_state_timeout)
	add_child(idle_state_timer)
>>>>>>> Stashed changes

func _on_process(_delta : float) -> void:
	pass


func _on_physics_process(_delta : float) -> void:
	pass


func _on_next_transitions() -> void:
	if idle_state_timeout:
		transition.emit("walk")

func _on_enter() -> void:
	animation_sprite_2d.play("walk")


	idle_state_timeout = false
	idle_state_timer.start()
func _on_exit() -> void:
	animation_sprite_2d.stop()
	idle_state_timer.stop()
func on_idle_state_timeout()  -> void:
	idle_state_timeout = true
