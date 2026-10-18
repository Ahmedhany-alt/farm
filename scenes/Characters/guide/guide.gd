extends Node2D

@onready var Interactable_Component: InteractableComponent = $InteractableComponent
@onready var Interactable_Label_Component: Control = $interactbleLabelComponent


func _ready() -> void:
	Interactable_Component.interactable_activated.connect(on_interactable_activated)
	Interactable_Component.interactable_deactivated.connect(on_interactable_activated)
	Interactable_Label_Component.hide()


func on_interactable_activated() -> void:
	Interactable_Label_Component.show()

func on_interactable_detectivated() -> void:
	Interactable_Label_Component.hide()
	
	
