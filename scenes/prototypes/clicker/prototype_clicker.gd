class_name PrototypeClicker extends Control


@export var label : Label
@export var button : Button
@export var azurite : int = 0


func _ready() -> void:
	_get_nodes()
	_connect_signals()
	update_label_text()


func _get_nodes() -> void:
	label = get_node("%Label")
	button = get_node("%Button")


func _connect_signals() -> void:
	button.pressed.connect(_on_button_pressed)


func create_azurite() -> void:
	azurite += 1
	update_label_text()


# Updates text to say current Azurite amount
func update_label_text() -> void:
	label.text = "Azurite: %s" %azurite


# On click, create Azurite
func _on_button_pressed() -> void:
	create_azurite()
