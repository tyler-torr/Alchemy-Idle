class_name PrototypeClicker extends Control


@export var label : Label

var azurite : int = 0


func _ready() -> void:
	_get_nodes()
	update_label_text()


func _get_nodes() -> void:
	label = get_node("%Label")
	# button = get_node("%Button")


# Creates 1 Azurite
func create_azurite() -> void:
	azurite += 1
	update_label_text()


# Updates text to say current Azurite amount
func update_label_text() -> void:
	label.text = "Azurite: %s" %azurite


# On click, create Azurite
func _on_button_pressed() -> void:
	create_azurite()
