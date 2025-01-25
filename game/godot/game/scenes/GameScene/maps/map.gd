extends Node2D

var land_tile = preload("res://scenes/GameScene/tiles/land_tile.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var file = FileAccess.open("res://resources/first_map.csv", FileAccess.READ)
	var x = 0
	var y = 0
	while !file.eof_reached():
		var csv = file.get_csv_line()
		for tile_num in csv:
			print(tile_num)
			match tile_num:
				"0":
					print(x, " ", y)
					var new_tile = land_tile.instantiate()
					new_tile.position = Vector2(x, y)
					add_child(new_tile)
				_:
					print("unknown tile")
					
			y += 100
			x += 150
		y -= 100*csv.size()
		x -= 150*csv.size()
		y += 100
		x -= 150
	scale = Vector2(0.1, 0.1)
#
#var dragging = false
#var last_mouse_pos : Vector2
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	 #
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		#if !dragging:
			#last_mouse_pos = get_viewport().get_mouse_position()
			#dragging = true
		#else:
			#position.x += get_viewport().get_mouse_position().x - last_mouse_pos.x
			#position.y += get_viewport().get_mouse_position().y - last_mouse_pos.y
			#last_mouse_pos = get_viewport().get_mouse_position()
	#else:
		#dragging = false
		#
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_WHEEL_DOWN) or Input.is_key_pressed(KEY_O):
		#print("zoom1")
		#scale *= 0.9
	#if Input.is_mouse_button_pressed(MOUSE_BUTTON_WHEEL_UP) or Input.is_key_pressed(KEY_I):
		#print("zoom2")
		#scale *= 1.1
