extends PanelContainer

@onready var toolspanel: PanelContainer = $"."
@onready var toolaxe: Button = $MarginContainer/HBoxContainer/toolaxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_wateringcan: Button = $MarginContainer/HBoxContainer/ToolWateringcan
@onready var toolcorn: Button = $MarginContainer/HBoxContainer/Toolcorn


func _on_toolaxe_pressed() -> void:
	Toolmanager.select_tool(DataTypes.Tools.AxeWood)


func _on_tool_tilling_pressed() -> void:
	Toolmanager.select_tool(DataTypes.Tools.TillGround)


func _on_tool_wateringcan_pressed() -> void:
	Toolmanager.select_tool(DataTypes.Tools.WaterCrops)


func _on_toolcorn_pressed() -> void:
	Toolmanager.select_tool(DataTypes.Tools.PlantCorn)


func _on_tooltomato_pressed() -> void:
	Toolmanager.select_tool(DataTypes.Tools.PlantTomato)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT:
			Toolmanager.select_tool(DataTypes.Tools.None)
			toolaxe.release_focus()
			tool_tilling.release_focus()
			tool_wateringcan.release_focus()
			toolcorn.release_focus()
