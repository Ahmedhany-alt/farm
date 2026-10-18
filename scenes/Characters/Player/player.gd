class_name Player
extends CharacterBody2D

@onready var hitcomponent: HitComponent = $Hitcomponent

@export var current_tool: DataTypes.Tools = DataTypes.Tools.None

var player_direction: Vector2

func _ready() -> void:
	Toolmanager.tool_selected.connect(on_tool_selected)
	
func on_tool_selected(tool: DataTypes.Tools) -> void: 
	current_tool = tool
	hitcomponent.current_tool = tool
