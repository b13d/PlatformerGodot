extends Area2D

enum Fruits {
	Apple = 0,
	Pear,
	Grapes,
}

@export var fruit: Fruits


func _on_body_entered(body):
	if body.name == "Player":
		# вычитаем фрукт, который только что подобрали
		Global.main_node.fruits[Fruits.keys()[fruit]] -= 1
		Global.ui.update_labels()
		Global.count -= 1
		
		if Global.count == 0:
			Global.end()
		queue_free()
