class_name PrototypeClicker
extends Control


@export var label : Label

var azurite : int = 0


func _ready() -> void:
	update_label_text()


func create_azurite() -> void:
	azurite += 1
	update_label_text()


func update_label_text() -> void:
	label.text = "Azurite: %s" %azurite


func _on_button_pressed() -> void:
	create_azurite()
