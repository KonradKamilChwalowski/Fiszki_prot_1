extends Node2D

var menu_screen := load("res://scenes/screens/menu_screen.tscn")
var language_choice_screen := load("res://scenes/screens/language_choice_screen.tscn")
var category_screen := load("res://scenes/screens/category_screen.tscn")
var library_screen := load("res://scenes/screens/library_screen.tscn")
var options_screen := load("res://scenes/screens/options_screen.tscn")
var actual_screen: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#get_tree().change_scene_to_packed(menu_scene)
	actual_screen = menu_screen.instantiate()
	add_child(actual_screen)

func change_screen(screen_name: String):
	
	if screen_name == "menu_screen":
		actual_screen.queue_free()
		actual_screen = menu_screen.instantiate()
		add_child(actual_screen)
		
	if screen_name == "language_choice_screen":
		actual_screen.queue_free()
		actual_screen = language_choice_screen.instantiate()
		add_child(actual_screen)
		
	if screen_name == "category_screen":
		actual_screen.queue_free()
		actual_screen = category_screen.instantiate()
		add_child(actual_screen)
		
	if screen_name == "library_screen":
		actual_screen.queue_free()
		actual_screen = library_screen.instantiate()
		add_child(actual_screen)
		
	if screen_name == "options_screen":
		actual_screen.queue_free()
		actual_screen = options_screen.instantiate()
		add_child(actual_screen)
