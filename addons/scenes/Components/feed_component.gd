class_name feedcomponent
extends Area2D

signal foodrecieved(area:Area2D)


func _on_area_entered(area: Area2D) -> void:
	foodrecieved.emit(area)
