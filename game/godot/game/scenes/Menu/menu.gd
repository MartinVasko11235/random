extends Node

var game_scene = preload("res://scenes/GameScene/game_scene.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	start_game()

func start_game():
	get_tree().change_scene_to_file("res://scenes/GameScene/game_scene.tscn")
