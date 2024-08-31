class_name PrototypeGenerator
extends Control


@export var label : Label
@export var button : Button
@export var timer : Timer

var azurite : int = 0


func _ready() -> void:
	update_label_text()


func create_azurite() -> void:
	azurite += 1
	update_label_text()


func update_label_text() -> void:
	label.text = "Azurite: %s" %azurite


func begin_generating_azurite() -> void:
	timer.start()
	button.disabled = true


func _on_button_pressed() -> void:
	begin_generating_azurite()


func _on_timer_timeout() -> void:
	create_azurite()
