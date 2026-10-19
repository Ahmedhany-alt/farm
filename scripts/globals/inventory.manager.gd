
extends Node

var inventory: Dictionary = {}

signal inventory_changed


func add_collectable(collectable_name: String) -> void:
	if inventory.has(collectable_name):
		inventory[collectable_name] += 1
	else:
		inventory[collectable_name] = 1

	inventory_changed.emit()


func remove_collectable(collectable_name: String) -> void:
	if inventory.has(collectable_name):
		if inventory[collectable_name] > 0:
			inventory[collectable_name] -= 1

			if inventory[collectable_name] == 0:
				inventory.erase(collectable_name)

	inventory_changed.emit()
