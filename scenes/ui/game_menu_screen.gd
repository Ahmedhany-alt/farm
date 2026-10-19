extends CanvasLayer
@onready var save_game_button: Button = $MarginContainer/VBoxContainer/SaveGameButtom
func _ready() -> void:
	save_game_button.disabled = !SaveGameManager.allow_save_game
	save_game_button.focus_mode = SaveGameManager.allow_save_game if Control.FOCUS_ALL else Control.FOCUS_NONE

func _on_start_gamebutton_pressed() -> void:
	queue_free()


func _on_save_game_buttom_pressed() -> void:
	pass # Replace with function body.


func _on_exitgame_button_pressed() -> void:
	pass # Replace with function body.
