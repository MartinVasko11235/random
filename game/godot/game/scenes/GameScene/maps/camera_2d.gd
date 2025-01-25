extends Camera2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


var last_mouse_pos : Vector2
var drag : bool = false
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		if drag:
			position.x -= (get_viewport().get_mouse_position().x - last_mouse_pos.x) / zoom.x
			position.y -= (get_viewport().get_mouse_position().y - last_mouse_pos.y) / zoom.y
		else:
			last_mouse_pos = get_viewport().get_mouse_position()
			drag = true
	else:
		drag = false
