extends Node2D

@onready var game_manager := get_parent()

func _on_back_button_pressed() -> void:
	game_manager.change_screen("menu_screen")
