extends Node

var fruits = {"Apple": 3, "Pear": 2, "Grapes": 2,}
var health = 100

func _ready():
	Global.main_node = self
	var count = 0
	
	for n in fruits.values():
		count += n
	
	Global.count = count 
