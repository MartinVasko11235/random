extends Node2D

signal unit_clicked(unit)

var has_unit = false
var unit : Unit

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

var clicked = false
var clicked_mouse_pos  : Vector2
func _on_control_gui_input(event):
	# tile is clicked afted mouse is released
	if event.is_pressed():
		clicked = true
		clicked_mouse_pos = get_viewport().get_mouse_position()
		
	elif event.is_released():
		if clicked and clicked_mouse_pos == get_viewport().get_mouse_position():
			print("tile clicked")
			if has_unit:
				unit_clicked.emit(unit)
		clicked = false
