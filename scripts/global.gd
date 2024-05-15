extends Node


var ui
var main_node
var count := 0
var end_scene = preload("res://scenes/end.tscn")

func _ready():
	pass
		
func end():
	main_node.add_child(end_scene.instantiate())
	
