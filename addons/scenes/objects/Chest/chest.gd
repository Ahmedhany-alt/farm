extends Node2D

var balloon_scene = preload("res://dialogue/game_dialogue_ballon.tscn)

var corn_harvest_scene = preload("res://scenes/objects/plants/corn_harvest.tscn)
var tomato_harvest_scene = preload("res://scenes/objects/plants/tomato_harvest.tscn)

@expert var dialouge_start_command: String
@expert var food_drop_hieght: int = 40
@expert var reward_output_radius: int =20
@export var output_reward_scenes: Array[PackedScene]=[]

@onready var interactable_component: $interactable_component
@onready var animated_2d:AnimatedSprite2d=$Animatedsprite2d
@onready var feed_component= $feedcomponent
@onready var reward marker: Marker2D=$RewardMarker
@onready var interactable_label_component: control =$interactablelabelcomponent

var in_range: bool
var is_chest_open: bool

func _ready() -> void:
intercomponent_component.intercapital_activated.connect(on_interactble_activated)
intercomponent_component.intercapital_deactivated.connect(on_interactble_deactivated)
interactible_label_component
