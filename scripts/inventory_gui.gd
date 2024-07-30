extends Control

var isOpen: bool = false

@onready var inventory: Inventory = preload("res://invetory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()
func update():
	for i in range(min(inventory.item.size(), slots.size())):
		slots[i].update(inventory.item[i])
func open():
	visible = true
	isOpen = true
	
func close():
	visible = false
	isOpen = false
