extends Node

func save_game()-> void:
	var save_level_data_component : SaveLevelDataComponent = get_tree().get_first_node_in_group("save_level_data_component")
	if save_level_data_component != null:
		save_level_data_component.save_game()
